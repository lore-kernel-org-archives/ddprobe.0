Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B67E3033DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781547394; cv=none; b=JPQPrXnlk4Qxcc/pTASFDEfLqb6btpl0hEHTldzfjf5xewnB6cexkkcLKEzLxfQDH7f1QMHWPKMfrzTrd1c8qdF5APH32+ZNfNSf9J4E/gK/CVtKgQbqfZT8sJQj05rClisrXyfiWbg1UjljsYQzKyGLOJZf2m+OZuBS+CQp0iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781547394; c=relaxed/simple;
	bh=V1MAZIU/CZ5mbkScKhTHbodUUKgoZf4cxSUbMSLlTkU=;
	h=To:Subject:From:Message-Id:Date; b=Gq6mMpP2+mlrO6XZn+pLWr8V8ob4iRYY5G9FziKNIQcusNi35EyaNQi/SNdUi7lgEMadDcO3T1mENKO0+UdooxNypDT6YyHRpUDGL9iZMYzHgo5xlJ8Q9pSiTIMTyZ8XfkvHHd7rtBQQGHfYTVJ1933tLmJSiAt9P9/kFaTN02s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mhtil/4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mhtil/4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E71C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781547393;
	bh=V1MAZIU/CZ5mbkScKhTHbodUUKgoZf4cxSUbMSLlTkU=;
	h=To:Subject:From:Date:From;
	b=Mhtil/4SuCi7NMEik1q8IManxVA6g+Eu4c7Ujl2tv8Snm/bpfWSjExXumakRMNob1
	 0NDtF9Upb531cJK6y3i4WV4Y/Y6tqRWXNwZ8cuVMllyCmoxuaHuZOqtuwWF4L5ms9Z
	 NeawEpuP0waCsZqJCjZ3h9pNPvX4wjtS4U5uXoLDu6ayvYFYSgVls2O4+Lew3C3CgU
	 CRWQI8MEMqq8cT+SJn7Uau++yKr54aiuYKDTD/DcW8fHe4Ng72sJkqoeFCMIK9BRVn
	 kmbIj6mDK3nDKXJp3xjhUIZdDg0ZVWJE2GgKcpX5XRz/vXZhjyYBoGxKLukLlzuGjb
	 vt0lpTaFFjP+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA36DCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154739375.26497.6863952053074025045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f049df27e3faa8a4f5bbcf4ec58f4c5ae4a178a8859e524ab4f061002213dc
Date: Mon, 15 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781547393
