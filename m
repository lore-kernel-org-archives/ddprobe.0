Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D53265CC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744106394; cv=none; b=hl81EHIriWU0R7WyDj51So7vOsGbpR2kKP7ACmQXrabp4Iuh5ZUkXtvr854wuefhiwLfyFqLvR8UrGreFy+uydBjkppQaI7EKMKXL9K0b2XDbXHh3XJJ8XUULyskVQzEBNIWsE19IkX0LNLdQjeG2FyqSzyWi/0Q1qm19rPZvnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744106394; c=relaxed/simple;
	bh=pDkA347ONQ1qntCePjP+9MpUMEtUtLOC4ZU4ui0cQMQ=;
	h=To:Subject:From:Message-Id:Date; b=OiTIfTIUDB5U3tr3zmbCascPn985eGe2NxDBPSH0SlgcW35IQeqxV0J1sXd9dPRqwlz8J/jcLL96J1qbRvEKAdfNsNIrBy2UyUKUixj9LxvhNK00vJHhsriKDjzz1xcr5mgoWL0OA2fnlt8W3CXP72Uj6CzCDmY8jNWHj/ue5rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4c7hmow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4c7hmow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3870C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744106393;
	bh=pDkA347ONQ1qntCePjP+9MpUMEtUtLOC4ZU4ui0cQMQ=;
	h=To:Subject:From:Date:From;
	b=a4c7hmowTdqrM6wy93ca0B1kxCzOCM7fAK8fudXKZIdLFmWB+/Y96JldcR1cyEfHX
	 R/96frG0amya2QCEh0IC1BTriPi1CtmIc66U+dawoaIKeCE3HBgRuU+OxmFsHcyXLn
	 ZulZkrWXKCAsb0bMYuSRUlEuZkaWXtavphD8KUVzowl6gbf4UbUyChU+knuG5SIajK
	 lfnjYSxedwgaRT+hhhtLjV2UuAoA6o0XzKSkIpieDd3nLvuAUm4rt+h44wos3JA7kQ
	 /60Er38p+dKiRlpd+HTJRR6HLfMr5WTN55pWdhNuULUQzwwznr8KS/HzOhFZu2HdOt
	 kMD9bNsOrPheg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93684C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410639359.30229.7383976185465737792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626a354a9942be8fe36c5ab9b8c279bd3646113eab6ecae1a4c63d8db610b23f
Date: Tue, 08 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744106393
