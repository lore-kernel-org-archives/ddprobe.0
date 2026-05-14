Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E442ECE86
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778775635; cv=none; b=HaoJCMjSgVTORxn77ulpN2oWlLwDpiLpQjNH8fbKZJ7Qo2r2ItSzGY/Su4EFCSJ8YvFKROSfTV/PkVMs2JliZZFicO3xFaZ7c+3rIF+bRhge0hEg8PWg3/rTmT19aaz3k/YGdf84ttndUtf4sWhuwWbJmUnrYl8Xq4RJWuDysn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778775635; c=relaxed/simple;
	bh=+hivdxR6HmLvQv70Vz4zKVYb1hpokOKF72k3iPCkdQ4=;
	h=To:Subject:From:Message-Id:Date; b=Xrra3TNcFNX3V/xWr5WNTGrnJZWYq7u4Bh3mehBuWngXQAT1fBLLjh5U+R60DW2Ly+OR3bZEYNTIzauhNzBWtAPc9VMgSPF8ZYP9KL7SkWs6tYZt6vtDT2uUTgX8GpF1nkHc4RS0xayO+Mhy+PmMhU0FHhPKpZK4oFBQ5pfK7N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmlTe/U8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmlTe/U8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C218FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775634;
	bh=+hivdxR6HmLvQv70Vz4zKVYb1hpokOKF72k3iPCkdQ4=;
	h=To:Subject:From:Date:From;
	b=hmlTe/U8MugkAt7FAJzWeS0JAE2EJLOO8EBYzyTfsgoOiGkLztQCk3gJiIIlT+fIB
	 79AM/O62gMCykBkdq8r82PsOv6PEvApWPXCTq+wRaYND4gOLFvDi61wdoWehxUTS9K
	 bwQ9MQuJ8VGjeAYHZRho3NfgiJLN8TAJHdd6ZIqSxOw2DjwDcT/nsYdKfPstoir5F+
	 vecdiEB1q3MrZISDxxHDowC3ch/VSviNFE7REhuUDx2R+N8Ht8gD2XzkTXaUZdB1nt
	 ERyPvpZ/cIgnixELvn1vgcKfMK8RElUGsfscT+t/Yl3bR25oc+hxMeXbldi54J/0dv
	 bF5swfa7b1wMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FB4CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877563371.4042.10743699996391126766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049374ef1c519981b34d5a30b6e90d7a61cfb0e26e7089544ade1b754e8fd38a
Date: Thu, 14 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778775633
