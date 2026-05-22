Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D08410D1B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457354; cv=none; b=i+BSh4xYAfe7X06UOXuSKhFtH0pGjWObHlTY5BoEjqVVBQLl0wvorAhSTrAzgoFyKLIhCZPPkHE2c/LEBDx9pz/PBfShF1WkEbc425e4r0191ZJXElQxN9b0RdrPytW9Gaa7sxfx7EPbxupxDvD1WFEWEsCY1Uj7fzZJvbDjSDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457354; c=relaxed/simple;
	bh=fHXPIq8HNwN55LZTYRYWatOz2JcxoS5xtrfAB6r1xz4=;
	h=To:Subject:From:Message-Id:Date; b=X7YxI+hZNcWes2+eGqcf8wOa7Gynuadlb4E7MAF8PXgKDY/aXO6MS6fo7/cywA/ReV3oPUr852XggbiJRzLWekXIdO0h/TvtTsFM2bjDMf2fepyxv/Utk/B8A/xuk95rMR30JMKncNuGa1WDcYgSbk5IbU0n4kwUXVsLcLJHrME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzXhKYw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzXhKYw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8A6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779457353;
	bh=fHXPIq8HNwN55LZTYRYWatOz2JcxoS5xtrfAB6r1xz4=;
	h=To:Subject:From:Date:From;
	b=rzXhKYw9sY+oyuYwKqtPIGBnBcTJvwZrFZ7ERjOOzISJb6lD2Ng4qoHAO3/Xb9ao1
	 WhlaSJiMC2sbPq/5y//Mq6dvMwU6c+KWWZN9fH9oeTGR4HsyHMxBtuJXJj4rQzYlzA
	 8Ac5lmHuGYeBxAi9lYO8Ng3j8vfSsAlqYN9Pw7gyriadRlbU6kNEwU654hcplYhUkv
	 eqKR2CV/G24GnM/eg29vvuYzvePpFXajVgLHkuvS2dPIuF1RSWOrOF5BumwEJ5XY/V
	 kYoLPH3DjFvHiHFsGTPwcTPpLZTKcKgCOuAe4WiKyltE8DnL2UVfxsPZCyqQlK4dml
	 N5cyHMmSTjSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996FCD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945735368.16267.10298687029849927230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4179270e5ab3d4af184ffa2f244fdc06f66ab9aac7dc9bb6adb2780d9887f73f
Date: Fri, 22 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779457353
