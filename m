Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C91B4A06
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754596194; cv=none; b=VWip3dWIYSbNtPkb00OAqwSnHE2bcLFHYhSYBd6ERCwv9drMGsBaV38JNFlwZvVuuKdd1Me93jr7QOr5UNsiswG9z9yYA8wVujz7YhlUCNUDv5bjNTVEuQZpoNAXxVyrQ3UHERQHN9gIgF4GcdTodYf0d2b+Y0+iM2wI3FAXVNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754596194; c=relaxed/simple;
	bh=nA/WwG34uH8F1FQZfSuB1LqMdDtChEgsU4At1P5hLlU=;
	h=To:Subject:From:Message-Id:Date; b=n7R4Aq5l1INJDhlKMImuyrIV2SR7L+XnBpI7YMGaWaKwMIyjTCjEEn5NmunjWLyO0mhtX3msV/CIrQdi//ZvhL3viNJ2DF5T0BJQPkvX/n21aoSKdFekgDLbqWhMMe+pClEIk3CQH2F++G5TlmOO/Gf+egMyoMPMbttB7wHEf1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFcq0YTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFcq0YTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7728C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754596193;
	bh=nA/WwG34uH8F1FQZfSuB1LqMdDtChEgsU4At1P5hLlU=;
	h=To:Subject:From:Date:From;
	b=LFcq0YTgef/sYHB3sqXswURZYoqGofqgsg/XtDt0nIvCFEeoSvCI2DeF070h0QKol
	 qv0wHQtk085xDLgrzBCleNATmqr193umjgWIMZ/CKIEUJFkssKpvS/5U2FxO8M8RRZ
	 eGSlUf0gKYsteaZ/7fImfbQpI97mQN2EqumQW7czA3fG5EwW7eUFEzTfX+FDZRr5KH
	 QakufKg6lnRKk/JQBAaYEtvJQd6Xuixlg0RkdxaUbCLnbzpl4RK/cqm8I+eWPFxocX
	 zKTEAUf3V6FPjBhnaYk0WTpbco5YxjTcelsSpXjuwEZk/QRDsZ1V7aOZJxHG6+sawK
	 cJTxYI108rg7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA95C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459619358.2784.17256416232508174257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361c11177ff9c3f1a38ef41c9c7ebbf77b8254b8e945e3c255f90fa1f33d306c
Date: Thu, 07 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754596193
