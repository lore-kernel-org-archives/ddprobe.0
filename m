Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFC1DC9B5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761715194; cv=none; b=Cl4DhZVSK0utB35RUwaJWKK7uTkf2HwjUE9LyYd7ua/MrwLRpeAiAFBNWXZpcNUovIR43Bnyd+Lz73Cnxys/KfJxM44W1TneRFfuJKgS/hghmoSoho20pwH3rV7228uWR0aciTaeCME94tdTKIHoc94h9r0JT2y0tVKN7eamPS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761715194; c=relaxed/simple;
	bh=pBiAybWQJyjwWGQ714B/FTQcoxTa+ZM4zyADiGDrTnU=;
	h=To:Subject:From:Message-Id:Date; b=ITEUc3gOqEAFS2DFwpOWQls47Ke5nDsRfbDKjGI4WfZ1MBeaItlimpVvsbJ6byzwUIgaM+4PgSJTUuEm+VKQ0U0Q+2zwR+CSQHMI7U+4nd2jc5INZ4yyvDu1GlBjkqLb1KjTDAhbLryqdki65NtMTq6PEbiDYoMyLvuGw+MTIQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXOMiQCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXOMiQCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DEBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761715193;
	bh=pBiAybWQJyjwWGQ714B/FTQcoxTa+ZM4zyADiGDrTnU=;
	h=To:Subject:From:Date:From;
	b=QXOMiQCvQNrrzWyIjxGYkYcWk4OTz5W/be4I7KCuS/esFOoDyLqq2/tm9NBwpmXTt
	 Ci7jRynqGLht308btEKB45nG/+mS7n8sUP/pAwIu/2LunKR3J+KJyw3xNEaeOgKrA8
	 Q2RHFtXjcPP0dopBZ8ikCOZQCBblz5opS03Ast0lNNcfOKa4hcwF0UWcwzp9WhikfE
	 WmHaR5AJkTHPk4ZJqs9P5fwdGAQN2DszCOHYzzE9pxklz/Fy5xZxteH5R3vyMrPV0D
	 dgUwRm1wD0LOSO1tvZMMjGILqgb2Myt7A6tghAz+N9LsQpwYusNUDKca8T9TKIeJMs
	 8Hm+BCNuc+5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90931CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171519358.16244.6264833364690558198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6635ecff30d210cff0b7a891e46ca01f159a8896b4cf9b9c63fa2d7ddaa13a0
Date: Wed, 29 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761715193
