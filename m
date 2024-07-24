Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE43A935
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721781954; cv=none; b=jJLYZMaF9IiVBd9HMzPi8kwMyimvGKTZDL7SwNCqFl0kNmqs4Zh1sUSdqO/zEU1Pi7BQ0MhVYYyyE7mnD2rW5mPGivlqVHK5yutLuU7Xi+ejVE5OKRJX4P47emzBq4hyHNr2Uiwok5Ei637chDTel4ahILQ2obBM06AuzKNDhh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721781954; c=relaxed/simple;
	bh=+ns7IjGgwK+n/lutBdnltXzRV+iewy/YB8GfNxnpdYE=;
	h=To:Subject:From:Message-Id:Date; b=dnSO5JUiUIXguv2tVSav4Qpdmc7S2HAyLnuzzqbxU4VWPrPD4sPFqTtsURsajXdnrg5om5oYLArQxQ1qTbptnZtFfQefg4cnQN1/w6Kuu1ygOrJY43QBmhH0C4FCBK4eZlRsT85wfrFI8lZviIBrdwt82zsS8/nPnabDaZtJRoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arpv+dOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arpv+dOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4385C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721781953;
	bh=+ns7IjGgwK+n/lutBdnltXzRV+iewy/YB8GfNxnpdYE=;
	h=To:Subject:From:Date:From;
	b=arpv+dOOa1nNMR/3X/7YLmxl8r0vSrlZRwEcJAUUcGY0W8fcVLc7m9YCRFXcAdl67
	 UEw8bnWRszRIn3M/kQG86FfBlQAI7uTPMtkHOpnlHAagRoZtacMjY3yKuXU3uxflb2
	 ct29cspxmBl6/Rj5DQG1Yz8s6S0uxttArIljIOXlf3/i7HmiSzpoio3sHlnFr9M8fk
	 sxgfMqPpF1UYxGpzIwd03oWlavb9M6mPUUR39KFX54HphhagyTlPj35qMuLa5lVDS5
	 bf/IO0I+Q2x6VChG2QzvhVbN0595D4nISuExDKo7+/vAj3EQTi3B4+UPaJH1wHRk9F
	 +eKp4qFaV+U4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8912C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178195365.12038.16550435241883832172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb662a0255cff7fd705354770087c3e2ff3b80579de906bb22d77e784bc96998
Date: Wed, 24 Jul 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721781953
