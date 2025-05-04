Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47D0248886
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746388793; cv=none; b=fDVwDN3J5G7XbuvXPul5/lctG9wEnRl0z0ZOOcuzk9lInBC97AJozkD+mgpKU2mdqqECcRBNNUZ8+8GpZ5adI7e8Pk4PAaIEnEqv7wQqM4H7lXfM9VG2XA57+FhpMRNDG3IMbVbj7NnkeCBwszEjZkJuTNrXj18hwmpJmiHcc4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746388793; c=relaxed/simple;
	bh=oS9otCmLGw+nxc5VdbRlM5Mgwf2UxZXo5NI9YEGUiC8=;
	h=To:Subject:From:Message-Id:Date; b=mJ6Xx9m8HVbKMD+QEP0LIg4J+e6u+4wBXxobvCQGTcByQM74VZeQRccUZe0XvUfiTD56xj8iANUYOKl/8yDWTpHImCLe5TxKvm0A7hBuyLDviWuDTcX+2lLdfceh2n02slg7Dd2sNz3N8ghyTu8OVw5vM3xzuQ4vKcPTlg6j83o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd5wT5l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd5wT5l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4280C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746388793;
	bh=oS9otCmLGw+nxc5VdbRlM5Mgwf2UxZXo5NI9YEGUiC8=;
	h=To:Subject:From:Date:From;
	b=Cd5wT5l2h16tV+LT8UDgY1On5c9xmW7ivKC0+VrkfIsufRQ2wn5E5CLsC8vJoAFOS
	 F6JQyLO69JufnfM5bpwkhSA/yVdvbleuHkrXmBDWpzvIEu1xSuTU5c7k4dMx8M5P4x
	 0GVOND9dUlM5vGvvCbgcgGCvhSv3cgibP9H2M4vNzzbYUEjXSXp8v8jXpUXa059d8N
	 4FtV67RAFi6qgahE34VWD9NjNoctzRA0+VBZmabpgGPbsFU4nci0bt+r6NkXZheVEZ
	 L+aabEgB/LH48uaXowSurQi3yCBBNxvNSYMLe1WdWyBMXXsDdLFva9H2nG1wIam6fk
	 vweG6ZjMAvtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F16C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638879357.19426.13602033072758152583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a7ba9c8b4300cb5a6eaccd6767e962f85b3e3150d1bee281d4e2bdc28036c5
Date: Sun, 04 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746388793
