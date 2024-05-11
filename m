Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464B024B4A
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715400143; cv=none; b=KQJW9v1nQiOhe7UfI7RzV8WwsmrfUWoJHXyQOBS50eKvXgXJTLkfj6eomngnuLWHvDruYL0AKJ5iSeU+uI2eWPoK3e1KDH3S36Ky12KMKanaASDjtz60u1Xfw9Ti8cFjyCwV8dbmOMS7pKX9qU7W9YU0oxGbJN4yYTj1X8EdEaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715400143; c=relaxed/simple;
	bh=Eird13ygvjKZNHxVukHn6gBD4Vu/cZXKeRgrsLFcvkA=;
	h=To:Subject:From:Message-Id:Date; b=GQ/2fy1yxujU0HoIielzCVDd7tGQG6yjNBOyVqi/tvMsjk0fWeJW4WCO7HZg57TtbEcg+lexBwcH+55qCKFvQlY7S4rRT+KzzKH75I4XO357ATCWb8hlCaxSwZfs4F9Z3O9a5SgIonLNA5tvARv5nWTxp2+fDI+rATQDD+NUxm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLAqvvps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLAqvvps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8298C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715400142;
	bh=Eird13ygvjKZNHxVukHn6gBD4Vu/cZXKeRgrsLFcvkA=;
	h=To:Subject:From:Date:From;
	b=WLAqvvpsO20VKPAa7l3LriMwdRmFKUgkg7Y60d0HiDRPQ2LMDcDjvH78obH+yDCl9
	 Qp9C4K0LwkWWHJilQp506QJKW3LV+yys12esY9bKvQUEZA0+WQXsi0FvgKNpSA5xh6
	 KWZNO/CVeGw8PlDe4VGjwvnqLUdNH9fSM8XEZoEkcAZYmhh+qc9pC38XFgEFdlXSWV
	 Sd+FpsIqnk/P+hh9O/i1KR6Z4K/MTcv1PGRgw88gvXCrIBnLOdIit2PSN8WgkVosYH
	 fbKT956ddkU36Y2RSJsPCtEkRBbo2ZlUola/Au3t/D+7KZd1o1ZeqV0yEQkmTba61u
	 71EgN/3Jsmb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2682C25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540014278.30497.13620141002437329500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f29d8244a88c13106296b03906a660c3ab330a3c2ca891229a65111420ccf14
Date: Sat, 11 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715400142
