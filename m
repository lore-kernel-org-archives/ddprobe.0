Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317C4199223
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735037754; cv=none; b=FSw3OvzjCpRuC1cFDiXOpK7LEWNbpqduYZJ18jOV6OkudnXkCHMAy2f8HfAyloFCWrLY4vmreePoQWkqque+T2io2qGPSKuf9YIwz8v55v3CWthFiP5pZI4pxtz8T6Nr/d1zgWt5WVtlYobuxZgYEgFQnUyhg1bDTZmpEl1aI6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735037754; c=relaxed/simple;
	bh=xDb6243X46qbpnAAga4emZGKUhJvqA9/VMxDXK96GWg=;
	h=To:Subject:From:Message-Id:Date; b=Y7f1Jq7I6XC2H4vgB8+LXCgA+EYx4UMbhWnZcwzxC16VplP19AmnHlld0T3AQ8H0uxKbGmO7yhKB9QUSfMv4sQBbR6pKUK5LEMmReZW/2siAqnRBlzR36KTzqiAEzWOEWLEYWX1WmsylhgvKhJ3tsV1rYtzfy3/StGyWdEZiLG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z88/KpUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z88/KpUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8AEC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735037753;
	bh=xDb6243X46qbpnAAga4emZGKUhJvqA9/VMxDXK96GWg=;
	h=To:Subject:From:Date:From;
	b=Z88/KpUK86EL9cr3y/WbGjbZzVZrTPv1xVIJp/m4+5x/5apnLNQ5ShkmM4SP+IJLB
	 ieutByjmVJtVZ7QEdqygwRltQnGSjoatdav/Cd4q/B4WYkvS3qejc0H3oGJgZGCvOL
	 K8dtaJvSW/cpkbZABtcyW2EJPRQz6M7DoLvux3VCC9uyzTW0TR6CDyH+LpW7ywc7Q4
	 Ge9/ncZibOgGRQp79l/tUW64qDkrJlkEfMUMk/SRT4CDuEI1yzuD1Q8LQhYME2DfsR
	 JK2vjyEAosnWgubSCAVTc7z9Co+54pliJkIG/qI1yT/MolYcqZIkwmR0qb7Qdb/j8L
	 KcfHOO1iqDfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA1E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503775359.6563.1141569837451787593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994cdb384ac7eb209a759025e1cf6b88d487df787435a6c3f895f16428031c50
Date: Tue, 24 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735037753
