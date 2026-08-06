Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA38429CE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786053634; cv=none; b=sxmEOYLG4zjPetXB22LATZfJAFlzsRfaUyT542ei71GsNqOJG0oWdetgbtZ/VuqMeUxL0jIqm56lwDZaKpUv0XQKwAOzG+sd0s4P3A3M91UZcSGnP04N7VCc0nDNUkYAEB6HEJ0FmRTpn+WKZ0BmJ+74loh5gZm3YN44JAufEis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786053634; c=relaxed/simple;
	bh=+fuKKjt/FDQg25oX3cUeKadljFXSUwm3qPl8pP8cifc=;
	h=To:Subject:From:Message-Id:Date; b=D/jQAaWoFWX8Xn8abR7lMJm41T3c1/Ea6J3d5K54L9QifyAPiXqxZiQlyDLakYJbEc6tGUiHaKuq/hNs3TcSsviG9KB0wxpA5TG/w72leR6fj1s4zldP01gBu1Rvh6IqWP88maRR2Bka8BrfDSdZ9cGP+r2S1yTXLZPOEBADukw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYsORasB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYsORasB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F26C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786053633;
	bh=+fuKKjt/FDQg25oX3cUeKadljFXSUwm3qPl8pP8cifc=;
	h=To:Subject:From:Date:From;
	b=dYsORasBHImrnYXlOGEVgJ2Hzg6sHslmt5pvRrOPLuVrkCJwV7zMRHjQ8BZEyNJII
	 MgcwnLaoKImzC0ZCDLwJcc/B+gShit5SMfLAKZXipt5J0o6BYEUx2MMYeec0OEVVzp
	 saG70FXpn/LQWVESeEjlqDFgdqtkKSR4c7/CArYszwP/U6U90ikgtXSuuVyAbtUz+U
	 u3/g0EesisIbE0+jq2B9RELSfMGeaaO0pJcNSoAQU+3CcMcOg1oBeodqaaFPp9spmM
	 FYZaMZySm0d/8qWts5O4H94IkRP5Xl7sB2G2zmu/TC4OXkyq46uKpVa/AM2ppFcNaU
	 pYwyjkEzJGP8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98BC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605363369.26177.17480840042190497492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678915c7102b4a0e5ab72eccb5ab092b2373c313f8551cd298d95ef053eb68f7
Date: Thu, 06 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786053633
