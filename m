Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFFD224AE6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756190994; cv=none; b=r1zvdEEAFtaYeUcXPfCF6kY9Zq3mEe0UTwGt3N21X2DVAU35Il0bw7OHEEw69nY9iX+jyismagSBSBwqlBuHUK6FVddxBcd4393QczYShcagjq0tHgzPJ08R+Xspu4p1fbmTFN/VMPSnywukd2FHnfpM+XC6yQuetiHEPkQjsaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756190994; c=relaxed/simple;
	bh=FmdcghjGAvx3V8cfEOwegzpUskQrTLph39sVfJUa6vY=;
	h=To:Subject:From:Message-Id:Date; b=TuU83/Dvqhy1w8iwdrS1xf8Qj4bYpJHXth/KqLieXe3+Me/E8CxAhowcloU4hLb0ez3f89BhFqlIWuYEZxXemXtegRPjWrwurLYUStfVqd3w06t9g35rGlLlN1ikwI/p8sCe4T3bDzErd2CzfpIjsIPxALWBUghc5VqkKpxBN6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRDiQKU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRDiQKU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756190993;
	bh=FmdcghjGAvx3V8cfEOwegzpUskQrTLph39sVfJUa6vY=;
	h=To:Subject:From:Date:From;
	b=XRDiQKU9n1ZWYbG5VAvtxa98MHmXwZ6oLlzWBh4UPm7RipxQtGQHtkvvufqSq7NvO
	 eosv1Hc+QwYrAm+2ZQIeGw9TfGoX8Fng0VnA/5HMOZSKxfdlD6PmU1dFBOj6DaeDSv
	 Y6DsE7KmWvCjAbpzXyvEF21zMxEwGIcvUCVIc86pLjNLOjcFmiv1EHqcoplJV8/R+l
	 U5U74d6Ex75HiA3EFAO26nSQTYF/KNyFAbYDV6rDL1OIFISLawR9IABjT1bpwgPo0N
	 HTPViYkngaO2TaxL6aBvl83V3URBILXDchUjxzFf1mQsdeg/0N56WjYV0CwOBoIFw+
	 Hcz5rMKn2kxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EFCA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619099357.10690.14873415561362067984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322b5dbf1a5a49e993acf6e988e4d7fae0dc13b6be9b4041e58b27550cd8e361
Date: Tue, 26 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756190993
