Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F9C27FD6D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779724354; cv=none; b=O/WnFj75Rw5c1iKsVAoX6Eec6Gy99WmWceCuALw9YWb2xCywtfoj8anYep/LqXzF27ynbyVtt6xz/23o1V94pj4nWA2QdT5d7l/M8DdJ8T/3BasU1i5ARRJtm9mp8RTpkzhjHwO44y2TNOgc6qlbWF17HU/70Fd2cIjtj3ExVp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779724354; c=relaxed/simple;
	bh=1plZ4CfUB4/56Oh6PA+UHsCOVP8tZ8ol1R4lneHn1MQ=;
	h=To:Subject:From:Message-Id:Date; b=ZElgXCWgMIibQcOOlP6u56bwkf818vsyVUB7VioXhN0FBnozPY18FiZf24Z7LWZyl19w2+j6Qooz/IFyjVvC76SFIFrnkJHm1ZGnf3jXH954jnvGKgm55jaQOkeA/EpMdUAcu854UcInlMpO3+KBKLROpLzt5KSqVLQnqNuMVwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ425gxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ425gxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1876C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779724353;
	bh=1plZ4CfUB4/56Oh6PA+UHsCOVP8tZ8ol1R4lneHn1MQ=;
	h=To:Subject:From:Date:From;
	b=gZ425gxg1n2KboGy+6i6a/kznzEAx3BhExfSL1hh52V9NehgSdZrgRffCD1yB6iwP
	 ov5ixTAFVrISbn45jiKNA51weYbZWfg/i7DdP8nXLJBsVVaVGXFx6XkSbc3Nz8y94b
	 Tur3n10M2cLuTQBfuin18R89hh7cBHD0PF09TTV24oPj8N4TGhFwtkW/VOM0qi23bS
	 bYZHBbmQvlmd35cERS6eWYGZU0p5fj+vpdi4X/6uf+zeYtHespu7IVy10T2SFiKvz7
	 KHHav9M/xGx/fVoL1zPfxJcmZVTZ6EM9nzAJ/Nk81KdPq61ulmOfKCtD1FP74LWL+G
	 2ngp+r2OvoI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF4CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972435368.5942.438433055428633029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cc519fe8a7eaf80b4c365652619ac4183954f6e3e83cfb54b77e9f9673c241
Date: Mon, 25 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779724353
