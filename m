Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DB515219A
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717253663; cv=none; b=aTTL9cMtfereRTTzeFsehT9B6mOIf8jg1YETv1Ix5ap0M7loXY87Lj0rNo01TBAJ34sDDnuIG2mnKpECKjLIgMtyIB07VXll6QoKxnTNYJ9VI32vq99UAE7EEe2P6FAA4hNg8MbZHlQdMySDR1Jv90uUtayQD9XIGAQmcbdFgmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717253663; c=relaxed/simple;
	bh=nTp74PtWO4JZXxMBVnPAqRTup16KNVeYyR44DHPfSzM=;
	h=To:Subject:From:Message-Id:Date; b=kPqjfEPfiY51jDkm8M8vDVr6NbOmINmo9TLmSScYRl4oXEe7I5ej6IFk8L5wcWScr2CWMtdkVxSorsM5WOVIwqr2ohCVgpPmNXMeFVEONTxSS/d8W928CzAniiJ6lBzIG6bAFzkNxTyemBJ9giYylyp2WHnfl80T6QKbclQLuUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ob3pAGpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ob3pAGpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8886C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717253662;
	bh=nTp74PtWO4JZXxMBVnPAqRTup16KNVeYyR44DHPfSzM=;
	h=To:Subject:From:Date:From;
	b=ob3pAGpn77+AalbNmx0n8GQ+GIzY8D0YfNJBmQKwzp5ZqjIKRNfr4jy5kTQfK2mWC
	 gKLfUArdgX+HsDWmgOHYrRvUBPsBAw0X8ZR0OBq582I5jfrlCIF9Rsiuk3HpGodGrr
	 uw5slbYVSVLL92wywkLbfAXnL+bYrT+AGsaj1MEaw+yOKvfCxiCrLhlTfThbjmAZ3O
	 7GOOekmLd83soa3mFVeieKySnZWrfUrI8uRy80D1nyzt4mTBXG6NSm+AI5WRscqMMA
	 OwHlpxLDFQapzV5xeDlkCgwNMsyOjZnIHu/4/JdAKThRH9i/DZNRtOHjo2Rw1WhObB
	 L9hDQcTmRj3lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6ECC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725366283.25898.7007286918817005362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6125ed8ffc7c2578a2ae1c384782ef0c0dc9fa8d0aa7d9ab11ddd955a29216
Date: Sat, 01 Jun 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717253662
