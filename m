Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E61D2E06ED
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790440834; cv=none; b=Jgth+l7uKZ4XK5lijC5F294ctZx76fmS5V7KsTkAg6aBJwIdNzkdxO7mWVEoHD49SErOxFDhF1dhQ3lMD/YMennhfCbNHW1ydFTgRQ9TdiP+RWGzQoVqhyU8yuhLbqmnJzakBAgJr9MGdLC/1xGCrNemeSETNVM71D/tzuzbpeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790440834; c=relaxed/simple;
	bh=iCYAoF3WtmR3Mg+N0r4vY6QQM4t4ZjQeeB4Y6DECafc=;
	h=To:Subject:From:Message-Id:Date; b=k6ziII/+WMEjF58OsXLE8WkCuLE7yb4UZ+tV2w+r7W9w/9y+NyDz64bbHi35Do/etNrFyqIxEhxPGMuo65RvpqbUD7klSZh9qjWWmKvc6b7WusCNAcnM2K8lupPUdOY7L7SsQbgX7vurmFJcJnX+2qwUR17uu13yOgTGK2XNqlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmnupXIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmnupXIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68A2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790440833;
	bh=iCYAoF3WtmR3Mg+N0r4vY6QQM4t4ZjQeeB4Y6DECafc=;
	h=To:Subject:From:Date:From;
	b=QmnupXImIc0kt8JAQFtPRJ2XKZ0xwpKGHbYvsiOcOguj72ZO2/XyuQ15GRHjar7Dr
	 qPXfsj6xpxl+ImAw7Vt1l51wawHX2nV/CP3kV6nCqPBDw/q11lwfUMywXcquYQiViO
	 HbiofRHVOv9QkqD9NYEHlLTVu8uRXn5YbUfjGQK1aZa5NLp/sDHf9p7ey7XL9hyX8u
	 BNuYEoaAil+pIHMtLL+myN49OFz5onqFwD4SBC0z3VTDjzwnBmZQZylVkrFFR0webH
	 IbQcYo1NxHEIbtFLsAPriJ7ivCYvIXbQmKAsB+2bi0tv9+FGBPcR6LxJlOeIKSKXFT
	 WvHa1G+gstBcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AB9C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044083372.9771.13647805875449214208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dca29612078164b13481ac13b5657dc79b9195265fe5f5c7862f035a6799f1e
Date: Sat, 26 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790440833
