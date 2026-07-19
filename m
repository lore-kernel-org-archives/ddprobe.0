Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495EF433AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784467714; cv=none; b=FhZIFCbE9mO77dno0HQiZTOLWdAVvloIJ9cSnjkmdoSRn8/kvxAos5bCRQCC7eg9Pk6NM9iGDkd6vGp9cJ7T7phbr41OVEyCf+Y6Lu2Fu/8l14sEeeB8E0/EGWGOHxOi4IpHOv2ksJSarHnhdy5Zcsgw4C8BCW37Q76UxEr3sB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784467714; c=relaxed/simple;
	bh=Wy0xbHUe5kZ2OViEsqvM80Qg8Z1XwAEhbhjyoxurImo=;
	h=To:Subject:From:Message-Id:Date; b=Y0nroxPEJ5kBIyX6h6I3HInpCPItomPZw/5iuaPsKyAkveaAqmYDrAnKHacvZ/IrmU7/pj7BD/mjrjuesW5KzbSPk3AfLY05XzDhU7jv2LqqEkbxLDOD9Td9w9ZYSA0bAqYI0dpqlQYOW3Eq2wSxfuknn7XC/NzlpTDCS4tVx4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzNeMAVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzNeMAVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D342DC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784467713;
	bh=Wy0xbHUe5kZ2OViEsqvM80Qg8Z1XwAEhbhjyoxurImo=;
	h=To:Subject:From:Date:From;
	b=YzNeMAVXzg2oDQlHeS82pi1b/sZvhTMiqxFeY2JTf2NDR1Dmttcas50//PX/xOR4X
	 cODK8086xE4Vfj/JI/1GS2QUy2fXWJDochMyuQgtcJtZJ2weGqibLahQJiB/mhWB4m
	 /fggP+dyfWvIKFH1WIaAbb4Pb5EAvIVWy+ecco7DwGzbi166RdDDm1ZHvaOdK6VEYV
	 fRlqT6LWt9ax5LD1czt4mqg62Nv+Yp/f3TZujJLwaBeFciGEstgAwh6D3MItPeo92Z
	 FCJ2vW8g7u7kTOP7TpbLZ6ueNjGcdw+fgIK3UvViViVfEgLTqvhjFNsAU19d+5h/Pt
	 Os+0/KHgP9qTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF2BC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446771369.11847.16485235416801149587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e5207109684e779b2eb5de0271d0f3db2f2a151c1fc1e21b9945edaae54a604
Date: Sun, 19 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784467713
