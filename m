Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374EE1DC9B5
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777736254; cv=none; b=FAsoCZM5j2IWYHuKaytGFyiU3rMCPyRmJ4NH6ytsp6TX+AaPGNOarM9MDHCKEbBpAm2vpcBLPMpyCL5sHvvX1v2WTU1Va8wScXMbR6yGrXxjS7V37UwAF+sqH+vbEM3F/NrN84YTDBA4U2Nc4d2+sWFPQ1PHOlyGburufNVYMf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777736254; c=relaxed/simple;
	bh=hpBiEyQaCNdTfvxzR84qDhL/tQ5dhsgmJt0PnpXHQWc=;
	h=To:Subject:From:Message-Id:Date; b=BalSThk+INLJymdGzcqJwjSPY2dbIS+HAfDZjc0U2WrQ4GdVmybAasZqapvkB/ox2M7jXksFaS42KmB5ffoh5YVy5+qk28NYu7XuheH1k0yvHNVtBFcMnuNLnofRCXQyCySWrVQdTVh5lmi/DUQri0AGdOm7Rk4XR4bbUeLCfpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usFIa+0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usFIa+0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C147DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777736253;
	bh=hpBiEyQaCNdTfvxzR84qDhL/tQ5dhsgmJt0PnpXHQWc=;
	h=To:Subject:From:Date:From;
	b=usFIa+0lYtAktYhOhh1KR56H6SRF8ihm3MiB8LHFztiRBfQSpab3Jn8KAMPGlRKh3
	 jqX7xVabkACyi+gbmZQ4/pIVgnJZmhROJj9NbaDUlC1ipJDe8MOnHBwLy06KMQpblz
	 TW5sr4ff4TnosejjL9LdEbrVrOAUG1rfwMLtBWJKNPCX6q8cyQe5zdQ7ECNUpweEM8
	 zuFpXF0aXtoZESrv7D/Y13TntAuWhg9EwonzbMVPaWVsEkP9MSC++SfWtUvMJeNzTW
	 48+jfthrXbv31BAjvGBxjoZnvfcGwi0pNM+p7gK6M0gTTDeCX6YJMHEyCfmsWYXR/u
	 AGDt+9nBnchqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF596CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773625368.25427.2890341906166462462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdb970a09840e9e30f6c3adfada009e966d96bcbd1df6c7fe2a3dba6ab56791
Date: Sat, 02 May 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777736253
