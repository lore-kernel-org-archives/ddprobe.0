Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BB16C451
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730570154; cv=none; b=B3aT8FyMIXTZzSxTHea9bnjDqYDLBUJ24dInKcVkpm6dBFWsZtfhVrTBxs34Ih/kbt15olZzj19l/K6O7nuCLrTs4x9utLRPOOX4qOZkFiEdVQUfRx3ppK7DuhL4hKpxO7WGs1SddiZSyBfh99qBKdkZEecN/GmihLYz8bSwbRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730570154; c=relaxed/simple;
	bh=uTC2l66tnuUBJeVhVRWU3Di57IiWaGMFSUK9AL/IfGs=;
	h=To:Subject:From:Message-Id:Date; b=Cv86wz6rT0MzenXJueh1TLNBX1GjMFbwuu/kdqOdTOSw/ESwedgF4O+UuOvwDsoKyA4taxmbS6Z4HEFp9FHEuL9RqqWmyGFbCiLuhD8iOSCLBYDjOYfedVyVDsr7E5QrxgsB0JyV2lALKcazjIuNpg/dc2EWmwedHMz61L4WNqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trds6ObO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trds6ObO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730570153;
	bh=uTC2l66tnuUBJeVhVRWU3Di57IiWaGMFSUK9AL/IfGs=;
	h=To:Subject:From:Date:From;
	b=trds6ObOy81DeafFi66WEA4JPZesbaFtRhBk7LjPUFs13OBPJvGzq+TNkZuC1mbHZ
	 Axi769InkYqWBTJ9y4gPBgKDhLcht78Fy32XJQOXcWP0QlkUeD+TujCIx2pO2vrPAz
	 EtmJiYYyYARkHd/uXtnPQ0SNb4xOckZm0ZBJ9+xHnVQnoBkfbOvAzFLEzFMXuRQIYt
	 KQ6AKKYs3gXBpIEy24BsVLC+5SNXQJbd60VvuKDUrSYASlD6kopoJeDD0tc1nTXjfR
	 PnSY1DHothYc/Uruw/Rv9yrwIs+kRPaBQXFHShI5TbGMXoHgXv11kptzK8fpVYhO58
	 EwyZdDfrMaqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8CE67805
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173057015357.2224.10541169677565206066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed79f3c9a2a4bf3ce9caf12324d43e4db64b038c893d945ce98b5aed700818e0
Date: Sat, 02 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730570153
