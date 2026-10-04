Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B60754774
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791102634; cv=none; b=Uyhek5HSOLg4N3Yda6IpNuceAaojVPUbDvE+L8yGycT5kxDHdyJxbQtWOkfrARdwYLbOHrHmKIx3WQYGDN42OmM4odHC69bM3TC1eZ6RJsiw3hLNRn4z7Ae4y+u8yYt9KuPoUQRenh3pZrTujqz2RDyc0dBzPIYXu58EL+yxiFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791102634; c=relaxed/simple;
	bh=mGm5vmyYZX/EKOtH5IXFufuCJQGXkyWS/VsLBeIHUFI=;
	h=To:Subject:From:Message-Id:Date; b=fFDX1l75jbqS2N1huZXzMCIoqSYGcTlB4pOMFnCx9f/ZmsKnWbKsqfD/dVzaFPxlIEGNGLxZCxjuIRMsi29DLC4EreTT2y0eaDARcKGzfqNH8ZQWBSAP+LdrFDyCaRmzuptv1P6xu2pDHHBhTa0EP/n2eo+1oQt6ECBCSENZH4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4ZqRIa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4ZqRIa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791102633;
	bh=mGm5vmyYZX/EKOtH5IXFufuCJQGXkyWS/VsLBeIHUFI=;
	h=To:Subject:From:Date:From;
	b=K4ZqRIa1/Zj8GntmNy3o9FzXRlLo4cMv9bIArZf/PxMggp3xlDxe/ttLZpAxa+odr
	 jvXGbcLRa/a/Dhy5SoUt8jmAaSBzYcmGTomIWKSdk1L9Fb0IvgeUR6VmpLsbg1Ssyu
	 JwfyuLCAahU5px0vAtlBWr1skXsZoESvoVDFSEdMUiP4Axli35ZSl0EKs3REdPSSf+
	 i5aZnjFgKhbm0X9XxWEZffNYFvJBSUd7+bqxhfcOLufaEMbyIc/Tegy0rdr0g5cQIl
	 1Z7z1cbD+Lw0sE47XnoZUHZl/rRfYK3V7tewEZr5JwSuNcdVF7vLN99hMN9X1ep26m
	 WU+2UiXvs444g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D8CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110263368.25331.15554452610467419936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6947186e1c3638a6c4ada028a7ccc5c75251ba78127230aae160aed77260462a
Date: Sun, 04 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791102633
