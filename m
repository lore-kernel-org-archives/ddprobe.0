Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B822F12AB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772829293; cv=none; b=DDG268E0pvNjYJ/YHbECCDUaVDR6OPLQxF6OW/Y0bUntG3Q/baU/6fAP1U4rrr5mxWvSXEFdKpVRYoC2EJOoeZFCJ/1nbK6ogguEIpJudzYlFb/LL/UHI0JNcnjaBtOM4Cn7EcCfrVA2KZ6y2L9T3oiZoWpXj7BgTKCOqD18KkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772829293; c=relaxed/simple;
	bh=LZQYaR4jj9pJkr2sAO/dDR7qtLAESwx7bX+c4/PIe1U=;
	h=To:Subject:From:Message-Id:Date; b=suvULCFZRdtt0m2R3TdWdWy2pu1eFBQ7Np+Cq4Aa/h5zD///2iTQkePo1SD1Ms9lMGECs0Sf1pp1fC1NrBx5ZvCCJ3djhFry6MlnOy+PMDimQ6V3Y5iescqQBzSpHaeeLFSPD5SpVyYEAw8hE31Gw8LRiLrzjc109tiXeHSVf/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIx8fFv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIx8fFv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7520C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772829293;
	bh=LZQYaR4jj9pJkr2sAO/dDR7qtLAESwx7bX+c4/PIe1U=;
	h=To:Subject:From:Date:From;
	b=ZIx8fFv9qXsGMxIqow2WDezK36Eet49Kpk0CvCtALUR9Dy8AtRsWtTntIAA4A4FXV
	 D45kVTh77enD94Df4CmgU122g9yUNTKUo8GbTYEU5iz2Ry1gBHoGwp41SFW5q6zFAA
	 zVD2556h2N3bHK/K+B8sULB+jcnBFVdxHnhIdL39HcgncAp2UmPdOWFJbKswMdu9n1
	 jM7q6VY6ldxZNGd6Z5Ug7tommndNavubHSf1jtXct0oPnbthwKSNmjkhK9/0g/5FJf
	 bhailczUCIFOaKkTlofe1VM2ciGjhq5Z9AngM/PRDV4eIVa7xfWAr9hVLIHccwnqkm
	 YFy4b/JTpIw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981BEFCC062
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282929358.23795.12580025759732085980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471ffcbcfb1490a8c680e3c673221bca60d571ebc16a16a23bfd0fcae8999994
Date: Fri, 06 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772829293
