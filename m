Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E6A939
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733032554; cv=none; b=YUWGuK/96KIGYv4BgPyUaElI6bN8zWe1O8W1kleDMkwRMHauApsT254WJ6j+uyfQQhOwyyr3egm9wKNsai8G18wwOc+ClfRd6D6xx7mlZ03Cmyrzfu+i8ZzmS5AT/SuyOksx5UyGYKIbWXvmsJJ5irzzoEp8HZkDZWaHGKWbzbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733032554; c=relaxed/simple;
	bh=1SyJhyLvr9RwW6wIOEFDZFCnK5gEM0vRJf9bCO6G9/M=;
	h=To:Subject:From:Message-Id:Date; b=nqR/JyKfqzQs2FB0lFBbZMx7PraUOBJKtVQ0fd1Ed/709LlmAkrEQNJErxNzDcwQGN9G9YrzFyDIzrQLuRWnObox+0SB1UjHCFRjtDG6bfKxOvYyJwveRCmckTK4v2loo0+cx+VkFVcDXaj8PjG6pGvPoDFWRym3uGJiQ82mMdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbXsMoCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbXsMoCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26E1C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733032553;
	bh=1SyJhyLvr9RwW6wIOEFDZFCnK5gEM0vRJf9bCO6G9/M=;
	h=To:Subject:From:Date:From;
	b=PbXsMoCEtVDVdwbpZatAseiuO0KkSfvqk1bzSvplgar62LJqVOulbpr/szrmDToAg
	 CZlggoUPO4iasFEyfqaWQpcFxo090lxmrK0QEcZ4h+XxfK4XxjxtKsKz+UZJKrxyXB
	 w1vekMVEitS0KtA4A8Tq4DOxxU1wWtI1NiD9kBXNv92Rzocb6YZQQwuhRVrx1JdJmg
	 YTahg7dX8m/QdyUlwAryepDWaT2GDlze+BdOAEElCy3/sRJlsYCD++0yEwOTnPuAH7
	 Tt/pxywbFuaoiGs7HqBZ0+2//byiu4y7tiROF+cEVBqcDL4uMDcyqjD2CSPduheyX1
	 o5D1hHPim5Trw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA61D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303255361.24616.3379874516553146271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9590bb31e3b5c40345bfe05b3393650688f8b7abcbd4c5ee9c9ca6feee5d3731
Date: Sun, 01 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733032553
