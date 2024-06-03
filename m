Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7302623765
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717394723; cv=none; b=Jx5PIOePtQdRj503jpILjhMtowWZnBXXibiCwgAyglPGSsY085ZnCZzBVtdYVoaGUt9jZFcstzZfwSXQdVgbUK67OxppDt1KcrAo/asmR1rhSHsdOUpkmSt+pOinrXHhfcvL5A6kJlg+niBvYovYxMAYLxSd4U2j8bUJSRq9YcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717394723; c=relaxed/simple;
	bh=YkCQ9vTedHTa/1fh44JKX0JWDLSyHG5yu3L99dHyQ4U=;
	h=To:Subject:From:Message-Id:Date; b=DMOrGtiotilDVMpwBCxdkLF/oQuYH6gEBiVJ/8sjMkl1TkDnL4orOqMc+TCB7232Mz0VOr5fwHTnfb1oAseqa75X4AWMsR2MERlqoOIQk3EllzwzBpwGJODfgSv2SE1oztlyoBGGyqmML6o2jvsmHhGOsTTGo83r8Mty+8IzIUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Doq73ai7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Doq73ai7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91C9C32781
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717394722;
	bh=YkCQ9vTedHTa/1fh44JKX0JWDLSyHG5yu3L99dHyQ4U=;
	h=To:Subject:From:Date:From;
	b=Doq73ai7PHApSjLaG1ZkDJEZKWlgZt3rMrXbx5Q/vw9PvCsv4/4kl5Wkjzp495Eel
	 xkEZGr1I3ujBzMoiBqm6d+fqR43GvX4+lKywu8Czt7hWt53HcyTFEtT1FpCywnhmBS
	 VYAciPB+KRqCc05CLz71VsxgdRtzUjcvdxmRx3xaDC9wuAp8aObOkxdLncLO1VB1Uh
	 s2xl55SmiWDTDtnetz/D5MhIN4RSBNArYVvOXuu3R349vnN3hhlAWYy97N1omEIG0T
	 sl4coALhQrt1P8rTLHf3+sNL4YTn00aQMUpZqv2Bqu8JAKSiOlr44BpJ0bdYp4XxSO
	 wfGRO+uMwQ6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2361C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739472283.4200.18115799339516288829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000bb020c6ac9d5aa585d983cf29dbc5a7ca0b656c1aa177b93cb18002da188d
Date: Mon, 03 Jun 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717394722
