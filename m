Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B78280330
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757965194; cv=none; b=WRju5P0BvSV6lHa3CoaOF71eaWm3yAidDygeIW9EtVQg/Uaz/f6rgyMvKFnDSucHjQtRStR/kZ+41alFQQCkJyN9w4jHJFAkIcWpJQt3uMlu3yuR4ScKeYPZYRdQSgIYaXWvkczsiKdDSZLutMlR5zc4ZQya83uieKaXLFJK4Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757965194; c=relaxed/simple;
	bh=XtfJSBcB+XQfC9K/AYaUNFps4wGYWUWvbZOGNleXFGQ=;
	h=To:Subject:From:Message-Id:Date; b=rnvUy5cpGEw38n8rD1CeuCNbSw3ywLX3JjSFXb7ChHGhbK3vTjxsfXMihzsiTc88BBWan8AyCL1dRAbMZ2F4rg4cIdIp6UXVY8umgEWnuG2LsP1ultMTLyxuYYbVITM8uRGWn9n0fO7Rpq7QqpbBbNtwrTN5zE3wFWGe8DHjtnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i120md3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i120md3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A842DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757965193;
	bh=XtfJSBcB+XQfC9K/AYaUNFps4wGYWUWvbZOGNleXFGQ=;
	h=To:Subject:From:Date:From;
	b=i120md3C8RbqgyNpXZ8T74lq+mutpFiInYlmKJkJCNg1ex5PVGTMiCg+1E3rJKHHe
	 iDlnVeR12nbKkoxc21WxtBMxztMmx3QVczuimXj+3wQUfuAVG0bDZvZhr8wrQpI0Sm
	 4ivMrQlMJSAsHUdvFRkCid20aNQhWvBW9GxV8oDYyX5Zcwca1LAE+aDg5EwIO/MtA5
	 gnFqI0vt6+GYmLd1q/7q4a1fTNBgwwa031orDOv2JEQltk8oYmvhpgG7BiBM3bFXhC
	 fExkmXv//IL+kUI0iPupxMn+42N5WSpOw8gryqAI6eWzK85S24KxATAooXiYg76fCP
	 /Hes7t44i1Vnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92157CAC598
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796519358.19043.12884577363460182099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697cc00c0cbf6c5aeabbfd643d9814ce78cf75f5d0c4f410fbbe986801441a37
Date: Mon, 15 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757965193
