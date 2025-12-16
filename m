Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1B7C8E6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765847574; cv=none; b=sMoNPCW9xeddQ+c65xX2Oj/9usacxH/YkdV1LOFMi5unOSGh7AEzOCO5rdcLhWG3S3eFhbsuYVSJNqI8ZVysHCxATMFxaLXc7BMgqsr6bp9VBgTBfkuvczySkq5AN80OL/Yy6Sv66Sw9P+oFrm248QTpk/DvmP6Y2bszTodp3WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765847574; c=relaxed/simple;
	bh=27W5XnTf5X5+JkUIdAtGmsLZXE+i2TLEjj5hQ5EcOqc=;
	h=To:Subject:From:Message-Id:Date; b=ULhy86oZVyi5X/vpf/BgUr9BrdPOlq7Dnu9oH6LGw8miF4bbK+bMRB3RqMyiRNCRGAqJ7dWboGmoq4PY0GEjgO5oUM7LzugsrwiMJ8qa4Af2rENsfTtw6womnrbJaJV8loAKr0HvyaU1+5vA1uT/HAW1PSdXJHoHBuj5Gr1gbQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kT1r85zN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kT1r85zN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FEAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765847573;
	bh=27W5XnTf5X5+JkUIdAtGmsLZXE+i2TLEjj5hQ5EcOqc=;
	h=To:Subject:From:Date:From;
	b=kT1r85zN2l+Ee+/uAN4yFyf4gS+AAcMnq4YRq2MqJgeO7geGhSWsq9euCbvraTmgd
	 lZMbw5zbVNm8J1b2CcpSwIriwqbg60fBPxHj6m1/jlyY4kbvvQSAfRREUUSPUsII+U
	 E0TOWMuHt68S/I5ouOaqIqxGbUorCeYb2vnslE+BHPfVEFVvGkizLXZsVeUj4sbrmT
	 8Lg0+b7zo/iA/wsHIiLXlLd31MxnNWh4mTsWCyPeWXqCE0n2ZkQ3FXjOj/C7pT+JHM
	 e7lPLcNJgl5aT+q+0yj9IsaEUyQTEI7tFoTYXbrppdWPnLsnqhsncEArrNwcxamE6M
	 zJ0xwv5pwPncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C3D5B87D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584757358.22216.14029542261164684676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae05879ead55d7b407d9d5877d2f5d886052a79126a0fc32dfc296af212ed0e
Date: Tue, 16 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765847573
