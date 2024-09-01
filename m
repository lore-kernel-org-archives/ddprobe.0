Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336717E00C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725200754; cv=none; b=LoOLxGy8Wlmi2A9azf2EzILlQNgkbZ9Y0qSB51O2gyOJLoQWyzIcAUX/PZUbGF86DlOomPpvdmsfyYFKid1KRu6DlkLSak+5OQWc79dziFxMUdiu+tGjcmVOhjymZKZU3GrQzf1lKo8F2EheqilE7HIgfaKXkEAK++60cpAYrZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725200754; c=relaxed/simple;
	bh=iw9pf19HDAJ1XLoO9aXTbmR9oW8CbSTfMLRJXXDWt+w=;
	h=To:Subject:From:Message-Id:Date; b=qwskcl8io820RS6ehDwMRHUMYt2N+nl7wPRjb5/9HXOBB/IyRqdzCVXRx4R5fOhDaKKuMxlcfCckQANQ0kLCuzFEgcICvo3G529LFqfuUUNuOH6qU2MzkGExkgNl3j+eeYhNcWORwaC1AZ/H/yvcuKlDGThQsO2lSlaf+4mD2vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL6MAk2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL6MAk2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F6DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725200753;
	bh=iw9pf19HDAJ1XLoO9aXTbmR9oW8CbSTfMLRJXXDWt+w=;
	h=To:Subject:From:Date:From;
	b=DL6MAk2FgtZj582SOZmWENqyxdWYNvWnEY5uY5Zq/q/xSbV8PW2k4tQaCvC/s31n5
	 D+lF0nTntiCciZriCwLMWWHVkkSDxvpgRFRPSjjJyELu4SYQH3USphTGGWXyelM7Gn
	 9JL+NNEueuJ8I2A/ibnUsKdM2QxfyYpmDHWGApVPm9R/VKl4MkA6sUGIve1RpR23ym
	 gNvpQygIQ0fFn2XwLmWZ8ntGESSsmTAhgS4MCyV41uKIXtkcKTtUdEFLsXDuANA8bf
	 R2w9FkfCGHUpoyg2QxkIwM67MCtU260SXz1DUkI+l9LMFSMZC25FEIshpBW5f/+92p
	 lQ/QXUMkI6BuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC11C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520075361.24727.15691765109142547584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e65342ccc1b8ff753ec4f10833319a64266043c1ef075d02a9375f8df83736
Date: Sun, 01 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725200753
