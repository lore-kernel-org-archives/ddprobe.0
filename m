Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C3340DFAF
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773557094; cv=none; b=ulcWNOnMX7xjF8vhg/syxbDFcY3ctlUpJf+Qndkic5U+iBauWA7RquuJKY4Ste+GlcIl4ay+HREieMfJElD+YtPF9Tb53xKCvJvwDdBu1dmvkVEten8FJ1PuGTT0tPC4wfclqdIn5nm39YYBIZNG/jE+5vd90Euls0n03A7CzJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773557094; c=relaxed/simple;
	bh=QEsk6vFYnelDAalWyWPCZ67uLs/5VoVMdp/5ETtitJo=;
	h=To:Subject:From:Message-Id:Date; b=G+TKdvU86hI7yj6hRlRRVRU4YvWGy/WfQFErIFrIsaEC5e7RxKt3HzQmx07nxNIfC/ZfCxW4tacgSYoeHXuiqDylMYTL90D8is8tYCN4yIiidvf2LXVjuLwrMHCydvEs20ID9kFte2EZ2q6iXUBBg9dNuW7tBYMCisUcYrpBxgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElMkQFSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElMkQFSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773557093;
	bh=QEsk6vFYnelDAalWyWPCZ67uLs/5VoVMdp/5ETtitJo=;
	h=To:Subject:From:Date:From;
	b=ElMkQFSDu8xAOfUhQESTHifBAKZtaN+Tmwnf7fiVEnMV2NMRdbBj3yTyYsjOfDDPQ
	 lHUjsHsMDMrA3W4KW0RDHd3t26imsRVccxk+/B/uxT3EwT1D72hoBKtcL4tyODkQ3P
	 C9ikRFIIY4n3UVL5deWO0+5GSPYuPp9FtHJ9HByDsdbx2YLm6Jx9M76jmaKpMHURK5
	 47Q48aLtWt2U3V838hj9SXYswUnS4NRJJcjVLBx43YqUHeY+llXF+dVvINC2nYXjXk
	 nMt9c33G0O9DHHMlLCHyQOFAacoVUAv4e/ISM8oFENYq+HswkiA3YKBlZAOTdHRh45
	 QfWE/aY0A/JRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00BD58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355709357.1960.2563543594230791701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a9ebe17d56ea07082b27b959220ae2c06c5c987c3b14257305b7108087e5b7
Date: Sun, 15 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773557093
