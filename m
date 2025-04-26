Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277C612E7F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745687994; cv=none; b=AnDiv9vQ5fxSLla1hUy/HcceZfQP/XnafXgJVaFaDNXi1SuLxTNiV4DObsmeO+wibmE6LeoC7svHeWqcs7z/qc29sdX4Xa/I9tE5a+D7wP/toSLYboOaZEjN+HfB7XKuM0uXgjZmq6AjImR7dssc7HnjNhLKQN9YMFxoaUdJ/BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745687994; c=relaxed/simple;
	bh=jTKAU97YEfRTexE5W7YZF04/IH5WBfYX6sIaGvzje4E=;
	h=To:Subject:From:Message-Id:Date; b=JWd8mUv01A+M7BVt+N0yheZ+vzGpzYNKbeQGTFEgBZbw2we7Jb6RAvs59X6sBNrq4wkLdrh2KHfgbVM7J7OoAIUCSEAWmfgboBVYZouqS69/Ibr1Z4MCMiueTL+UqqYlsxN8gtdMaXA8cMcEzuxtk3rk/97ztVVBaHl73v4EhUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGGd0G4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGGd0G4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745687993;
	bh=jTKAU97YEfRTexE5W7YZF04/IH5WBfYX6sIaGvzje4E=;
	h=To:Subject:From:Date:From;
	b=AGGd0G4SF/qKqXOZmNMuAYd0q1zVgMTH4rU8CQgJHdh27tDTuewKolN77xJ8pMWzk
	 8jeraq85iSDZnikaKFRYf5Hdu3VizfUHQa+wSnb8CkONV68HG8eYEUJp6teUgMkwU2
	 9EH+yV2+qBPTUbJd7YZeeEYsyeH62hQ76r6ATgufVIHscD+wLeSWWTCStp5K4JjjRu
	 FynPIPmfWpSH1M3fOtjT8V2hqsoVWzbq+p0fUtaxaooGQGaJ6FT+Kj0H9LWXlIlmB/
	 lvfkWRZ8IGAr+yvrKkz7EdJ531gSBI41cSueGZx2R+Hrr3nvJ6/PQ9n5Amh946nOJZ
	 1dC6FK4wSTqyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568799357.18465.12166405894766016910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c62d1ee2afb8140035f6d1d82723875856ed8f4bb8e3f5597e9a6731db5679a
Date: Sat, 26 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745687993
