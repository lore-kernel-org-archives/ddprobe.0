Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FFA17993
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762375794; cv=none; b=T+3SPXGrO3/TR2OBIFBrtvtQsHumYUTITKmlvEHjSgtregy+6fyhp6lXtmOCW4E/7M3qljxfmmzSuQfiEiRmCOBy6lerQOXesO63o7D+LpoxDskSBKAojJKCm7A/WA5NYiVKbTpXrqBZS46X5zRjKNnYcDh4ofH92E2T45mantw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762375794; c=relaxed/simple;
	bh=+kQP5WcVsMs9Mie7XBnpXSGoe/Prh1bQNqAWelbW6Tc=;
	h=To:Subject:From:Message-Id:Date; b=USnFDd7ZUPuYt3xdCCgdJ5hLclzl0uC2o8wcei9vpZ8IglhWB6ML0fRZZjNrtY00CiBKoWXpLnfNeA/bxH9K7ETeVtASHYPjcIGHca/YAFKgAhB6/vKFMh/Ff84YfCoG+msf7lBp4IYZmbfktuWu8RfzoVyzP4ygYo6PDDqBf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAjIdM6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAjIdM6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0354C116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762375793;
	bh=+kQP5WcVsMs9Mie7XBnpXSGoe/Prh1bQNqAWelbW6Tc=;
	h=To:Subject:From:Date:From;
	b=iAjIdM6ODv1GLBzoe7GcW1gVcy4VHlK1oJ6n12VAFOf8WOOQJlqqj+Qvf0Bk/cMFF
	 ER73/Xftr8c9VkaDl9kKjSIeyJfBctHWKUvXIYRkWU/I9lqyReRfDPU01v7QZ8p5im
	 GGed1GAzIYE/a/gsMuvA3TK/QN5skvS/NNGHMljFNMfmCJyjMM0d6txZX+zLDMtTwV
	 7kElf84YfJsJXnmSw4Og8w79ti7zNnvYns7d4LPYYX9ZrzPMIK0hjA5UE68z8YeSPy
	 YV/me4w5eq2EUSKnoKv4o2rdGGcWMAOJHV2KalGjV5KBmlDDnQcbVDizzZ6JvwvuKx
	 M7B1HF2fR9zQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD94CCFA13
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237579358.7173.12727648827278077396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ede38442b22a72fac3703a9482c38730606b91f67099ba84586c7d481b4110
Date: Wed, 05 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762375793
