Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E6E19A2A3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781401594; cv=none; b=aeGb+gFlTo/BfkJn3WF+WiJZzjSsH9ygsMTIaWs93loj2mdVZNg+17BWVof+0z37ypab6GP2DTdaAHyT6NhpFRhg663G5HTfJAje5fhqgxKVIZEWsgWnEj7H4cQsp9QVsu/rCYi18cM6P3x9tC3wWuofW4Q+Z+UPYegNtbK7ZoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781401594; c=relaxed/simple;
	bh=V1PGfocx0cb5Ll2yMnyYuF4lYwcbJ7eI7F8HywZo6YA=;
	h=To:Subject:From:Message-Id:Date; b=kmU151ct+vsgMSyqj17TbR8ZTdRuRFcBqHVUfPicFBviUdASVVgsRva9V8tWmKRAp3hrow82F5TT3rk8Lx5gjE39I/biMXv/EtO87s9l/mXa50heCAvvNIa1xlOuIh6jvDfQnqY8glqcYFYYhFx7ANpcRrfOCzxr2T+sT8EC89w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WB66WmO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WB66WmO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE2DC19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781401593;
	bh=V1PGfocx0cb5Ll2yMnyYuF4lYwcbJ7eI7F8HywZo6YA=;
	h=To:Subject:From:Date:From;
	b=WB66WmO18KD3ctP3F9ih6hlEqKUEZRtsmogUegxSevGyxpy6kuwI/4PBrHlgxPtqf
	 YYChrDgqd1SwoFgKuMmIJKAE5farJRzpDckYfOMsuJnvh2bvMikGhAdESZIH723OeN
	 sBDoO8dXtfAoauWJjtQzfU7vlrb0kP+bAr6wMI4SY655eHD/c1L0ocB781ca+cadb8
	 ADTv2H6qK38Od8yMGuEzczMPseYsZP8BoOAdEH3r7tgPKg7LzdkJOZokc25LIQ2yVd
	 eGwb9qvxAbz/scN1juPpT4nEQD7RTrJw5EaQDNYYk0NrViyuTNUeO3u5gzdwbGdd5i
	 J1qdG6k4t48EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE86BCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140159368.8557.378065192655152472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6df0f524085ae27e9b0cc9164f1b1964247cbf03c6f7575aae4ee95762ae47
Date: Sun, 14 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781401593
