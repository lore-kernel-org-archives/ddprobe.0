Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396FF1E89C
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755044994; cv=none; b=OdffmUKlCrxy7aW6wGXuzwXeb+jDUU9+D53ha+uKm3OsAxMrUHRgUu5hsaF9CGh+OjaN5hndi4xuskNVC6XrBM0jTCb7LQyQANmDz1OpAtMrrBZXniOatGM5u1kQ9IrGpTqouwymSMaGVROd0OtK5vO4yj9kWJzr6FVQ0QRSwWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755044994; c=relaxed/simple;
	bh=SCDtCpKo1NjBKpELuK6yW2unt8z4uqrkAcaRDw+Xmbs=;
	h=To:Subject:From:Message-Id:Date; b=Bc9lR0GmeB5YQNYM86iXC6M+a0zzO/TlOqmNx+tiIU46NLvTz0wMWm4rMvM1FXZJ0R8mUeHXi6OGlPZPaObUN2vgDxdLZwUVjnnV09nNSBugOOjPEheXPYJeHElq1X9O9jYQQ0wJTDdmdchIvoYdAnIEOnqb+NrMdFuvSZlMqYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMYmfHYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMYmfHYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A2C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755044993;
	bh=SCDtCpKo1NjBKpELuK6yW2unt8z4uqrkAcaRDw+Xmbs=;
	h=To:Subject:From:Date:From;
	b=aMYmfHYFcvMMhb6D2lQ5X3e8gOXiTOHJJ/zsiBTKxX4Hwf8/Fk/vDB80AFvB9LHLf
	 faVUwDSlFEMu2RcF87cGRV3RaLLxUdBVT5k4QplxaCIkfstYt5jWs11ljOiWqNDW3Z
	 e0ohlj9id+ie31zWrr/nOffi+WrKAkHIcyuQTC3A9QajDAZnUb3NJKyNM3KgjGz5iN
	 0HYDY+retLTSNJV+HSGyY4ItAmdr2JanbbDd3OVCp43wKKgo+2lf+6QEtCypFwKc8l
	 MYbYnaKdDfjynXlif2Qv7LQws6TY4B2iW8dC3hueUiivt2GwDJDDhy3v7hhJlgm4S5
	 +ewyVStF/qhhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E53CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504499357.32669.10530620623617219619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8f75e16f1e461d702fe2e58e64ae18ebb071bb22a66483c700ef8b911799ef
Date: Wed, 13 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755044993
