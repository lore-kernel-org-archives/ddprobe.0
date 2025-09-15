Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F85F1D432D
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757971194; cv=none; b=nx7t/NCDumAn2bn38swM0v1UiZRS3l8oyjfovNHP1FEeCua8O+QNwrWsr7isEYYBZ8T9fdubEvn4/Z8TA7FnsirDMvNGxwsSpyle7bHOo02vjJMoZSZ8BbAh9cdG4r5yh092YJX1tNnEIvGHnibYnwIKU8+xDQ0luYUvX9vZ8pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757971194; c=relaxed/simple;
	bh=AHgObO2BC/UoGV22XZiQGh/JswpsYuWL4qYqNSWPJWA=;
	h=To:Subject:From:Message-Id:Date; b=N/wClv7BD4l0I8WtrqbdIDNTWfLxdTwnCKYnWh9zNHLLDD1RvOckPA1S6cOixTVjCQkCdl9SxkXh98ZqTNxroC4pUZ9V9I4VBUHm4qt6DzgI1FPrwKFg9OVS3jIjxgPFXpGhj8UEZHQMuQXONIX2n2RwlbUVHnKULH/ATMGahLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt25bJFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt25bJFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757971193;
	bh=AHgObO2BC/UoGV22XZiQGh/JswpsYuWL4qYqNSWPJWA=;
	h=To:Subject:From:Date:From;
	b=Yt25bJFiBMkuDS7Qz2QONLcX9p/f65OuH18S8gGGAkXYQKtVPYsfQ6bARLe0/jptF
	 NI4Taq2yMtqbb4nAKbKrFq5YmU0HzA5KiKJKZrya5hwj/FYKT8sZyQzF8o4r7P0/ih
	 LbXnGKYs6Uhy+LmTwHveI+JYlJXPalauOBEsq6v0QqqkCsHm0DawSldYTFkn7TQojd
	 ZJnbl8xFjmwaBDfldUB2UxXRkU93NVRzV6juroUyMh4NYMobg10LDZZlGeFxSkDGiB
	 TEy4PzV+3aFYYhowUwSS47g+EQjxcA/yeWCXYeB0vaJoZa+H6GV22uirQ3JcYkpOV8
	 FIXj9+tBUzASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90012CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797119358.21607.1726925600234316823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d4e5752df9dcb89bd52b057d457fa4cc33e1ebead4039c03199a04f8514bc0
Date: Mon, 15 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757971193
