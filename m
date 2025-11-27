Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1359F31C58A
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764246174; cv=none; b=qC5O5yVNCLyYQIv+Rs7klZ14OjJEOzwoBfUmYaHT8Fh4OQ13WMs8ED+CvZqA4riMPPqpJP4+KmNKWvw4SfPIsMopQmmf5St7zcr0Vu//f4b/1MUlbqhD6IN3iKP1fbOo53c8cdZhwpyrEbep1K84OIxvD/mxRgaJ+6cwuGHRyJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764246174; c=relaxed/simple;
	bh=s6B1KMF3Mbg/YpJFf1sg5ITiC3b7VnRaZQXOiDOUAx8=;
	h=To:Subject:From:Message-Id:Date; b=E0sQvt6YB+zMN13nN6nVoN7aaCcEbi5nmb1dPaDzgozqT5LI8AdouoK2TTWSjWgwheizAgOrQf4r0YMbAvkZYbz8f8IK6mrV7usBLtgGedpRacV/7CoAeEKruixRzS7YD7hPk6zgtAxzQL1E3x+UeUS3KVl1snrckRcIarIRUMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ+9ohfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ+9ohfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16FC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764246173;
	bh=s6B1KMF3Mbg/YpJFf1sg5ITiC3b7VnRaZQXOiDOUAx8=;
	h=To:Subject:From:Date:From;
	b=JZ+9ohfXtRlzGJMp4nBtAlXunBJU+cMzm0wyE0lkf1JPrH716s2I3hT3g+yKupIYs
	 euBdtkEDkQcRse/lBS+/zCioLcps/2za/fhnKamzadt/xHiowoXQSlJiL1eY8yOkcJ
	 dSrN0+8vtHfXzY+CPycPGbRTbZ0+UYJz/Q9hEvQQtlBhfBaBnURn4A/8x4ePpBg1f4
	 3FFMHofOuuGh9bEHd1G+qNrg+hKjg90XlKgbtHQmwR5PZ9sk8NG1ztYntGTiZIDbjf
	 +ZoUI6bC6Ak+yV5Rk32P4yrWRtfHK9Z2wEWSy6L3u9vZ9QcIRCnH8mqDTo+Kb+2KMP
	 JQDjVbPhwFuYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED1CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424617358.8029.9429979845670915972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1db37a21c123c7bc4c1f0c1e8ec1f556e5b07bbd97afd4ad6c0cf2e885c163
Date: Thu, 27 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764246173
