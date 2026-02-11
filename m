Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C31C3F0C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770814494; cv=none; b=XX82ySH+T3Km/6jyjXzwQXtoDj9EeU1qAWSF4OaFu3xiL9D9hQykHgEUykt3PU208CPkp+cc9EhAH3TE3TdXFTKYujaoY0IfxHqYP/Dh1vhjnfqIGVoGIxC7f4ghvVQFyOjFLx/t+esTfArnyuVcse+TwATgsB1Vrs9/AFPzfo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770814494; c=relaxed/simple;
	bh=y/EDJvBeKYLtvTrglZ7tJPz5ozdWWoa/556FFrnsuV0=;
	h=To:Subject:From:Message-Id:Date; b=mG2iFOe24utuCeGP1N8zVKY4+pwtiGEuxIIUOhySj7cvXD0i91n2mm/GQuBFCfvxcZeC+NEQDaSA7CgQvj3iSCONsJLY1ZKRgI7zjvQWwfQcUAbRC3xIo0vn2EwUgCY5RUq3kY2UmT2TsMHBJ3q2Zi+6AIiw20HdelhQQzaoqbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DchNHN/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DchNHN/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CB7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770814493;
	bh=y/EDJvBeKYLtvTrglZ7tJPz5ozdWWoa/556FFrnsuV0=;
	h=To:Subject:From:Date:From;
	b=DchNHN/PlgN8V0OwcVxI/UrwsI1n5H5j1axSsgb1FgPk02X/tmMUg+9UdQtuzYpRM
	 yLtFprhb7rWzi6F5CD72CZ1C79TF9nWt7Whgk7DMElddN/SfozOAbUXSiVDXDHxaFk
	 j+Z3+xME7K03o2oDyLxdMzUzHxfbapkmQus0Aga5atibIayJ9nDVO+NphirE/La2kU
	 Eh0CE+qcaOgGnQ6KfVDZQ2YaUPoGOP9EJVco2hb4+fsh7LonUopctTmkckr+x+wN93
	 jliaxe8JB4EP8V+rEvg1bx6HqqXqS4U/IApnDmpXVN7ythosYfmNVSxHcCl1ozLe7N
	 xNOKFzRuVYIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D09E9E301
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081449364.693.12470234667205406903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c776804b5b8ac0c8ecf6b98165aae521ce98e4e7e0c701a2e7b17cdd72d8aa
Date: Wed, 11 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770814493
