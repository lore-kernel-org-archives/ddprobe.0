Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F56927A104
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746716994; cv=none; b=HTEI7JUGNPXR663pgJKTU+t8HRkyjE8V4BIGiGBkHpwUCE4P7aPJ/KoMiqSVbuLl4plPpl2yG4IaKjEkLR2J1v81rkjhZdmJENTZdYvWKLaB6EkDKLoZLdAoUFnWrudX7fowznxjBMr0MCgqdugqPIEcS/yqvH47BQpXHtya5i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746716994; c=relaxed/simple;
	bh=CT8lZHKTudHtD2dJYXgilvKTJtRfdN2bWwA97MafPNY=;
	h=To:Subject:From:Message-Id:Date; b=NI0p8NbiwG7hoVsR+IwHOmWHRDVl1Ff2FnaMYA1/HyvcfA0WrRApPR25jnj0UrUkCSrY5JVIH+YR1XJDjIW1j/0BPMQFD0W9w4jiDT6yqg05D3x+4Hze9WM1vmQWQS/Cd5KqmUyMInbNFr59d308gWgiYsT+aKlH/jZ+f/X7GM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUwPySlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUwPySlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D5C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746716993;
	bh=CT8lZHKTudHtD2dJYXgilvKTJtRfdN2bWwA97MafPNY=;
	h=To:Subject:From:Date:From;
	b=cUwPySljMg7O+8WPsU4Iw1T15SIDEbrK2Wozb56dnwnntlgL0UNecl1iNBMe6Yoh8
	 Rdsgf0KBX/UKkcO+XNa36YugoWPUiapKJF16Ww2T5IgdwLLa+rLLR8jyJx93JJak7e
	 8/uXFN0n7DUogg1OYGmw98T6p96LgIX8pbn74zf32ChHgyZdplEJiNu+z5q3VbVM3Q
	 Hajk3ICAV1SVeKnhlM7ifzU5VOmWj+JoaKn0b94sq7DXUjj6+/YQsBjJn8aVdTe60N
	 RTIKNyKFXLgQals+3faG/5rU82jalMW/uel1FUpwfHFgciQYEh6Glp+bhaRt+8Fvi1
	 lZxHtYUVyhnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92089C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671699358.32102.8574232062628006930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475234ee3b2b2821cd072480ca0b1ad2f094721f9c0809ceb9dc66cb33a08afc
Date: Thu, 08 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746716993
