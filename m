Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D057E20CCFD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744042793; cv=none; b=uMEew+uygOAlTmR4oVrp7msZVC93ltq6TH3lhTnbo6NLYoDXAHQu458KcLchQkhHy8hio+Kp8Bzx/SNPKnet349607YF22P3piZNliOECGhL+vwxgn82U1OwGAr0hkZaXyamMknNrZUHBjOrp64XZ9kFYaUIJr29Jzj5+BlcdVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744042793; c=relaxed/simple;
	bh=Z5+3EemBmrRqlXt9CjS0ozDW0kiARxnZjighpzE+NTs=;
	h=To:Subject:From:Message-Id:Date; b=u1bE4+DWEqWgdLUgQp/O07GU/2ELxvkxTWT9byLhKWQazjefWy/aARkmlkdKM8EyAk5+OtkORHpSxslkEtwpz3MpUrMduBl/cx8WwV9Xw9XRWYfXni/Msr1wKqjrX0jzHPF2nXXASlT2nj6/TzlIXL+s0LiP7ayBtug1ZmKdHiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otZcVcrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otZcVcrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DD5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744042793;
	bh=Z5+3EemBmrRqlXt9CjS0ozDW0kiARxnZjighpzE+NTs=;
	h=To:Subject:From:Date:From;
	b=otZcVcrklPdcjq6etsN8R4GE0dQxQgnmsQ8eqq9SdxmtVDmZUl/e8u7zC4By4jjuV
	 +5N6bXS6sJCCAVkI2D5XV49X4uBvxqPMGa1ZkPjS1PzJzmuDvJ6sV7N5v0SZor5Odp
	 MgaCUOL5s3i0hdJ4owVGtHQjj25oI6anOTDs31soa+NOZmsUeqBdnXyWpnhJj8fIoB
	 DG3YzhtCLR4aSyodegtAbRa+/SMSoBuWUGcCW2c4Zn8ycnTBupfgRSHpxgH3p+4s1p
	 9qNpdeHYAYrf5wPyfpXUGqDNxoSvfo+9FPX3CHw8aKm1lqJygdCch5Mu43hWBbGJvc
	 8deU48HUH9HAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7B0C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404279363.28394.13292693145151508044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990b8c0c8e289d3f3a7f325ef5546855ac060e4dcb0ee332006bd4d5ce0c4997
Date: Mon, 07 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744042793
