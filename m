Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE551667F8
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716967463; cv=none; b=lJ/tSLW2CBV12Ey19LCq+/YIoZtNC3rumX62j3DOmnnt9uK1/0gMcbiFv0/20pKZI+dB0VGdfNK+gAdFvh4oEmCQoesZOj7lED/5KURzv5WqKSNapOA6my3gsJT3NsMGLVFq5TP8TPX2LDh8LdSe6x+d4MrzwYZaM1YzHkX9Vf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716967463; c=relaxed/simple;
	bh=08BejEddNY09BvNDSgt9//CxFDIax4Xac1QkyFL+snY=;
	h=To:Subject:From:Message-Id:Date; b=notQheYuzZRhFTsx8xRdiLZYwg2skCImlRQMlCaVMRDcCN5yQRXqz3ds/zdAvaA/0P07OnFwJPjSS61DMnIj7m6o/hL3/fgbWPfLCzZoKxCDtJVBVMbrk/NT/uKlWShjfVHkaXkLzGpJs6oH4tZlNkV/hRE8jUsdjUKDlKIn/sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnvTYtom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnvTYtom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E1FC32786
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716967462;
	bh=08BejEddNY09BvNDSgt9//CxFDIax4Xac1QkyFL+snY=;
	h=To:Subject:From:Date:From;
	b=dnvTYtomWepTBm2CY2JDZVcGSm17rquMX4Vdo2lup19tOCBCmvkXMoVIrgqC4gWOF
	 mKmCQlLrc3mFJ4aVxs/jvZdmFhGAg4NOCu9dCF9MgbI5XAfspgwcK+bKWvb7+SiSID
	 oBDn9PeYUY0yfqrNTPio+A1xrl4xPyRqHICPUFM7H+SBebP9IaBs1OXmo/D+sueGD4
	 iUEE/I/aw/2vbSiReL7437tt5rbiRuN9IdkfY9laEK/1znyCko510K2iRjD/TzjnsD
	 Pz5AITlWztYqqxTvFZ6AIisxqDbi7Fbj6NmJmxGTxtJI0OmEbkEWVtofquXwpCVbfi
	 yfbrOJjmHswKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD869C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696746276.28615.15722334642655250099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8919414afb5a27882b824b26bd2849f775cf77d0f02b48bc1e0cf2facb37427e
Date: Wed, 29 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716967462
