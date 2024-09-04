Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459FB146A7A
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434754; cv=none; b=bX7PFHLKxG2QQFhh9J07sZSltoS12nOynAJMCJA/nmrE+QNefOH6MFqgg+NWe1M2fwJnEbqku62uqJd2U23pvZS2HBWchvvFLVDBwlYZXbvJJIY7tGj7LobAmEp47CzEf6m1YqPeQgN21aXvEdhOFGU34aBx1uE0va0vHbTrKCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434754; c=relaxed/simple;
	bh=ZQUGU2DoHh9fYRemQASJzN5+2NliUTG9VB6YZddHXXc=;
	h=To:Subject:From:Message-Id:Date; b=E5/f3O00Ezho//0lAjxwEONTzsDaf4Hq8SDjBgbQ/tNxOCMvRzPNekGrKyXwlygGtQo891fPKex7VSXObqPSxpCreIYDMqdoDNDVL+Zzv4DRDp5Prme6v97TOJqbohNcT93OmCw6ByH3vnngZ1fjksDWwJ9FhgkSg0xHPvuioY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np5vhY2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np5vhY2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42CBC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725434753;
	bh=ZQUGU2DoHh9fYRemQASJzN5+2NliUTG9VB6YZddHXXc=;
	h=To:Subject:From:Date:From;
	b=Np5vhY2ShC4ZdIalefSQvvHaRT3DDO4ga24MXVawe3Tk66Dhubx/uD31aa3KNJfU9
	 M3JbwSTd4XP9KkK+tSw/WjY2D4yv81StR9nmhJ6+d3euqoRq6ZlFIwhyf7gNCUUqF8
	 7yS/XCrNz3kFRiwov1XEW/3n/Kv7DLfu1YD2JYLhejva8+sOLbrj65DQ4BrJRNLyxU
	 eC6qb9ch3+NVWZNegUAjORowl6BTZlOZ4/rMOF8uRpgcz+59/N2hRC5Rd0reJURyHD
	 BceSqc5Dz0CRqZweNniAMApHPCx+GjJhOk7YTcNgGYqXuDvnwX7QNQaYOdyA1vdI/6
	 xsCYX7rxCyOgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A97CD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172543475368.7919.1748135019766197299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a353d6d5c29d7a8d350a4068094cd63bbd8284aa8f408d40f1f727e8a6500e
Date: Wed, 04 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725434753
