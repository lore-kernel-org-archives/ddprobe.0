Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390B7208A1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715619743; cv=none; b=Z8xNgH3tazqiFavYD9e8M43Go1oJi8KJetgFlEs1FgKN8Ogk2dbG2amj3Y4vn65HKA6WhJnnuA+o3W6q3IToWjz1wXCxSSetnA31b1oUPysBv0X5sRKQV6G/5ZfeKbke5Max/5tk01VFX5VT0Zn2774NjondMjo8+u00QTF87/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715619743; c=relaxed/simple;
	bh=u0Qe9NdO4niIHcDZAbmsKhnNb8yrhgOJ9dBJbMKMJ7I=;
	h=To:Subject:From:Message-Id:Date; b=UXqvkaGvDBuUmeQtBqwhT/NYDK5AHQ3wiHWqet8N1dO+tyuBuuZiORiC/Il2baOFibWw4DP37SfAJgQDWJV6N3o30DZZaoZU5i6YIuI2YzlXoSXDAnFywpdPZzZq+T7ILnQzwA65Y6bbi8oJQ7cnqQ0p1iYNhbZ2jgc/095TKU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sadZqtPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sadZqtPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D087EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619742;
	bh=u0Qe9NdO4niIHcDZAbmsKhnNb8yrhgOJ9dBJbMKMJ7I=;
	h=To:Subject:From:Date:From;
	b=sadZqtPI9HAUR7NW+o+KUbs/gPfJlPwEsSZFw1dyj/UwOYzlVbk3f9rEkz19CvxDd
	 KJDyhO5BTLowVNKA8t3uK0ICMcp7/DqjXa/VzlQdt9pliDXkxUdLLoiFJ1Z2YiX3EV
	 UR8cioI1I9BXQlpVxM9TJrh+8wWKOoYLBfFoE++Xij8rYZvW4eLaQSuVNPR7eCW1qg
	 B1UrNuc0N3IiqS17x84HotJHzzsQUsEyrLAX/V4qBh12Valssd2goRzqeti1Lfj+In
	 O1BZKpOHQOkUkV88iz0u6ZdjVSvyJRB8XCzimzeExKqdlVgdQW6QKz+lP0VPnr3OI6
	 hsZrODEi2AatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F9DC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561974278.24238.1496018094822563262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17185ab1bf6b363c4f91da58c5047c8681edb41b0fdd8b23bb13a519249f3da
Date: Mon, 13 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715619742
