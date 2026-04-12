Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F037B01E
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776005254; cv=none; b=mOfDBQbD1LMgFKcFRd5dtojWVQoNJoOU0uYNt4fANHl53UuDiWY0DOWBspQvm3HF6zf8zaw+jzYroB9qrIbe8EFEdY+RVf86SQQGVX2QKLAKdqjdBb8kdXoTv3jcsaFdbIhKIrW5RQ1r/lXeNZ59rhXPt3tMVo+RYic3xEl24Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776005254; c=relaxed/simple;
	bh=NmiD8G5cNS5/wuymxaZC+ohB5chroMtx4/FA57Y2saU=;
	h=To:Subject:From:Message-Id:Date; b=qYYdTMO0Cr2gbQVTyWQV/aoYhZ4M4Uil+v/5E5kef2dDVdIMiF1bOwZG6FwILN5LAKg1bz8jCKMB/d/mkVFc6eJQcfgCoGFuZtZaRdbKwLksGfcNSVqcRO5SSv6OIDp3ALRQVMxFzc9kj0Yvx4P7o4SyC0L5Hl+2I4KrF4hBJi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=de5qCHmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="de5qCHmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDED8C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776005253;
	bh=NmiD8G5cNS5/wuymxaZC+ohB5chroMtx4/FA57Y2saU=;
	h=To:Subject:From:Date:From;
	b=de5qCHmYOdOabgKsjHw2MZZObAv+G4uj23kEtBOmmNsQYTU27qCZcvvMgiII4Ccu4
	 QGeHUX1LmvkVXor5tX6LFKqTKH2oiLcEH+9GVSYcph6Hz0l5kwr2194cDGP9g1yH3q
	 GtP7UIYB+bjVGkjmQMjoC6hMirm0fpC9RaLsVaDNfRbRIHlECKFhXQkNbBjVRHDT0U
	 1ylhG31g+ftIA4dgBtTBLzXAEayFPCkornP/ZxKfZa77B15FW+U1vP8eDR6Tp/hnr3
	 Covf0LspjmKrH3cRMSFRcvnTBfJzOxFYIgcjTObjLRg93AAPrP1Dq5osrMsgejz1sm
	 FovQT+58SmEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8F7E937E5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600525369.13316.8244994830021564410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c8910b764d249b9e812595316be799d56d366f095705057210f3538a430c7d
Date: Sun, 12 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776005253
