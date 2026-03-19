Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2083FFAA4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773956694; cv=none; b=F2ZxGOrGBmUfhfD5Kuea5SP6vdRaSQVjDhvXEqYkdD0+jRANnVO2Ol7Kf6YUURwXOGf1cbVEZFXY1Qu6B7/1OZpQpQtRCpDCp4pnDuZ3IxYhckv+dtjmyQcH8K/xgiwKs/zz/3Xw1kWmxjpqTqV9G+jiulSExvQ/MuLR/FdWmbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773956694; c=relaxed/simple;
	bh=BN8VQcTUnUciyAXrf1ZJNq0nbDf9uAAYLiUGzOOKFB4=;
	h=To:Subject:From:Message-Id:Date; b=WzFUNSVbCuQXUdkmsb9gSxXthy+Zaud7DON+DADSFCMAgE7DNMqNFmP9Mhbe3MoSXxRGVc6VTHvrqEPTm8B8zemWruC0cvH1RZGq9EejZ6nz4J6goMp1VPaCOnJyeUGPanIyqcEUxLaaxEMJYjTpT2fp9LOhj4BMTET6sbip8ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQdFezho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQdFezho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E673C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773956693;
	bh=BN8VQcTUnUciyAXrf1ZJNq0nbDf9uAAYLiUGzOOKFB4=;
	h=To:Subject:From:Date:From;
	b=VQdFezhoHSk8HzL7CX6PURiUlmpgREAZmbCoiHt3dB8OgPc7F0/dhUCtecG8QFDib
	 mUmYDU3TSzxrkOnYrNrWeoGCqhiyr5xJ5IUpEogtLyS6CP5OpfmDUYKFe1hPcrNACw
	 2xs85d0REoeO6bobnh0+SKFexitzxyyI0K2yUwmrYZKC5sBZpm5FmxgzKDHKcgUGKw
	 SC5CqW/knfDpQVy1QXFXmDhMfQXJdBPgLKJTNFxKXUtm6116Hsu8lY059qnWEECJ4k
	 xUuSmKTYJvKrDDZn4CcMxzyCyOBAfemDbLKyA6DWBkuqMt4TuNN44UqINIShykbH/w
	 3QnpQze3osQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7141091926
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395669357.25579.1044882482394922026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2836795366c48727ffef237d9968a4349004f53b004f70e67707116009e6e0
Date: Thu, 19 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773956693
