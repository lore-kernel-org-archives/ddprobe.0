Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492759461
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733648754; cv=none; b=DjY3tgfoezHga1vecrLEKRyMOGLsNNuEAEjSnoenkJ4f3807Iq7t9PDQIgM6Z3g3SIf857Z7iHClvgUOBVZ/MAKcHuKyqdT2fNKeXeskR+lrz0oVW+SeGEgucvSR04kqA/3nrFVAiJAjl759JyP2BBor6relqR2isFLJkCfWRSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733648754; c=relaxed/simple;
	bh=kKQ5zHqW8ZP+05u3uvYLUcBArqXJ1trs7zgJyBwTYIM=;
	h=To:Subject:From:Message-Id:Date; b=usythc33IhK8Sv9WRbRM+gHcim5SCHJQ+1Eu9GhtVS8ajUU6vMQh1tjcaO/xAPwNz9aoocBBgl8GKUbAvXcpN8LaVHij6M63Ch9aznPHs11KLCreoVckUS8PWoss/jFPpJh6GeopN12onr78G87xdtlQzdlUMx79DXkHIIW3NBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWue9KpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWue9KpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00E7C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733648753;
	bh=kKQ5zHqW8ZP+05u3uvYLUcBArqXJ1trs7zgJyBwTYIM=;
	h=To:Subject:From:Date:From;
	b=HWue9KpZa/EX9hquGCHvZvOAb6Px8HTOMgI2XImoYPlh/UEGar305l7QOcDrYirCl
	 WPI1zOUNxPKlfQ0UhUPS0Z4V3gkwqNHBGPhajAJm5HeI+/mAhib9qz5N+MKgpmz1yH
	 KRC1TfbYFRMaxd23P7N2ng6Lx6udzHTpJ4Ekcss4H5H3mFkkPLkb/dlokykqqhgsV9
	 UfRgCeRe8D5GtRjS8Wg8PqzrlBZciSnenPFO5qY+hq5JD8MfzMZ1WH6pAMc2VYnFmD
	 GfRMs1blEDi5F/pkiB1ik6ad91MceKW5F+nnTctYC5+vCIoq1mqRFshv3ZJr/ELPza
	 Nvpzr+k8ShwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43C2E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364875361.31669.17999251427348752360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499b4bb1671cc1edd9fd4397d1c7a18cd673b821f8b2d83572f78f51d09cbe91
Date: Sun, 08 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733648753
