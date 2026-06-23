Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CB93D34BB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782213994; cv=none; b=r13EWvKL6xvehUJ8XVi0qg920AZoguL3588Q5mOQJoLKV8Xtw48zy5+ZfoBBCctQhkraBpgYN1DFGWRG5Tc3tqgC58Ku/1eHRS3GRIjWqpfTpfpnSwlEMqxkV7jQ5SEwV+DBaQhxe9gG//MZOWenOu/XT2I78/81wd032qhD8Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782213994; c=relaxed/simple;
	bh=Rh1Ew2UuHOjEu6IxTlGYy3ELtRoElekQsAKBIktSg+I=;
	h=To:Subject:From:Message-Id:Date; b=GOKEO8c7KGVSUqE1ER+c+912BGbag7F1JSJLWKMMS2SDN4ZqMc/F0pVOcTcZAQIr/Q8IS0qjsWX+EFbMoO84coHULG6sp/2LsMDIPVu5CEK3PX0hG2TbrEJo758Sa6qTa2Dg2FfXzfOZx/N94OjtTnwX7oliP5dR465hKfP0W+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODdH2Q9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODdH2Q9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85EEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782213993;
	bh=Rh1Ew2UuHOjEu6IxTlGYy3ELtRoElekQsAKBIktSg+I=;
	h=To:Subject:From:Date:From;
	b=ODdH2Q9pQ6tEZrlaHzNzQjD3M6HX4kHP3YMMbpAciFgUEQjVg14xOhPAqa/InVLdI
	 M+s8MOMrl4+YjzLlWMH8vUCPOb0eXA5bToqFgBKN4nI5tuk8oaO0Ek/bPL7zzn75zK
	 UMGLfWgAI+nKxAyWzpMkmrMe0vt05tmj+/a/8uJw2upxDpazRrhyQ5GvVOKSI7x63x
	 shIErXjvZNttnNbcvZfZgxFKuqfmZ/sKW6C5kDqhsM1fEI/R/FrGxN3L/R1z6y8Q0b
	 xazYzsKlag0YfM0YlXdaYjNfTZdZ7gE/G2ExAE1s2l+kwTMebvcCvNeQbGXPgwtGw2
	 7rK63HX6+6qKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F9ACD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221399374.15670.5515476524332719872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f12c86c6a0d2c8f47173927f54524a587a5c659b033f447fc5d4cbb6ffa4b4
Date: Tue, 23 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782213993
