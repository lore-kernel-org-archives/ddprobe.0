Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A383FDC14
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779983554; cv=none; b=EVaFYnUm9lKn7qlo4FghKCkLQiY0DW0oen+PmSQinLW+GuvB6NAjXLiwl7lbLCurqPCWoXvP1uUSdLQkn2XNyf1N9HOZeRnHlXSCZkD0LifXoyPJL1OEbb3vYWLTPc9w/Dg6nD0/ByWXR1KCD3hARXsroa2r5C5mw9eGHZEJ2D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779983554; c=relaxed/simple;
	bh=gSbG5NZDwpFLJKqFL3L7h4yqQBK7JYv5UbtUSG5glMI=;
	h=To:Subject:From:Message-Id:Date; b=tbeu+QytZ9rSyJQdaehTv44iPEbzaxLDzKh7DdEo6mGcglDuM6436JjPt1KqAn0yOtI6J4uoPmHlmsdZuakIy39dThkCOlMSSybVa4k6RADUjCcprkd28M20I7mc4dsBElxVO26slx5PL+AXrKAncs8jTKJMm7+lCM/jbOBWRyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWZNnPXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWZNnPXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C65C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779983553;
	bh=gSbG5NZDwpFLJKqFL3L7h4yqQBK7JYv5UbtUSG5glMI=;
	h=To:Subject:From:Date:From;
	b=aWZNnPXSKYdgUZUomvWmDiphjLHacVn96QZqw4LSfABMbB4WuhkpxD7fJBfsQ8Tkk
	 5PSJyvSwgmn9W9qbdt4xE0/dWnc+wl1/QVHnw3C5II341vCXn653JniKj+QzV7w7tv
	 Op9knONniJgmNNvatmCxczVRgTO7d87r7npNIUyEmzlMCTANrYnxeqDaH8xGKZ0bY3
	 Ydzcw1ZGq3E4bvzFS/p3x4E/0nb2XFmh47x0h49Z9EloDr5nUqsfvxVlZl5NkCN/5t
	 MKKM+YfjZI+PzqR7DJSfRKazsorj9/DUdVLvejOc1kaE2hz85B1kqtB82SNtNGBv8u
	 QzKijpQV/vCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED0ACD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998355368.12298.7875745829650172336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d54c642949c7c5eabde85c2317d2e506c49f226f934d8aa8b4aba514ea96dea
Date: Thu, 28 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779983553
