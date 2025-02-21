Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E12AA94A
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740101334; cv=none; b=tU3RJeiRgwC5eJte6uw8hX21KRDiqYoqQ+u4ttKcBk+PElM3lI3a+M8P3ruIvFCTRQvK4fIJofeeHOjmiUZdlwH8aEKbS1PA8ydMO8L8sBtKh4JncfIRgLX5M+iZtugvDjnFdc/LwdvUufFeQfiunZqhtTPtXJLOgdWtTHmt0rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740101334; c=relaxed/simple;
	bh=Uyp0UlqDas9YeDI6Yt7o9scvJB1DO514oH0K8CqpIIs=;
	h=To:Subject:From:Message-Id:Date; b=sUvUtdRqVFAS4o7tCkahAhxKMmwt4O20yVrxaamt6kGaknv5sMN1rFVEwtZQ0vg9O2U+TJqj6Y7Vd1FnO1C5qUAQvK1TGEREcArSsEVZGI2T3wdCZAz79X1UrwkleKaqWUfopQ05DXoBnToU3NHwv44mbZ0QvA+Sbz++Q0ac3Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbHprls+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbHprls+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AFC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740101333;
	bh=Uyp0UlqDas9YeDI6Yt7o9scvJB1DO514oH0K8CqpIIs=;
	h=To:Subject:From:Date:From;
	b=FbHprls+wfQvbir7LVBqw3Ged+HbqF9U+pFt5wDwFwoCJ8DroowPZ6vn2ZywFo0K6
	 WQlnVkJvANznj652XGPfz0tW2JuwHr1bbpWQjXFYrWtKw3xbFFLfjVcXR1PTrXqgyx
	 FNu6DnuNN9dgrzPxfFM7bphlwB31e4dapXixHSrsyrqIqhoOzx3i2QJS9PfAiqlmW8
	 Agl8CIXw2Meg90EpotxlbTgBxJEiGVbfsAMHKMhbmUom7mn7hb9B2Trp+WPXPrUIOB
	 bdW3tT1aKN8DM8RU+46LgYS0ASsJLxqSZI97fhGMpaY/5bbOngR7Grya8o98uNdx7y
	 7+cM+SednMSYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220BC021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 01:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010133358.29867.9218730201356013362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c40c89e8795b982e2472e0e380055203801075476984092d7dc29b39b9f999
Date: Fri, 21 Feb 2025 01:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740101333
