Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1F72D739B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791013234; cv=none; b=ZfNiwp4Dl8jELxJx2h86Vu9kBxtX5oOFjc0lnFWFjzgwBoYVggNJHJ8F8IhyDA3PVkRhB6xdEeAXPEbHsoBRy3V9E5YjtNA9HJ43Htn9g0mJ9MSCr5d9AJz+oKi0hi3GoC7JNcYPdim7Y7gd8c7h2fKUIfPx6twTVBJNgaA1hT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791013234; c=relaxed/simple;
	bh=IyF/XS0ZI7kCrirakI4o/yb3tANjqPGObG7z5mbGvPM=;
	h=To:Subject:From:Message-Id:Date; b=ZiC6UlQy93HanGGHIfnv6NbpFMIx8W3rW+MQgkWPFqhRH1LIbK0x69mHVN1fmiqbyMXATXF6b33jncBAg5KDu90VFlJzi1hUs75igAgaZDei3qQHMMY3zzv4UBWCFVU7rhh0jgEEgudUE9dF4RJrCWqcsDKdiBLhMfiiVaGQ4As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUZtqAUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUZtqAUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34E0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791013233;
	bh=IyF/XS0ZI7kCrirakI4o/yb3tANjqPGObG7z5mbGvPM=;
	h=To:Subject:From:Date:From;
	b=MUZtqAUV4G99rPNGtfsXmHKpcE8pdR68/hYUU69yQYBcBfj5zDZRwOJjmqUSVCWGk
	 smUiRcam6LWud+crzdP8ccP7BeNtuUsvMPKJ40BD6qBMTFclszz/iQMcNJt7qdChP+
	 kCJVpQ7eOcms5wAbQ8MAeUSi1PZFD09CV20BvbgwvK7jTeBEINhD2v7uY0cfktEtuB
	 Uq61ypwAIsP8Fk9hqtEKQ9ViPMHPRBDy1snAgZwQs0FH9Z+PxGv9ASQ/pcePhDaXHM
	 VE140Vtu8Fy4zT0HmhLG0IVH5dysI/L0liRdKKrz6bYfjbPjlKLRwyGSorkG1yogRA
	 ql2SzkFj/HIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE04CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101323369.17512.13400940888223551501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb32813c90640c83a1f60fda1f01782a44e6b2eb5d2153645486ec5f87f7598
Date: Sat, 03 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791013233
