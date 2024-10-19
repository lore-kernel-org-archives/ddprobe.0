Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1BD632
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729380354; cv=none; b=QCBgECK88fzFg3ir1E6+RbgAdrOjzC/wo41k6RZ+AiyC20CpDzSTZux66WrJ0rqoFtHqc1AQ34msiJtderHAnB0USvFuvyGRZhdpjV3HTPCIHkTYYgDjNwS/il6MunoGtU9m5mw0jCt7HQ9PhoL4ma0OxFFa35/VSRORcTadNUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729380354; c=relaxed/simple;
	bh=hme/XwTqGofdELX1MFo6VYUpkwFRFcHczjGRZrGf5Hk=;
	h=To:Subject:From:Message-Id:Date; b=RP4kWagaPVBnayKnlT7W6aIT4h+apE95+Hfr1jVjjQZQMtuswre6uNw+ogX8V/0KCzbmKUA8u1/UbWDTtUDiTe8h369TkvYhKu75TYkXsy9k5WRqYhTJMKUEL6dQGmfCRyKUFVw4qDx/G8XGY62QOXmhAC3LW6j7jM1P9zdjInw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVX5Sdoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVX5Sdoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B8C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729380353;
	bh=hme/XwTqGofdELX1MFo6VYUpkwFRFcHczjGRZrGf5Hk=;
	h=To:Subject:From:Date:From;
	b=nVX5Sdoax+7w2cVZmTSCx4XnutXakMfx2zALSrGrq9cB9IFrrmXqD6b8CAMLJlUM2
	 KTQvVC21HzfrqGtNK4fUvjNzIgTjGVgRo1duknSLmalN8CY81FIS6l27omy0Is8mkg
	 bylb7YGZLaLBA1+gmmG/MF8RCco3L2wNlPY9AZBaHFqlr/RA8GOkmCH3N+kirVzEP9
	 VEYW3Ez5H86YuVrLKENoyhMCn8q9yVO+zSjR6nmZaUn5bNO6SN5LeRyA62CnLOY1tm
	 014c0UcFzpAZ6047tbIgMpKMAfLpmRRhGjJcsFMUe5HkLT35wJ8aUOXVSmLPomxJBL
	 2KioJXFbQy9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600ED3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172938035358.6633.5645280428356076962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878cac689695289278db933abc450fbab545e68cd3071f416030a7899896a068
Date: Sat, 19 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729380353
