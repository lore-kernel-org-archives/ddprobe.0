Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFFED2E5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717889843; cv=none; b=Zb13ASca9b5XOOP6cnREoOah72qijJRRG90fKITWTUigyFSmUeF5ibUp/LtzsROXkds2aAXtt/Mn6IVUKv351kVlouVnlWDITjbwDA8KVhlHsPgmUSRk9LsdMLkjaGmuGWk36jLg4wUckV3PcsUVR1KOfb4GS10Cbm87Quc2HIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717889843; c=relaxed/simple;
	bh=YbIp2VbN1+n+SY/h3t9EhIi739BT0eaKdDUVBZNeHnQ=;
	h=To:Subject:From:Message-Id:Date; b=A0eTMYoROlkzrMAtFJrsy0ZZjiPZAqHwe1H8hqaklLoSRYyQUV11Q22Ye86NlLhR/cBjGYkz83EugBUlUjF9xX93s+2W0SSvPZMClNsUE6b3enpfMmmjTMykfTI1jfSUSF9f8SKCi8MNqRVGZ7IEZduhDBtghIy9HOiG+vUlRFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1uHC/w7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1uHC/w7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70FAC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717889842;
	bh=YbIp2VbN1+n+SY/h3t9EhIi739BT0eaKdDUVBZNeHnQ=;
	h=To:Subject:From:Date:From;
	b=M1uHC/w7/frl3rPSDyPBKGJgx0/Fuc6Vk8eyK2dvKbRtmMGpstmz+k2/pjeUJioey
	 bP22dyxJLpF6E4A9bUYKamuyw8NpS0oxuT7wWfkCCnhnSPvciLRstjtHUgusBOgN35
	 ViN3k2/BoE7MPELPMwMfGds8VaCdsWEXvaeRt0atS2yvKEr55TCtLsW+gEFaVAZS+v
	 Ll5t6Y9d07T8fjindCDR73wf4QrRJkUMRk3cehQxUwXz4nD62g1fEMNfbNZx5B21XS
	 xj+V2Nqkm4crp0qlwQazMvw5MUwghWQ4B/vAjyu9gD3fJU+CZt3YgAbvpZkxtjaAma
	 v0BVMHOOkPG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D074DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788984281.22935.1476545649999285270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e97130187381d1d98dc3b0905a0ec32ab3e2728e3def3abaca406531bd396b4
Date: Sat, 08 Jun 2024 23:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717889842
