Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCFC1FF1DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791944434; cv=none; b=UOOPSm18I2w2/e7VEVZnm212/u7brY+sv4vjWeO1DEpUhBKKQTt09Yh8p4PK8z8dVsUPGkSx7zCEZhytLOtX0sgCIorJ3SduoXpOk9JSvDpOqsoZsEqE/jPatWZUm2ucu55UKwPBUOqnIUAH3M2uokYoyLKgsilMem5xIgMbBts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791944434; c=relaxed/simple;
	bh=mn8IREwBJ3bc927OFaEjkVyjvNCFheM/pHZIgVKATdg=;
	h=To:Subject:From:Message-Id:Date; b=mieyoPQ75z0ku+0cOag0jEC6tOTmH41zG4gOJDc7v7G7s7+Rf3aA7DMTNs/H1wOWoO8+AwuvKGNKrbcOT8kn0wjd6O3SeZl83vq9ilW4Ze/f/VmPDu5bW6VpBf+qxLGqFxrPK/ZweykYvOmVlc/StJJpb0/Jh08ScC5mwu4Awh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUjztkC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUjztkC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D600AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791944433;
	bh=mn8IREwBJ3bc927OFaEjkVyjvNCFheM/pHZIgVKATdg=;
	h=To:Subject:From:Date:From;
	b=hUjztkC3gFVoV5i73fSUgH3IXeEUX97pOLpXdbZuh1XRYJVbdWi9dH1+/7xiBvDMM
	 G3JFr52Grbu1mwSlVqB5wwqO6GrnZFytp7aGquz6vMUH8AfMgUayvALGdIprAQfbzK
	 FaMpcOvdXv8yhn1weXICrclfalm1yyOh9RvnqJX6TDhbDFjY5iw01IKCdzM3ABvf7m
	 8RtyhlI7dlylwbufC0aPCumNXPvEV6UIwZezj3C2Vue9dJAt4xQN/iD619PpGy9scJ
	 eT9AXpcvtKFQlsVI/PDUjiNnlJm65xvgtFI6fsrVuyhLzv7tBaCaG3uIhM8KFemZ0o
	 yInQQmC6igXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F82CC6B1F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194443370.8490.3651429227230186480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d7ccf965bc485c6c955001c886ed06329a5717532d80c2d0094b953d0cb06b
Date: Wed, 14 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791944433
