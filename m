Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F3D5125A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707898696; cv=none; b=Ei+gheHWnEivKZURrf1WUk/wRzmMM2C/iHbdz5h7+XvJLkZQTcyGwo9AfHjws8XKxcodKbFQ0ESjKC+ShbQ+F27i5Su8QYP6WqN9rEyDi5gvKgns3aRU4MNP4Y/P1IaejoasUsbzsI0zz85pHcQ8SaeTPwiPm11OYvPeWEm2npU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707898696; c=relaxed/simple;
	bh=rvGhXC1wrcL8o3lvX+lVUk/Tp1sbcZUhdT4ugYD2f2w=;
	h=To:Subject:From:Message-Id:Date; b=Xp5UOokplgSbEh+LdURi+cHflVBByqB0+yk/UPIpibFWZLMeWn6oBQGFuYkTEClD9lkHq+K90WQnduVDRLNxwaJtO1SdnCoq3Faiz7tOEq8CzPK1jRHptPP5gd6WqLno7lfPhyJGZ0Ai7nHBoqv1itr+dgttrpblPpnQkxXTIbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rORmyItU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rORmyItU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B86C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707898696;
	bh=rvGhXC1wrcL8o3lvX+lVUk/Tp1sbcZUhdT4ugYD2f2w=;
	h=To:Subject:From:Date:From;
	b=rORmyItUMN2coXjJyjv37kUjKlqhnE1zKiht8jpPfxT8o/3qoHIE+4nwb/X8VEaeK
	 +ziq0lHnN/S1pJJ92erA7GPR6ocOoxbkwfb8me5Lq9XiKsG0M9+VnguddgO8yiyh4Y
	 xAEOn8gqJaLLeBIp7PSMNgCgLkJRLx8ZH+3yxCQrXu9uN4fYM9fStC8wOY9B/KriZ2
	 qiIILTZE4GqL7EANorNHUY/a4+IVaxoj1anyw8kpO1EwD1C2uhTgV4Nj9e4zRhpLIa
	 MpKenRQVCy0mpmkZKh3n919HQUmmegGsP8DZn6esIC9vj+J1GZtZbPHgsZRbubG5cd
	 gNTiYaXAzPPoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4C2C48BC4
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789869637.20830.5063303147479247101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a2cb1163c6fa16f1345d0a1cc0cd0424a1765811d6478f59a159068b1545a6
Date: Wed, 14 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707898696
