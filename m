Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6282C21D8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784263714; cv=none; b=g4wJ6PAeQdD/qOhDsC+antfrCms9UUg+DzIjWZVyLqI0L8Bpeqkn9akmO70SRJt0J7QVghX6BuEpIjDD5UpQw7lzy7QUwlvkR1GqWw1rsr3QJVDyf0MhyUNNiYOWHDDPpAVVMcZ+PxqZAm79j3pBdcvJMjA+nP8x8jkdzaIs7sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784263714; c=relaxed/simple;
	bh=aKoIlKVxXmgxf5m/3zJZWPI+LUw2/Krg659H6kbUd20=;
	h=To:Subject:From:Message-Id:Date; b=KhSiXR5QBZDQQoQ7XXLtrob3SK1rqRhwwUfbdZfbhr9jCn8yoKwHuW3RXG40b9166TVZ6mXP0eaGCYjZNjVEvn3ZqiDdUC3BpIld63CIW8UqD48jnempbIUM/Ot/+/gVEOKrVeBqXP958KKZmFkysMLaTobNycWvZLjFtEQf2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxBJLSsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxBJLSsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2294C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784263713;
	bh=aKoIlKVxXmgxf5m/3zJZWPI+LUw2/Krg659H6kbUd20=;
	h=To:Subject:From:Date:From;
	b=rxBJLSsr00R7XRyGrpcCDoODLeh6nuU0ZDlS/QyzWnxSfuG3TZampXyskoXoa9Lv1
	 1ztcpCndiH9dtPGmDYGzkPrijJvl2o3NnonO3RO/mdS/6leH9jzwmlEj+3qS+GfKFN
	 ePwrWrmIaKgp47NOtZBpeXCWOkYlOjwHHK3p66g23sVE59/DpzrMac11miGOD2HP4H
	 TGYK3qSFIn+yQjrLodVswz2qYQsC3rGMVzPYNJZDw6ywRfNHSsN3+v+D6HK9vPu0Cn
	 UK+0950mQIAZFRvsiN0vcE3/34LHF3OIINwqGrjySGkXaiWNdEt2HkcYpeEa/GYSuf
	 KH9/LC29f1thw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB7C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426371368.17715.13461775530165736545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19669a384fffe5f9a39aaba23134529177c467a224ca91a8d20d0b9101db8fcb
Date: Fri, 17 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784263713
