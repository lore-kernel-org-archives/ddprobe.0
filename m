Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969193C584A
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785854434; cv=none; b=edymj1K/SosSTFNiicVyTHMiXp6vQfltFgiDGOct9VR4fep6GWYGPUb+OFWTnZg6II7Xx/Z/ksWi8DCobnXIZO0ayHacOHuSYAtNVgQ9dUS84AhhBVS8uLa89k75/tY0vZifv+dPDQSeaKdHhr9pYPo2+JoMXc/4XKUh/0ay+e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785854434; c=relaxed/simple;
	bh=8JZu8RT6d0Qqg9Ye6Puozx8SXex1OzlIMikTMUAUhvo=;
	h=To:Subject:From:Message-Id:Date; b=YogbYmID7Mg146eo3uxv4uPYfCyjZWGoHxa6HglnEqfhAuUCsuRqurW7WVBJX4mkxDCk7XfjoF0BsLvivvLONxDv8X7wknvViwQ4W13D+Z9GV7GpYNWLuYwjl5rMbpO3DDure0LZlktFnwir4MC9JTs8sN6rqInZmsOI4jJqDAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoK0im77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoK0im77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2109C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785854433;
	bh=8JZu8RT6d0Qqg9Ye6Puozx8SXex1OzlIMikTMUAUhvo=;
	h=To:Subject:From:Date:From;
	b=MoK0im77fDQztkNGnr9/UD8H3wPsOFjxKHoGF/ZCApJfuUG4V0mtSXZ1Mm/3AYPdq
	 qbytbxM1zyn+TuZJzKog2nTkCAxl7p/jQ0hr6GR8APzCjVVbfHJrcIMaxn//+Pi6JK
	 38NlaP1RH398GKkLO1aa9EbwN4GitxI39cyaDer/6j8Cjzdx/xbIveLd9+WmrZs3Ov
	 Ewbf42bWvOpkffKXwiHbtiHLujgiPtz+je1SPgv2k3KdDRcTTIoh/y7cy702RdLxQA
	 FCNUNQQ34TiiQC7YNLtYhX00pSI8Znw1nhyHMblzx/BEq2hcn8PUXSI/MvDSEt2f1D
	 o7yjnpSi2i58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE572C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585443370.2966.847550998594187857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8863af9451d6d1859f35f3c8e35bb5ec1654a1e8d9702c4b58f57927c140f5
Date: Tue, 04 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785854433
