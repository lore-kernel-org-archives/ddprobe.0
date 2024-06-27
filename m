Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B31411EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719488063; cv=none; b=UW8gRFUbjfIHDb1CV1PPgQ2Ah76mW5IPVfyTsQIiF7ITv+JKF5oVMCoVBWVtnn1IR/iz5ATnzSR5BxBgCyE/uzZ2EhY0Q9dxF70Ye5K/jc9JNr7SOI2ZdR9hYz2M2BoFKnXfVaemN9B4Sg6ziyxLgXFPi9dU+KRss6WZblOF9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719488063; c=relaxed/simple;
	bh=rCmWep45pCIbve7XWpAKUZ175l71jzw9Q9pkTwMaozo=;
	h=To:Subject:From:Message-Id:Date; b=Dvx3d8FJUkFgXkxLB+MGQTYRMPYnsGCWitFWMfAhmcvHATetbGnoyYeVI3yoZt01jJQ/dJ0mL+9vtyPQBZm/2M2fgK5zS7Yx9m9xCmqS/mrGsKr5kf1/N8eyPyhS4jLzhCF066HznqrivPEK/8vhZc1QlZlPW99eedgN8HtGtV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHU/oHLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHU/oHLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D656DC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719488062;
	bh=rCmWep45pCIbve7XWpAKUZ175l71jzw9Q9pkTwMaozo=;
	h=To:Subject:From:Date:From;
	b=YHU/oHLGui/GEio8Wf5L5svcuItgt4XviWKMJgNehRBj1pb1GMBouS33BGJ33g+mi
	 A7cKoW65uUWxTXJ5AQM/0QBrQIp+98HBUcryY3VQzw+rdT6jZBmt3eRc6nPyy7F1Kj
	 Omd0UjJ49B8ADHmzVs7FWp4jNdI7VmG80fnX3VvSWGW6VZv9pbdvgBTJIbXnTNGgAn
	 XzD89AZO4gJdlCqSxaNiB918Mj0Eu0Yd/WyYrXov7SH6usLnTuP95mjgP+WUfEh2Gd
	 R8WFLbJTOnQFwORW2cvoL6ASSNOZyF3fpORRie0g/zWK+GuM61pGKDKoKmu0FIerxn
	 IzHCjIAAYj/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0598C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948806277.28859.13214896745275962879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f3c0ac902532dfc700e1e0e0394e84829e66a106776e1704870b895c1a3d5d
Date: Thu, 27 Jun 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719488062
