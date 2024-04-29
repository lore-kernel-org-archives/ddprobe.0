Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CC4C2C8
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714380743; cv=none; b=XG9ch+JcScBblGI2u7dIHw5k4YYpVcXP/XE1EkqF/DnNifZq10NV3aLhN+h5wijsusVSwo2qVNUCxavyOkPXa16LeUmSLdMmJt6CqWySNfrlWExHviy/LzVweqD/ViEvBZIWlbxpxrlZ2vsk+Z0VySLAm2tCUtKcLnaZ0rSr0yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714380743; c=relaxed/simple;
	bh=xjxQ9I2EaZaZnz6uTxAU8tdzSnkK4BwR5KkGjtypHxI=;
	h=To:Subject:From:Message-Id:Date; b=oqIrRT4gIdxD2G53vAeW47j5QXpuKjkcKjKdWkLhSmhmWlOoGwpLDLqSFxHwLW0g3B3BqR8RW3FvSNcmTt4ot7WNzIbTKDn9bPESj72pOcAEeaCY4OplcWk3MbLleFBM79mXB+JDL8YOUI1oipVMDHEOhyDiiTULyicAfO2bpr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW33xQVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW33xQVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4F7C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714380742;
	bh=xjxQ9I2EaZaZnz6uTxAU8tdzSnkK4BwR5KkGjtypHxI=;
	h=To:Subject:From:Date:From;
	b=uW33xQVtEm82IoSId5/9H0OGO0vE+4mOFp1+3ZHj6/A3Iu16r0hAHTD1BRbD4C9pO
	 G/mmc4ffVd5YPd71su57zrYiXXToIMnUyNmu9dyLcfaA0D5mJNWtpGnRLcDrmm+uTd
	 S4OC0ulilgyb+I+ikLA9qW43MkBDo6Ly+5EZeLgYmVPe+XpR9fBMKO0Z8quNbQnBNy
	 w7aqqaMcgB9bqvsXc16etoE3M/CeVycafTVm2iEPI90PduuY9FxSfeBr1zPECfmRZS
	 gtlwyr5rWZ64X6S1F4WW++riMSDlHt9C1CmjLmd4d40VCziRnyD1XB1SJvkqWeeXkh
	 Neg+H5bXJgTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC028C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438074276.6589.3467482937717081384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfee30ad4edc27864a9d8f3a4746ab787eec22139915940f9f4f5d58b85cbc7
Date: Mon, 29 Apr 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714380742
