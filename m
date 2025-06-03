Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4658E27FD54
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748937595; cv=none; b=e9jHsWnuBTm5hspkYjtBJMgtQBq6Jm0eGLvLGkN4rvXmKvCi3kDi4jTWcom2+Zd7FYAwZa6dV9HKe7SzwgyrFMcGtd2DzZRjS+heoKRuDMty2yN8booXS02uTrh3DswNZb2HhOJJVX2I4UsmwkOWQlFsQ0ZHFgF6U2nKCMSCp1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748937595; c=relaxed/simple;
	bh=ih4YCNs2iaNjPSHyvAv+iDyEdB+J7rotBjLoRuLm/6Q=;
	h=To:Subject:From:Message-Id:Date; b=mpbY4rUWIEPixi7aXpOHWhT/zfxFdU5YVY4y6gBHZP/yukLeoM10zJ2goPsrygZRnIGA5dbN1Ffnm+tRWSSGZCtCynrvcBKqr/1lHtclYBki1RN/ZpkqurQrbxaVTXakPnGroX745kYA+AFgKjmK+DkDIZVy9lGLhGh90BBIVxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohYdjZUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohYdjZUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3E9C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748937593;
	bh=ih4YCNs2iaNjPSHyvAv+iDyEdB+J7rotBjLoRuLm/6Q=;
	h=To:Subject:From:Date:From;
	b=ohYdjZUTcFEcyTmtncANiw8oipkVOykQ8kQNbYwpb5dwXv+OKN4nV+8XH5dQ+r6kX
	 j01ztgU7XfjGV5oNzY+xa6gjM/Lg6Wu+OCy3GnosfnCZqgxDqPL65X5Zmszv+InSOo
	 W3Fm7lD/hyJzt/5KDR6ksye4xyjnHcaU/rTkFvkAHqS+n1Thtuu61EYDl2rF8dJuUk
	 OnzjnKNSH3uT9zlaQIOx3CKUbtuhkhgXAiEmMwCdnF/oUN9SW2K31UzoQiJbFDtqJJ
	 enVG0+wjaWwqvbGD7yM33grL5iDLiAPQW7TGWukJRfRW9QLGTqgTKgWz+6XYcRWC/W
	 FBEbTF5b5269g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3D5C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893759362.24886.13036270035781826201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75a33c9b69f3d11fb4186f4dee94e81354e48044b972d6bfa6158a368068d6e
Date: Tue, 03 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748937593
