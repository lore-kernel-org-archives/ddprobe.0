Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F8B1C5D59
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761271795; cv=none; b=b+zsqQk3tvu1yO+qDYELGhNCpiLp5F6aulqvPElKKWA0TteaTylcToRtoHkmUeU0QvDd7sR31IPcqKl95e3lISPl4KcOFZ7Bg0saujn4GbWeudqZxVyhJ4Mgp61EpRU+tCiXBeMKsDZM2YkcZ0Nt1wRcwMliowhHysCgU7AB4i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761271795; c=relaxed/simple;
	bh=VTiTovvdMMZbNBLXyRKIaQaNsuGRFjEPvSpCks0qjs0=;
	h=To:Subject:From:Message-Id:Date; b=PWtLRF71MJGct0tV7ZMe0mg9/mjXkB7+Nygk9cUCbhaLFKbeTpPSRmqIxfcWqIH05lIT49YndTs1c24a3Q/Tiwg3JQrDz3pGK8CsH6vucGkcCIxuWQ4SM2OZxhYh1WbT4CKOnaI0lXVEiS5ZWckDEJ0FgprZOV+Xm1YSgtQ74ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXzu8aeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXzu8aeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B3FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761271793;
	bh=VTiTovvdMMZbNBLXyRKIaQaNsuGRFjEPvSpCks0qjs0=;
	h=To:Subject:From:Date:From;
	b=EXzu8aePPINv98uBpvBnoSQegKOgYZWnI2zfyIgAodrxFJ58pykZYiH6ewX7Dl0P4
	 ivfCZ+FDyDXB5ELLGmycpMKeCzya4UUTcahf0v2SHwey1LwmvCOZi8u5VwK1L2wRAT
	 dOy0Dje1SLOrVUPGwH+os2k49HGZfoQBUz1T4Ld5HPnhPg5ggZ7Eh3I5h7UpMf7S9S
	 X9xgLSGarC9d/cr2eZxiSWVb5OjenjvFAlXyNK0cR7Mwe04eGCC/WMlVeunXUY2qlD
	 t3kxEH9436siklwCpoipsjITtesDPWTecBEYVyyEaWKlE2SB8UaGTAVPKdtitD/Bk3
	 iMzXqNRH+BwZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B82CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127179359.7452.17026048132859000943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a05b29a834fc2cf2c56e95a70ecf3927f6ab4c6644e412c57b2f77af70a128b
Date: Fri, 24 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761271793
