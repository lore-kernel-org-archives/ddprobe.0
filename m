Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F1145355
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763910714; cv=none; b=QxtPcxrNzfiksLAm8OIX6sOi6fDZDzC/Rbp5aDbGxsaQivjsTiy9XP4Djtb7nseupEazLBxGXso4KEtld3tkUo0SCOuG2jaGzpvyUw/UkTspS3LyfZ9A+JK+jROShe4kZP1fH6qCUtiMan7t6ZISA6r7hX4QpQxdEnmyR+ZEDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763910714; c=relaxed/simple;
	bh=eJaLuSzE56nYBH1Qz6hyqQeb0iIlsU6uojAw4AGkhMQ=;
	h=To:Subject:From:Message-Id:Date; b=q3O45peN8xfAgPrm2XAT4+8cuYfA+8PQmyarz7GeQvFz2KP6PX3jZSV0aKAHav2OvFgtahGOYTEWbD7po+Msf1uZgv5sLIyoM+ha57qj2mJQz6SNS+41xrwM9lwhpRqQA/KafX49YMry/UINhdfya1hsh1BK4J0HhO0UnyO78eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWdUkDQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWdUkDQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3CC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763910713;
	bh=eJaLuSzE56nYBH1Qz6hyqQeb0iIlsU6uojAw4AGkhMQ=;
	h=To:Subject:From:Date:From;
	b=uWdUkDQFPPXtyvw1qBf1QCS3NH1DxA8+tfvTJDNFLiQfy0FCgULyd8TMH0mUS2SSJ
	 pUYb0XxIdBgwZKtZGelgY3a+W3p1pGUdNabJIqqdzHJ1H3Qz88mhjZYOsJFTYXMggs
	 Z9D9209Zm1r7aTVMMd1Z3OYZv7GZYJFiow0GzI2B/3bvruDNkt7Fndsqpn4vlVcodv
	 LGXsvppIgQElouTpcmfXMe9B7ReP+0tqhZ6GshHnWrMLnkt0cgc5MvPr5o9xdjrzdU
	 +FdoQXSVFCLz+1o/qSgvvvGtDJKhjbsngWihbXFl26Ais3x9MPf6Rt0olPxpDASM8x
	 wDZNTl4YwPieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F50CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391071358.26216.10102940701901385688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e012d38d31ab22f9975210e2ba60d59eb6afa8b85351fb8c399fe5796742032
Date: Sun, 23 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763910713
