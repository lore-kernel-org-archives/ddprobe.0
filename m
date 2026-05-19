Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BA03C8717
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779176434; cv=none; b=l4qmZe2l0GN/De9YDB5dpUoVZcNDION1rIwBYCJmbxc1jYA14p5OdsOMWbGreGNv7VPyKK7c19h6VV6u60EYOVcOY95HUMhyDXWXXf6OJIedx5XT3v/yjkwu1jZC4l1YB/c2hDwzYoMnnIn4i8MyS4x+CAjhETqs3sbFWI8vx20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779176434; c=relaxed/simple;
	bh=n59CoQbtML7f01PtgkOnCmwNlzx/rhjdJappfJQxc4Y=;
	h=To:Subject:From:Message-Id:Date; b=qK8rS+jwpUelzNPMgugT/4xKjLnFvk7+C5/Irh82Ye6eZwUzUgxW6bfA09Z7KN5vfuGz7OOPlg/sDPyQklroAyOA5q0S1dsFiWvNEg/RKx/5hRlRrR0UaCoRbs3JWZaqIYb1YCvKaGMrOh7V2rmWRBgRdb68NwceC2Pcb74Zr6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KajJzdts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KajJzdts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC197C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779176433;
	bh=n59CoQbtML7f01PtgkOnCmwNlzx/rhjdJappfJQxc4Y=;
	h=To:Subject:From:Date:From;
	b=KajJzdts8/UPD8/hB00Z75NZpD0K8xl5fyPJVvv06gJ7yD95cUkFPD/b1BJVUCX+C
	 lyF3j+g0FTG+HAD595MwaIHtQx37nLxjHtIh72gkjMZk/G6ZMA9DJ1xgD4yfwWmCPn
	 gFqxFXystnU5/Tbjrpf/AFFnY02p+IAGu2cN5/qusXJpcXe4DqXcUBcm690x3gAulC
	 48aGp1Frq8fpq8ooh+EBUTsKZpiewb1Hx5pweE6tP+lBvuRAXynXYVY5nQ4+sGA4vk
	 TZVEiicsgQeA5RTI5/e/eAHX3IKiWUSoItUp+Qs1hVblv1q6ZqNqVelLyHpRcvXpOJ
	 UfqMe71hSs8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF9CD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917643369.32626.3032683965558927636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ede27bf131ebeaca4a32e1b741b066ee4cb3ff80fa19a41c3130eecb19f968
Date: Tue, 19 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779176433
