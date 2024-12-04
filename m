Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDD2745E
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733282754; cv=none; b=rThIl0D4OX/XEOqQF6l5YZ3hJV9Dz+mdQa/+gJ8riR/qzbuvqB4JdPGbNsxVAxROEeYwDEZkrpoSMQ3HkUkZqpdlOtnf4pt+IW/NWNtfzYHjGkkW+8S71oW/KUwTMkV673kpZZaPHzixrFXmNUB6fHcCanUKFhwK56JyKJUsBy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733282754; c=relaxed/simple;
	bh=gszNFg3JHxzw/KbviG1LUn10eFn118wAnKcF/Q7/SW4=;
	h=To:Subject:From:Message-Id:Date; b=Gm9EMEoIc7HeRvdOppuESQPPm4IpOHeHCQGy/8TpeUhtHByUXR2Dsa1hYOmKyMja7i5qtuub4or4uIt6A+2Vr91DP+8yxDSCjqWJqPxf5NMtlwYEAtLODH7JVVtemH4UNvDNyVt024d1macT02xCuKyJXiyJCn5jku5lhAkw+Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEIDnDYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEIDnDYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F1C4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733282753;
	bh=gszNFg3JHxzw/KbviG1LUn10eFn118wAnKcF/Q7/SW4=;
	h=To:Subject:From:Date:From;
	b=vEIDnDYAkSduq8rHhIoXJ8pf18kdHkbu5uXeMpMz2dx4UOhrnpy9yq47YsBtyTWPy
	 uS+sD+darzsstamk4QHnL2sTxJR0l6+ZYDRvLTeiKJP2MVpc92d2++6L2ZbFMj6oxC
	 E/IZGBiJV1qclRqRzYm9QllpIIKFZprWqvw5gfc7pzvhM2ItJcCgjMc+SSS9J5D7Fz
	 qxFJNFnZKAgpyrRKJ81Fc/yvqfwCwRULxihPB74vhPq0symjQzuMCgqz/WyHEyLSvC
	 54wu1RuCddD9sn9iM/pKbnF8SSbhHn5KTUtungVxBywZyfweqvsXvurbsYh+J8wBKw
	 /mmMx/FNT4/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E87E7716C
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328275359.1240.18124879390567106384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c58b486b24822c6d922c8fe0db4e3f32a57b3e6c6f8da53c8a605dc7a855fbc
Date: Wed, 04 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733282753
