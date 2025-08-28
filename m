Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248051C8606
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756354194; cv=none; b=dXelNuYznffuHIZe7W6SL1KSnRPQhOh+/pMs8BaPOxcxRKwz0viohokvDjjtcX8yLI+d6cU1870t5v1HsRZtOSTtV1hAbAhW94EoM/sSIXrUIpG/Pmv/R57+XebNlW03LZtosEZjQZK3CvfhMRcKKTEfc6jr1lt1ghcDNLltGmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756354194; c=relaxed/simple;
	bh=K7p3TVs9IjZcM/2YrFZ2prYgfAqjPTJrP8LSsMw+S8Y=;
	h=To:Subject:From:Message-Id:Date; b=l0IFdUpgubJFcsJoZl/dgS/h6SCtYoOMNTOorSKqh0Er3+ib4Rjwujpw4yg/YZDtBaMRUr2XfIBQZN7xMZ6QIZofLKPIeybL+3PPvsxzhEBXK8Ir/8Med4m8vRCuROLaQVjSv8RaBPQim4pHc+lxDupm2JG4zJU6xXRk36AGwL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtZkn5eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtZkn5eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756354193;
	bh=K7p3TVs9IjZcM/2YrFZ2prYgfAqjPTJrP8LSsMw+S8Y=;
	h=To:Subject:From:Date:From;
	b=rtZkn5eUeK57TMPGy18XnUQZ5iswVfQNV673+HT2lIuUn06H9Ezz8pF0yydIpjf2i
	 Ua4U2jIkeyuZxweuqWCEt9EIAws+aWPwJkAv2b+mrJKhViv7brkAk8z/BvvBVjPZrl
	 9nhRJ6HtB/R+7XOJyh36d6/+Jm6YSUNXtlm/2vztHVExb3oA7ztNCnkPb37I7KJ0KE
	 3/Yc/n5i3QFLCqjxJ7dNI6YkmF24lfxj7tpfGLaj6EdZOlVpMTCdJeun40oUieepGt
	 UgiwnT4AKI9kQYF+BxTm3bSACk519IdPbhXlVKhz5RfQh/vi5vdDd6e1gYsQbKPhrb
	 9S8Zij7dAPjtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B9CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635419357.26932.12822574348184178999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac96330252e96752dcf95ebcf882ba7bc67ed187778adceaf670f21e68a7f8c8
Date: Thu, 28 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756354193
