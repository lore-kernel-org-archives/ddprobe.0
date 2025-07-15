Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C651D5ABA
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752577194; cv=none; b=a1v1mI7Gcsf2IoY2rAzz3aQ66AHVRgcnr5rDX7ZUn5IaV61tTCuL3Z4+H8P9IHFoXAb7kIxZHapoymQ0re9X7X2G17z7Lf/w5BEe3eMcwqDUNRAfXYWBAtG/1thIvClWPZYsjqfGXBkG08cKL29nU1sOKKHjZfQqU117KRF0YsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752577194; c=relaxed/simple;
	bh=T+9Sq/pqf7Z/DCdO/XmaM4J6Eo8GIuvHFAs84ANIT1Q=;
	h=To:Subject:From:Message-Id:Date; b=A7TKjkdfbK23rdT/P6lE1Vg66q31qicnlGfHvdi8vcN7iGwGsY/oH1aQ5uQhOOOYQLxomQ48MyYcOY6Z2XGdVsYl8w9T8HTlSno0EBsJ3w4oRmCE5V1crpSzySXA8UmONVvHzkdUzt2A1JxZXNdNGeUeJmwDF93e2ZrO3SLp8Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG+p8NV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG+p8NV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A32C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752577193;
	bh=T+9Sq/pqf7Z/DCdO/XmaM4J6Eo8GIuvHFAs84ANIT1Q=;
	h=To:Subject:From:Date:From;
	b=qG+p8NV8riwIyYP95lKlZQFAAvw36ou70VoSt1yRxTkPaN7Z9ZP43zpUVtwLsJoNZ
	 0rZnIlSAMvWHBI+6UF6r7tBhFQsM6eZMRGG54iCxenmHjD2S+vU7CGZAq+aFNiljKB
	 iI8Ue6uf4Pt3cbeAihMRHpqD12QV+tqwr0NnLszoENb6YgTarz1opS9eqcUwk83RNP
	 YdiiB8QfwUCBjrFGDg+JG0x5yKJxbIZFY/n48FHyYyXjcYorCxw17CS1Ff4wK4grbc
	 jJ7P6UxNLNI9NVOrpOx5OVfagZzVDbvYJXU/RQg8+ZKRDwciafYcoI0mfkDy3o2017
	 VZ/QC4sfbj+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F4C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257719357.18010.8161740994215980181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfca48db68a30f676e3a7ba4b4584a691ef03fabf98a7b92da6621e96fbe4e6f
Date: Tue, 15 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752577193
