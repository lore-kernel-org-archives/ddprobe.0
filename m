Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B7329345D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746509994; cv=none; b=AgwvrWV2qO/BnbH27KVzDLq2bbbQA5Y8z2qtQbc/kHN5ACho9WymEEEm7MR6/7A9R5m2l24vTTgQaIh2sjgVdZXeksgFavV+LyT06WGW9RaGC8UKH6OrZuNeKShZfllE4H2ZDj6Ilr/7AM18bOz++ZMfWvDN8W/tdzaR+hSdaqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746509994; c=relaxed/simple;
	bh=bVAD0QDZzcjeq22809rP5b+06jsK2Zdu4U89L5KQazs=;
	h=To:Subject:From:Message-Id:Date; b=A8X2FcHhkrStjL7DGonnWn4So9idF5gUxMgyECQFQVcvEbeQdvQY9kZdilrXqqNU+E0SkiNYrP3518aFep55yZ0LjmtW5whLrBsAYqOA9cFA3MK2+PCxUbJv0HAe99p+lCKvw9jhDhBpz5hAYh9Vy+wPOOQutqTKXP4lQBE8tkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY8/5LQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY8/5LQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F44FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746509993;
	bh=bVAD0QDZzcjeq22809rP5b+06jsK2Zdu4U89L5KQazs=;
	h=To:Subject:From:Date:From;
	b=NY8/5LQwzZ3VyCfHpjOLyJXt9HsMCQyQSJ12N5tWpSrmXsoiiP+UR+gBG/TqR5DR8
	 594U+J5dTBwR/cpUYaHvOTPfglkEe7Ac9lreCXJeAf1WUeBFY16KZzq7PWKbhvO0JT
	 WW2rve6xdhJecrY3+tkFQPyq8eh7AjDFdm1JHczo7mPIrJ+NEwuGlUbK/jwR6ADQ8R
	 rbqOvNHrYzB+zoe7Mbt9GPkddjejix1jGIPB6/c702NNi4sYgnH65SzOYIZ9vqCRDx
	 3jYNLQdgDuUqvhIdL7SYf4OtkW2hczTnaiBks1NAhF9H6z9qgVYMZ/OMn5mrisbdcO
	 K6egkYqzSYF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F271C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650999357.22836.8539219383568945754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531bf2addc88f3a0aa0beec6abe331b2581eb9433c5d0124688f9bd49d8f5dd8
Date: Tue, 06 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746509993
