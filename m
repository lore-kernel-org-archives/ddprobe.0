Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146182FD1C2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781157394; cv=none; b=n6w8jnHgRwdcG+xqLmRNbcmZ7wP1tWfhMdWUKgOcezHtb6LicsULDIlvyOq0JFRis7T86YV5oCyouK9PZH8JyX5Uk1Ep1YW1zCVoMRLdi6KcizbdR+cIGUQcmiAJUaAfuE/U93msL7cdLoe5rxxGLKz0eG6WzsaCX0jZkPc5te8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781157394; c=relaxed/simple;
	bh=p0Yv3D9FZVzYzOP5utfLFJjG1yFzZGLBMD+4wzeI3Dc=;
	h=To:Subject:From:Message-Id:Date; b=Upv5gdN4BL1vxmXQvuZdOTAAGAgH7XeIH1ufHcvqBqvtEokfNm7j2H6ExzupAxUhE6uUAEY1VYFnCSw7nQplDOBGRgAGaauoM5VveTxpWNoTtCZNC2eaAJZngU/CRqw7aC68GGBMm7EP9Gt8pudVYfPSFnRH8Ho1Pms5DAbQV/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmOgBRVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmOgBRVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78DCC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781157393;
	bh=p0Yv3D9FZVzYzOP5utfLFJjG1yFzZGLBMD+4wzeI3Dc=;
	h=To:Subject:From:Date:From;
	b=OmOgBRVakRjqMaF6YzHrQHjEgy9BlPIkmi2okl1KDMpcNEywQ87DvniyDLzqMVd7G
	 C18fQr9mcUgCurmvCD1qIfJ8nuyS0Obj5afJQupMVvZrO9nq1vbTNaOzRwkjzED0js
	 8vnMd3cyrck9nKd6C7CFSsO3FvC+utK3UjdMxO+GeYwOJyhKAuN/bhaHv3Bt8qwsyG
	 sO2XOMBk41Va5Tq7miMC6FhfQph0pMC3sIlCOGJKE6YSR5KH09UD9Nu2H5PFf9YZmM
	 bI69ljaM5tjrwWBnzJ+pleRptjFAmh26yNOMNNTwHDI70NMmjtLhViW2R92ckTIQbb
	 yliqj7vB/mFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC8FCD8CB2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115739369.17152.6418373261327433830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fc2e6917050ac31fd760a8923d8bd1bff96130aebe98a941cef57f1eea9c5d
Date: Thu, 11 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781157393
