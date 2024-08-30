Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CA1509BF
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725002754; cv=none; b=iO1Cj+uLs63oPZpGsutjTvlvLxP1tKblKdVOUWr9TSxzFDBiIdLIIbsD43DjlxQyK0/dZ1+3mEWZE8HaiTVbSsuMDCzqokHFaglwDpP3zHxAcq61QqcqcngBgyF8PiWzEGa/AeGRGLyeZKDE0Om18KDBp+B6cHtU2V6y0EimiQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725002754; c=relaxed/simple;
	bh=2+pVzsLb6ieIaMkax2+2AuntMdzmFJIrDtMkaOxSVu0=;
	h=To:Subject:From:Message-Id:Date; b=uljAM597WcVPlr4s6v4F6+zLmCIqhCW+KwQ0QMVAN38/EJGIpxouPLoFcbCxAwibONYFhlWpTEv47AGTVyTCifRzoGth13IFEUWl8K7sqUbTQtlLwPiRhMXimqqT5PN1cddcxsyV5d52MelcKnoGDJ1HOR2E4dOeMl3j/rLNvSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoPAVXRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoPAVXRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F68C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725002753;
	bh=2+pVzsLb6ieIaMkax2+2AuntMdzmFJIrDtMkaOxSVu0=;
	h=To:Subject:From:Date:From;
	b=RoPAVXRwuXQr08ZDozsEIf9AwJ6EnGRURjSeMMR/9bVgzkxdZZ/9HZbm31bwYMaPA
	 5NxdBR5ne8UCulRGQaHDxGOBhuJnu/2SYggnJB0ht79G+R9k7Y5cZj4q6yxF3dcYEh
	 Rf/D9sP4vjYFsd01us0AnKpdL5N4xL0YweFuFjiJ5kyVcrnFMRftzyLSC3Dpwiufp8
	 qP5jBUPKlYAVgbMRNgFLv9QOX2JcKv9bOaR1HsAJ7ZRu2LNnHlfSqtHF5jvhNRSzu2
	 fTAOZPFqcXhV/JTtjfdHb+MnUZQihG7hMHciWjFQZMOikNsqa9LoiDVIU4fAGMa2l5
	 u+tB3Sx1BX4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F67CA0EE8
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500275359.554.5351099594096308826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81036686770a243880675761e6540a6f24ccd7e8292e48c3b2239baa4315908e
Date: Fri, 30 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725002753
