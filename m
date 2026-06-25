Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C943386C36
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782379654; cv=none; b=S7GOLc+G6wOUIXs/fXh7WTslqFwez9I3v1wcVfRjQc5glSCdK3iqg1Rxw0plv0GXya6Tkm6Gxb+09RzzquxckZW+LNldxx93yXnED3tU1/TKPqGyJ62vTKQ9ro0FarexeFvBPNHn09zjl168/R2inUy2oy0LJ3o/vumS1M573Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782379654; c=relaxed/simple;
	bh=0LtAB/O9qMS/j6FAeq/NOi31idpkszyslO4AT9iZHU0=;
	h=To:Subject:From:Message-Id:Date; b=TRB3asxSPgTpsORSTZduEN+dxfr2VelKtPoHPdslcfkCGT7KkgCokFRTocKm7/TMyR9IYIOcp6FKx6msl3cW8TRHY+9gJPLFx4/hmcGCA1ya8oG/U0g4jyD47C6raNu7t8RNahd/bEzhWTebRR63ARYSEQVPs2v19h3L8nrGj7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mmdlnr3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mmdlnr3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D313CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782379653;
	bh=0LtAB/O9qMS/j6FAeq/NOi31idpkszyslO4AT9iZHU0=;
	h=To:Subject:From:Date:From;
	b=Mmdlnr3gfdEGyS8EKdAjLf8ufqVE3zLKhWZOxk5HI3JZhmLV2e/Q5CLh2H9pCMGmB
	 YLxsTEfW14IkJ1c5TXkFksozqiuD1fWXIV4/2ra41il21AEz+Mdt3/slfLgfc5ly1H
	 xNyvGTW3ELvJcIPiC3QkUCZbKRTP9UvrsqpnksoOVDX/L138YqT2R3099pKNmOl5WX
	 KUjsS2kgE1/Z+cA2gt4QTyijxm0qt4an2XEpBcP/VE3FfTThf6L9apmglT26aVterN
	 PesimWqbAUGofXJpXC3pta5OAlTizrNYF+E4RJDZ3KdwrGPdtmudBSBRieetXnshki
	 eOlSjRtTfCU5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A8CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237965369.7416.6466352169460049254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24308ed9e2cba608e404d5369d18793cc191db499d3231a9a8feb0e5916c1c1f
Date: Thu, 25 Jun 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782379653
