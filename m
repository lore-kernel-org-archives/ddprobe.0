Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FBE36403A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790377234; cv=none; b=cKzsUAkTyO6FM/G55kEtg5cBUJ1A8N2uUpwQ/m3jwQKZBLm78BE2PsPCm1kAeQMOk/QeKT/yifzy0EsoT60FgEx+tJQDl5T1jVxsvPaxF22wjtXnbz8LjSOrWGKIGc9Y0sd+DY0KxMdFfuFCPhApK7uaOkhN25SqPhvpKOwNag4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790377234; c=relaxed/simple;
	bh=nCT4AT9bdWoO4Vb3LwO97NqYEippvemGCVeUHeC52lY=;
	h=To:Subject:From:Message-Id:Date; b=fwcY3aeHbCtu2Q4zeWzvAfU8TYp4dlcXvkmnp8YQqNhK54lNeSsmkYBmmgyHWmzJsyz3t5lZYeRCrrin+Pc/ENolyKAFs3tPeoyGgHhazQRVU6UgrsD+aU4ECaCDHjUfUhlcCVBmk5jSJjf3Fo4QyYSl7FIYdIzp7VkG8+clyck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyZGGWvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyZGGWvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65BAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790377233;
	bh=nCT4AT9bdWoO4Vb3LwO97NqYEippvemGCVeUHeC52lY=;
	h=To:Subject:From:Date:From;
	b=HyZGGWvQo3ZqIH9HfmLq22q7TNiKIchIMScF0CM5CRl92Y3y5V3n4NxUzfKCAj17S
	 3y1h78PjDGBthhCZMzyznPL2ZHZPyGnD2f4M9BvWvRrEbHJR/WAwGKEqPX0EKMtMwM
	 JgRiXDjq+/M5wkfd/Buo3/1JVHrcIzuKM7HaRKErfoYN0iEhpIGMkUabFSTejaiFEe
	 5b3NP6Cz4bbzaWbJGoEJJ7GomC51C0CL7+Fnj15E7tjIcwnh3Xk7p7wCKu1ySs0tFB
	 xRPTozG0xNkjsxEyvb5U6wQmdrd1LLoTGOtKdfUB0LPBqayR/frhMDtIYkIaiwzCVF
	 jAnq7imkLMkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD4C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037723369.27079.5428961667241159428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f1ac65abdaef6e6d5ce28e6d8072e8b1a59ca0f8c435ada2db5af050a6ae52
Date: Fri, 25 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790377233
