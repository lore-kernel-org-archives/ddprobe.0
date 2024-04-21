Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BE0DF53
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713732623; cv=none; b=Tq3kiwPaOflyQyPploJlHxmQDReru6kmiRRzT4w+PHqb7Dk/C5Howeytm2Tn4sxCYCpqnr1eAeD1TpkiwPerKCbgjgvGbm6/TLOgUpFw5ax2KF0kw9/qfVZMvDrOo/LV0a3eZxRFtwFknzite12ydC+lVaw5YizGU9oco1hi78Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713732623; c=relaxed/simple;
	bh=3d5r1zAvCuKPz0kUQwMi5q/T5kjsrlV2eP/Z8JIrpvk=;
	h=To:Subject:From:Message-Id:Date; b=fAX/ExIdb2lz270xLaPayL8z7OhroO19vu5srLXaDIKRO4Y319faqIhpW0n7vxOUBBwFHovADRNlNB1HwxVoT/TpvC9ihomrF6FNnROoMI/uNVY4i1B0IGgpUaD1oQSj6hkcXf3z8NEWWvLTbLcS95Tt8PBRng+VQBKEVU1STQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvVNy/3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvVNy/3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D140EC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713732622;
	bh=3d5r1zAvCuKPz0kUQwMi5q/T5kjsrlV2eP/Z8JIrpvk=;
	h=To:Subject:From:Date:From;
	b=gvVNy/3uk0cXGUssV0sWC0asNfrI0trB6Cc1m459QLzzvZSGpf6YjZH3462ClsppA
	 25DNWbZwOG2XxC/xu6evk6fZmTitqRygWR22ujh8wZr/vKdocafjDGQx5+dhMNN0MS
	 LvAKy3Spj9N2EF10karOeVaLfahCXL5l88321nQkaNKu78JHiQyT2E/Bg//WYboHgi
	 k/w5NEb0ozrJNuvacm3WVWNykxfj3lJbT4EWny2TxgSSU6n9+suxYniz6Qm5LODqcM
	 jZvYax3WsI5HMp7YaEp9xU7+UUHCCjrtdRV7wNLtxsWByDmO4cUNsv/WNRDO/suoDJ
	 XHCGg8B/IWMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF2CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373262276.6431.15101687860227852212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9f3628a5ca7404159c25c554720d4108c3081523c7bfd8ef890526e91f17f5
Date: Sun, 21 Apr 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713732622
