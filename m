Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A2A3E49FB
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785848434; cv=none; b=MRDXFS/0gc2z9zKlk6KxtUDGYgyyy5TO58ybc+ZzENWoVuMG88pUqRB2OcOiSLQ4opE97Ovbv3bgTop7/D0nMX5KSOD/y9U1heQyZMTqVwlXJYsPkTibOqnUCc5QIU2/qaVXFjqZpSCABzUi3QI0GM5YXKV6kcJUrsMncS1FlxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785848434; c=relaxed/simple;
	bh=gsKs7zls51FJ/pwpD8hnpkVuoD53Wx8obdt6cusnxkk=;
	h=To:Subject:From:Message-Id:Date; b=N+M1OzMX45dbG7UP3vPDeukMEK507tm0p1bisnSkQKHln60kYFWi0CGIs9O2yGFRh8mf5Eeh7+/EQVYb2o/IemnjIbTJ9OTQGh0bWjt5KdRIuKmOoEZfMAUihP5oI2ZYHl7MxQlSBEiBKq9E0bXuH2OPf2pHTZZvxVM8CZ2v8OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbIQ7IfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbIQ7IfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1044C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785848433;
	bh=gsKs7zls51FJ/pwpD8hnpkVuoD53Wx8obdt6cusnxkk=;
	h=To:Subject:From:Date:From;
	b=bbIQ7IfAx8xl1CmjEhutlmmG7W2yURcStGtgYPsdxsDE6VkIOx73ct1BdPSANzHgl
	 t1PHzrSslPaA6ESH/+dYr7lvPQgKHln1pjR/bZ9mTPQ/R4WbHowS5LHEOzdIcl9rVB
	 vVuXhLFr8vyOCn1PzoyEcRje9AfW6BfPVNMrzh+ASiuJ4VSNT/ZQ5oFLnd0LBpvGuF
	 fVSn5mk+4ID2GRJb/p6/p5gzHmdb/vsmeeV/bVvNp2mFZB4h8gAAtgDoA/UhBiAxbJ
	 yw2F1jpB0PAzx6sK6gJpLsCj64K/te/EENUjczbybSG60bIo8w8++qauv8ybWOVB+T
	 iwUmTZmNce/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B9C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584843369.14108.7144144618877190714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e5b7da91aaf127666a6285eb4d4b6370405d7576045a73a294db6d14314010
Date: Tue, 04 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785848433
