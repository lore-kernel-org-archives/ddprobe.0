Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A2B4EA386
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791836434; cv=none; b=UZmvapcoSyDWUDnNrEaDNmRaUEYRWkloTuA0AqKMLA0m5X2XdMLn4zPDBCfjMPxdmorkkzxnkfuC880nLm4L8Ag6qDHp/ndHSWD97b665yhnnhasKKwamfysE5wPI9gyMP2JuhmAOngwao/cJkm/buNPrDg5K7YoPzqeRNRasB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791836434; c=relaxed/simple;
	bh=DjfekPRXPuQLPaQ2sWqK06S4phIkNpHJ+GY0G9FJxrU=;
	h=To:Subject:From:Message-Id:Date; b=SNN0wWFa23zhdiFC3vQKSqhY5dRSpjmrZaFcAwpi0UM7q0BDeLZHvA88oQlLKtfjBTbhfZdgqfqBd9AUE+HP+kfMedOCEY/n5m0pUGlkQcWPGtxW70cyXXKMWEq65vebYLzgHzdrKjZ96QOO8Rw/iBVJSfLd0qHZonKvl/OONJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txxAxGsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txxAxGsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4F3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791836433;
	bh=DjfekPRXPuQLPaQ2sWqK06S4phIkNpHJ+GY0G9FJxrU=;
	h=To:Subject:From:Date:From;
	b=txxAxGsnYmjZEdwSXVxpJQMNwMBtTj9c+mjkQsTnoMrVfLiQwl1tGwo9p+V/gsvB9
	 CRFtghtE9i9u32YyprFGcI15IT64LF2orlu3QQ94C5uKOkCnwD/qu7cDPuYjwPXAGy
	 VFoyplg/DeLvwHZfoP0GQsOJPlfT6NT/0xV+7NiS3oTCfVnJvPH2dJJXxgIOcsJY8S
	 zphatQR6KVfPPLgWAEFFYH9nN5lvHg6s3V6Cz+gwR/gbiMU0smNIs5auOLxE1DyYnn
	 JObFGLyuJJEenOJqDBNe8jeeEGLvKK4gWd2CMERiVpOCnfUZxOZ+08/dYxXAgXyMPT
	 FUxLDW3UIugwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FCCA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183643369.22918.15619137249066051644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1920e33c096d9e721044f29e328356e6d9192938668c172c9d31054fb148045
Date: Mon, 12 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791836433
