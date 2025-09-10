Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2892D32143F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757525396; cv=none; b=l8WLlh1aesGcnMRh9h51hqZJNhi+XSTgMrJwLcEeSxUlBoxcfi1WNkpf4uB9H+sO571Io4api16SVXO0UMFU+cI19IrrwFEardQ+5WTkFkG4Zt+pKnCZIb+KDpcIlOx6l+VEG39okZGTiN5I0F7Ul1BkObWw5cpEZnp8kUwYwck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757525396; c=relaxed/simple;
	bh=mBP79VPwQJIYL6WdsutcdkAQuIPvZYt3CtvamH8T85c=;
	h=To:Subject:From:Message-Id:Date; b=LEXFvl1hjN5YHak6xoksWd1KGRPoEBLXellQjYk3GFBOn+YKjNWoR0ZZL2VQx/F6pbQ1tyIJ5+XJkYVN4tDPvUN9UtLIcaf+v0mUtVygwkEPwkkdOsaRUFPIGN+OxKuVs1F6HMreZWALG/sHOfWzGtqujmKrCtiJIDJA+IHD1QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8UQ0+oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8UQ0+oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A030FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757525393;
	bh=mBP79VPwQJIYL6WdsutcdkAQuIPvZYt3CtvamH8T85c=;
	h=To:Subject:From:Date:From;
	b=i8UQ0+oIC6eml2GMts6XAQHNZYMydUiGLkvCWzsmBkIInJPseVba2TIUJa0/J+B6O
	 O211VsMx2MTKPLhaE2dpa5+IaQWVcPy/ohDGTyNCulIXAthog1d0Jip9eJyfUQt4z2
	 WGi2FG5efZtFj2arove3gUaN/oTh6Spt5BBT9fTogD8pSDow4/CpmmZDbFVJiUK2nw
	 vHm0JduENUs8vPRtozziG985tLTO2GM/vv/ybOJ3z4yYtkIq1xL1cJk0HTbiz13hXe
	 nmZydnS+5KvMc8lG8ZQ2mW4FBeqRdLSh9yJ1hxPIGzsDjVPidpZA1Sm+2wf2nJs+jK
	 Uob+rWCUIBiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92035CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752539358.6801.230011048978366493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5009fff05e7caca525ef2ab71ef64c863a8e3517ea3c559b4855ba729c96ee
Date: Wed, 10 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757525393
