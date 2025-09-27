Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222CD72639
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758955194; cv=none; b=qa7Pxh9Ei43JqWqoioCrjQAIFPEkXp2dQFTB5dPtroXrm10a5lOZ+ndt3ucj5BLTuT0Sa88Pcq6t7HnNBNUxrHAbgE7xC0iNFOkqcKzsAwubr3FhvE70l58dZoSd7MQgVJmKihMlH6fboEUmD4pRm57pFfJofTS9jpkPECmg230=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758955194; c=relaxed/simple;
	bh=I02Vw5rafDahEQpSk+SbP21RTdi5Sd6FkgNJB1XlXNs=;
	h=To:Subject:From:Message-Id:Date; b=r4vTe9vfG6WsbwL4qnNlgJzw65MUqlQYhMNcrpilBjbv2IUhF34GmdL6t65umZaq5wmp6Cz1QAeMKAmIuNZwOymjqA3JkExs0+npZyOmXX1JQwP/jot2vV9Wb2dLEoaJC/0bcW0qKG2PYAj6cSUJUy3/dPKsZyLU04iF5xSfAls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekT5aSlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekT5aSlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758955193;
	bh=I02Vw5rafDahEQpSk+SbP21RTdi5Sd6FkgNJB1XlXNs=;
	h=To:Subject:From:Date:From;
	b=ekT5aSlW4FzCzHOY0vDWXD6mw+UAZ0fj0y+rgC40shA+myxHl1k+KDRPdJ895c5EY
	 Gm/sCxdWAvuiFRo/V54jzTTF/v56Ev97CPffAzbOMOpRs/qdAX/ZMUu5nECUHfHuwa
	 382PBjHLMn5rz3R6EZCIu4EhHsBaHyri4KbPPqJdUIWiAXVQAQ+7CjZ5Zd36zVOjQt
	 5RwPNOzRY198F3CvAQfn6jz3QK4qEE+uG7zAkd2BiP4XinsJpZunym2J8hAMC4m7GP
	 ctsmNh03sHURlzN0iZnnfOnVVKGdrZhHU4KSkBNMWq73AZrJG+nZ9SiY573I/PorJE
	 XLXtCkQ+nfuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F422CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895519357.1514.12742327336901972606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c14a13dd71b0002752e90ea1e02f76913dc700e40b129e21c4478c26e190345
Date: Sat, 27 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758955193
