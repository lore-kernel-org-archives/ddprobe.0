Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2A61607A4
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727736953; cv=none; b=iv9Gg+Pgstpo/U1XwprQkcLv+AyadWPJd/Q5KXgLgwADmxE+PuaFM+5vV8JEMx6f5vRJfKxz5v5G/JXr7r5AyeVDWbVnfbPkIcEFLWF/JgpBhWU2mF1vBXKudl1hMXG5xzA3PfzAlLxCMFLJTnl++JsIoGDU1Vlvcq21omWUJIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727736953; c=relaxed/simple;
	bh=6BTBar240MDNwQn/icvBYjYzgRzbcAIW/IZzx6YFq6M=;
	h=To:Subject:From:Message-Id:Date; b=Hhyq5w6VLqfe6Fa0qov4m8uSDwYVcwITWfW1FNEbOEnsLAQrccAVvO3e4oG6KzaqUZcM/XgQunClW4O8GMHuh1AxarRDAm+ZVrqhhFqAuu/4BoHfMcYyPqr5oPL8tiWIbCzTsatUeKMTGs6oLll//LzXTGalPuCRuyg04lOGbqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXQVup9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXQVup9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC6DC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727736953;
	bh=6BTBar240MDNwQn/icvBYjYzgRzbcAIW/IZzx6YFq6M=;
	h=To:Subject:From:Date:From;
	b=GXQVup9k1QPTgAJvoVm72QeJri4/MekxcF0OR6c8EJW5j8vNr8wOHh/v5EVk6fdtO
	 CJv6BFyZnGXOIRdl0giaV/Imz95XI5BG4pbbNeW1WkWzlScnEOft+4TWn7+zRqlr+g
	 a0N6toDfwRnoDilNMQRtbq6WVXuXX9VmzzH1mA04bq5cnvvGeXjlf505s4otUo7q7k
	 vLE/LAT00ALB+KY6pvA009rHaHgr9BexJlXtAT/vraj5tNp8mOM31MvsF1JKenZQdG
	 S1QXnyBbEPDHFPdjY7oRg7ZQ7jrb3jYY32JElh9TdRVkOMI+RcuWmyzXBmLz1LuuVV
	 E95LUXlStEbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4CACEB2CB
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773695363.13770.12751805579979750216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497165af24a09c48f96f3962ae235b14e243338a82dda2654189fe835b0875ca
Date: Mon, 30 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727736953
