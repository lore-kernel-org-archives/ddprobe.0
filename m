Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38222199FAB
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724246754; cv=none; b=sPru2pmvokHQYwWTd/ZxvbiRDWu7tUayjvVBG17l1vUkwxHbT1NF9pliOl1vPRmmAR2eHJf8CEa8bBID9L6oNAloBw5IDJvMNkWe8qF49Kyu1GWPVvi6W2C+VqXGBGbULnkQaVanFQ/A5zPnFRYD5skprMG7X37ELuoawtSR55M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724246754; c=relaxed/simple;
	bh=xGCAdB3bixhR0wjA/s/ueAs7pfyeloxo0vynxXJIf5I=;
	h=To:Subject:From:Message-Id:Date; b=V+Vvdu4xvTEPS7vRWO0x52efyApzi5O3t2CKVc37CyJ1vTDlqcRBrMSTKB31axsCAurFM46fhH2QUyafWx1pUyRdlJygsSc9v4tOCga/dkhTTqsbG5ELQz0Lao+vZ0ivTLqy1/Y59A+qdpOx5i46T5O2KjEao3cI/ys6PMyUmcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqSJa62g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqSJa62g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A9C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724246753;
	bh=xGCAdB3bixhR0wjA/s/ueAs7pfyeloxo0vynxXJIf5I=;
	h=To:Subject:From:Date:From;
	b=iqSJa62gX+L4qjrZsMfTCokbBBLw/d7ykvK2nBISQBPIpShVGFiIqF4kJbCXZMeY6
	 1diIkMnvYNXc1t1RtrMZJLGyfM0Fm3hwBGW0j0ZLHCWdJGlyHvCTIigqthOT18D9ei
	 m4aumBUKX0KWPKN0BD5mLoxwohbkrudi4Y1rFcX/DlBtmw84wHVm62DcvP/6YyFGMV
	 /ucjywN6znIGEt0V5+MUr5l0u6QIu4ZFFisqiQwxkrNvypcjCfysYMmwCDKSElKoTa
	 phswtO6iBBzM7HDVEubBK1ilY3+JE0QSUudoFyq38J9qCey3c6Ebx0ijHrI/HSoYww
	 Rso/eJ9ZbBIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98430C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424675361.20952.13470400089403551880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ffaf7b17ff49fbcc7706356f591bba51b75bb7991201bc03974cbc59da33fb
Date: Wed, 21 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724246753
