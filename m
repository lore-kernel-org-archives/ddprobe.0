Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45E71C84C6
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758409793; cv=none; b=EOVA+qWlJh7Q0GPKNx/qkx8LXofxPXNGGYWXcGpIee8itFfLXZQsfkWUPF7+YDXZz65gYYY8BLIVT84sO74oPvYaln/oA7NhN6h1Ko1zgAILrK4Y3a5Imwo5JJAIgxeDjoLSGzHr4gAXgo8lAseuvAlWMtL8bWn+l7S5OryAVzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758409793; c=relaxed/simple;
	bh=fHyRqQtW0d/LHREVdFUh5fJ17j2Nu8/l3vVcZZeIbWs=;
	h=To:Subject:From:Message-Id:Date; b=M12elzIbhm1o/wfdHRrQ+0949wQ4xaleSg4maxhCawj9fT+yMD4hYK2QaCfRBOtl0ZY7qc56kxwDskxotBAVbCXy0aWp2DZ8OB/hfBXj/4xAhwfPHLXERdaDYLqc4JixAVxk/6AQIhjqv28VWfXjwRd9rcoVbMW74OSOS/JQhj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9I/yRyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9I/yRyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A925DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758409793;
	bh=fHyRqQtW0d/LHREVdFUh5fJ17j2Nu8/l3vVcZZeIbWs=;
	h=To:Subject:From:Date:From;
	b=I9I/yRyH1N6PcDL+2rU2IJMMqddLX18A7LN2SL2DzhE0qi8/30K1h1r1KzaHumqB3
	 hNI7zFZY+/B3VDnjeX/2zNCYfoyWZWGk3DZmLpzupFZ6RfuTgEEHS9/N2eZgn4Yz8w
	 cLWnKUpU0gEocSOLd5+LBgy99gSUNFalon1aHhLXC8w1NwxrnFJo2qqqVOmxIlHlcG
	 R0RM3n7SLZb2oGV3+E1hJwTJCLSD917AYFP3XM7eujnDie14/XgJmpGQfTmczYC+6W
	 RDC9jV2pMCvBB0YlKTo6X8lWZ8zYD/FI0Rx4eMLels8hPlDQJAxROnVrfUyh6sxijm
	 62EepSdAIkoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC0CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840979357.12493.15560520244038328738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb3a1bb60783e401b60694f75a7c2ec08268cd979eec827d020e125f7a2b2a5
Date: Sat, 20 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758409793
