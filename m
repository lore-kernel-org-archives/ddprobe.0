Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D812C032E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775419534; cv=none; b=Zmeq7GCjjS0SIm+C37klhm0sAiAxX7P45Ou5dpLgVav30fkladYl0fle4UAdFUPVpT93FzJ5swZk7bxgWQ65k1KK1cr8qOMQqxUDXF4KgFxFr/G6/3SkmRS264QpD+hOnogkfhXUSbbrEm2d/zmLJPPaLusMRa2qnjPVMSpkw9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775419534; c=relaxed/simple;
	bh=nwIF+4sLfeasseBslcZYMZeTxK9WHkAxtrQRWEyiJCM=;
	h=To:Subject:From:Message-Id:Date; b=XeTS0u5GoTit9xiClp+tc/hs2Hr4FbqTkgq9Ci3Ds6be48UfLDYFasLV4KL+h6tQ30V8Sl0JCY6txHwl9+7djpWC/M6Mmi1s0T8MqFa70Eo9ZSX806aQsvPZRPWHcifzyhCCuHMqk/vKaUO1aPqtGY3YnaBOUNbZHaXni0zGjmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1F67/eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1F67/eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB94C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775419533;
	bh=nwIF+4sLfeasseBslcZYMZeTxK9WHkAxtrQRWEyiJCM=;
	h=To:Subject:From:Date:From;
	b=V1F67/eNgWyYMdex6AGdt9iz9Hi3tge4JO+EecQ6jQnLyp30CLGGlL8316zNUr/eU
	 +/04UbrtMm1UkFDYTVxZx15bjPtQcSxJMgbCFV0jNTMiWnrSlPQK6J/C2iu8A3GANi
	 BxZ7+0CvJewpZUSDVmIMn1jw3pmU9f6r4wicvQhOiSZR8YUuoBBN7CSdBwxCpKJ10V
	 haPLtYqr98qU+GPTjy30B2lqjdM7cp7ayYski2HEvvxZW2405nCuCKR/Xp2Do20kOT
	 10BxeDxaWE4XEjQqFZnKKe593RsBb76yxN6bTO1cbsGQJVvTeowtlPEiWjEMPbIU/D
	 XDN7VVBGoJIYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE0E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541953368.23521.7802139630489380444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155b59489d0a55c14f767e92bae2dcfd197969eaf9f97d667b02d649db419ac2
Date: Sun, 05 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775419533
