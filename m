Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257DD3191BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775478334; cv=none; b=XxT7Q+iLK2JyRWXN8AjW/sUzZbImrQXVFT957e3Jm0NatZUmxRj0xPANw37630PtUa0z9fjbTgtHO8TJ8Y4fGZp1MMp96dWUB2JOug3f58m8Ql+2TR8y7fUbtq8WSe11YO9M1FPm9CV27meeIOfCVZhMV4BvwtqxhNcWkJV7a28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775478334; c=relaxed/simple;
	bh=ecSiG5NqQpD07TQM794/Ijqf+mx4sho9zpQjOFA9fI0=;
	h=To:Subject:From:Message-Id:Date; b=fMxLu3h016uutAKcpzXMhdT7lYLw3xfHJ0cUo5bGpAXJQlCL077Fd2AmYpVN+LzEn0HEuZn8oHqpRDLuvc/ECeZZpc7e5wAVR0nvTWhSqZizuD5Csec5TxAwfddwca/lernACUV6u+UVMc8njAr+VzZNO1uNMCsaULG0W/s5h68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpXs2JpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpXs2JpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD74AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775478333;
	bh=ecSiG5NqQpD07TQM794/Ijqf+mx4sho9zpQjOFA9fI0=;
	h=To:Subject:From:Date:From;
	b=GpXs2JpV7LN4E3W2BUzPbbNyYUEhxBg3AOeubCWMQoMETyqPzD+ZncblnWfCmVl0l
	 w/G2MrngF6+rbbKRmBqePuF4HKf7ivlLOPEZLd5aHndksbLQjzeroj8kimnXRwJ9/W
	 YbzdrkNWaOBvFHaGCUNg9CcpGWdL+GzpIsb/0zAsjmneQdcU3m2vrzjq/rHG2a54FA
	 OXk4Q2jOqZsXF+tQr0PufucYLTDQvCjUifuXtj80xUUuaZZaMzM0J53gr2kzmk9xzQ
	 lWEK9gLmcsQPaCJwhHBJCKHJ3UiBeJhjx8J8GnPfcTjfTg9pdN4mnhCZ3XwKHeMtnJ
	 +uHIJBnoZ5vqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F04EF4ED4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547833372.27035.8020481901955817953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36bd256e5732ab5fed421d801bb6565e36dfe999e0da7558cfe81c9e3aa41493
Date: Mon, 06 Apr 2026 12:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775478333
