Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0601A5B85
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744495194; cv=none; b=KHIsaJUGPhyBRyQ/UpwfxEaXnFLfTsnEhLGs99UFaB17bqwd8k7jC9ZmZRj3WkhNGHatuWBPZYdgK8z4UQRxg8W8fmIMcwmgghRZEfhZxutpwVy0GHtfB3u/djYCFgOEIZc+kdVXXiVDvjvHaY1+SmYaX4QF89hL6201zb9IYOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744495194; c=relaxed/simple;
	bh=dMwoIJZYvj8OC66elSY9YSV2UBaH2tI5tQMAKY/Thh8=;
	h=To:Subject:From:Message-Id:Date; b=nFVar6xvn9b18vnW/faZgjK1LvRSAK4NeJhsjNnojgi/xtzvCSaCFMIeSyS3GpB1gLF/gV0jUPEudSxHBDodsBzoQ9pv+33o1E/Vzb3WHQgoFoTutvxNMLeHq+UZqjfXhIkM7d8eoFBAz9qN8khqHWAN58t1abfngDkLvmKixiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBlDcsbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBlDcsbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5739C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744495193;
	bh=dMwoIJZYvj8OC66elSY9YSV2UBaH2tI5tQMAKY/Thh8=;
	h=To:Subject:From:Date:From;
	b=lBlDcsbYcooEdYh5UXwoO00PoxnUclhkrJ57z8EmKe308GOvAeVSUXy6H/K4fcwM3
	 6StBsO+YYzTebxQtdQ9HV2lKEuG/viagA8vMiK1sqtg4d46KtHleVu7EuhbMZYpwNg
	 l3aA/4oDvHbQrfxRX91t5TUe/Wk5ZB5MZOVMmzG9PiAwN7cTuwHkGaHpGHRhE+0Ww5
	 GoaodshBCUpl5dbMgNw240kAECS2FHKuWuKItbawNDI6obOmx+P3Yr9Xy8rcbQK6bb
	 sV1wFIUfeaJ+Rbu07q7kyZ6F82xRCDqTmjbl/s+/H6sOaMD77mAtPJ3PA0k2hMFKPl
	 AMIH9ATZKxyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F535C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449519360.17420.15032160454354020687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018e2f6f42c823cba3e3b2b9af8396dc738073d5d6ed6a8e21167b78a6859750
Date: Sat, 12 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744495193
