Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3CA10785
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767323634; cv=none; b=hqcdJVmTOYCRy3JgufTG53JxHaBkzdRK3vsJ8g5cvYXXfCXkjmPG5ZPU9M8s++3o9sv5J+YRFixBVf7v1NON2Y0DuKBhaxbGi0QFz0paMLjNDpaGpXJOrkj1xXPO7Ns6KGXmfGl45ORv/ZPDOZxdkzKufp5EQl0YbvsHskZ97Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767323634; c=relaxed/simple;
	bh=IQsHxY7o+cRPSAU1cM3hRJHtAhjgFqaX/QkSzzXHDFo=;
	h=To:Subject:From:Message-Id:Date; b=ecKJCQkBYCiqYoiBOXklSgQrrbTJ77Q/nOLlENyWk1cZK+ez6GNhZrwsT8lC1lOL9qGjnGznvX9ksCDkS9BAeFfZq7YO0CQkHJl9t8ANJNGHSzpB4qR0J8KRhKOOWxGRdldfje8mnbhCoh83ZBF2PF3kasBC8zUXKRraUS9JZR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a206ynYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a206ynYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767323633;
	bh=IQsHxY7o+cRPSAU1cM3hRJHtAhjgFqaX/QkSzzXHDFo=;
	h=To:Subject:From:Date:From;
	b=a206ynYEttHsVfAaD5M/cdrQcywis5ywyZneTj8F+gNY+JsPY2qPzNKMRKTI12D6B
	 7kytTo8buAM3NzJUWu+r8rO5IfmXI5zCkBxEd2L8+5vDcQExhvJiSfl+NsfRmqhQkJ
	 PdJ8a21tT9NnM6coTg3+6glfxDhdZWNDuV7rEJhfy7iodQoJBw+u45YNnIS4sLPozz
	 b+ymEitamlxyo6OuQQYe4E/ZrSqgQPuuHup9nmL4XXCDWN8BTsXTxMxOzYu6VODjgY
	 9iqccLjRhGNs+RET4zo/116Bp80/S0rh0y+I2Qd2sLjunzVva/NP0zVWGalMmBnWpS
	 mb7bI/y3VkNuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95664EEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732363358.21843.12025224278953751977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e4c83865633677e39fbbe9e06201518905a6be5b97f3c235d07636de67ae1c
Date: Fri, 02 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767323633
