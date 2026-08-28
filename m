Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456C39A4D8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787956834; cv=none; b=VLyaqEw8tmOQkDMmscrSU8nKMqoZiv9HyVAzPAsEIzNPBK1209+4IiVyibHzVV/lWuh2Jw7L3ZE+GbDwKYEGUHM+KnVcpogKBVlYcaqp7+DKkVMhwqsgpR4x7HoxoiAwbEkn3aXNJo7ERuN/IVKZ6HBx5tQFSRsFdZ59vMXMypY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787956834; c=relaxed/simple;
	bh=Xc98qZLa5oOiYHBEZdrSFlNcq15bfT7QWroSZUSUzDk=;
	h=To:Subject:From:Message-Id:Date; b=VJLzjWPeMnTpS9mGAh8YYJGPXYCpjVfmD4FIe0cEj4JjrER32Dc1Jk5bPhcV4JtwlqCDrNbrostlSF194KWUk3FsusXVaYAaNCzPeZHL3XyPhldknNQN9bLKgYWrWKxCY+TsEnmtyI63t1GeNA1QgCpINwsPJcMRrcGKtTK2zq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYF4mexk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYF4mexk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D590BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787956833;
	bh=Xc98qZLa5oOiYHBEZdrSFlNcq15bfT7QWroSZUSUzDk=;
	h=To:Subject:From:Date:From;
	b=AYF4mexkcVoR0jjT+naImzf5oWYMoMyanSpllE912CbsZLAkm0TGIBdw8grrAPgSH
	 7Wjzrd17WBlu49MuMyTQLijaWTfrcwgzj9gJFkU355g1SjfbunhqPbrPVxxhB5uIYv
	 GCyFAkFjq7FjZFXOMzcYmCzm1bYaaFAa/q+i2KVqyrAbg3lQx3fAWFXKaG/lsUcum2
	 C8pq13EsSCEXQMVKxelYBtKQTSRWEMBAlLMKxc/84Qo2NHbkuBIk5jGtAudsMUIBMD
	 6i6t7zXwyOy9oqxFklu8GBLiHPP7RpwmSlknenFVFuD21b3rB1BPq1Wcq2MoSU8gfY
	 cAZchrrQrx9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B71C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795683369.15400.16943542867247466297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3e9c31d647971e07d6656df1d87c1b12c436f2a588a1770a7e54efbf707467
Date: Fri, 28 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787956833
