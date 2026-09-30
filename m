Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5376B4A8430
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790770234; cv=none; b=KkvAzghGYTRcWm0RIJXvm1T/KdHuZwRoAnRgeznnq+9bNa8AWugRK1dQmBU1/ilDZdTm0swfk75hkmNVKYoXkXfqMo24CUxgxWfz/eRApUVvE47Lfgi5HMYdINUUNOMJ/Us3zfNdwagpFjp33vAJMmCvSZO9c+tpxb3XNZfUNRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790770234; c=relaxed/simple;
	bh=Jp5ZsHtlnK2f3JdSzVK0w5Kt0Ww3o/Wv1PoZaCzd2Nk=;
	h=To:Subject:From:Message-Id:Date; b=VStdTaEfgs+o+ex9oJ5g6Jsfd8OevqasPT/yTu2wZc+vf5iul4CCRX6KGhSCDjkwn3Arx0dUHgGDAighuazY/QRoc5n7DWTS3zUX/78q/6S9IMgE0tQun56e2hAFXvqRoKPs7YfIPby7YathDHR9/6Bn9cvhgw9tB5eCQwLshtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cATpEu3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cATpEu3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DECC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790770233;
	bh=Jp5ZsHtlnK2f3JdSzVK0w5Kt0Ww3o/Wv1PoZaCzd2Nk=;
	h=To:Subject:From:Date:From;
	b=cATpEu3uNQ9c538teQhu85bNhjngqtLUmHieHpHccStsnCRHNpq+BpkfM72YHmDeR
	 ZcRH8oH9AJ7fbk8A0NBb1EIHZI2O4NUROirGaxHGycDAR7aGAzs2L12hjCZOWaPhgu
	 bW2sC4MuuvSoMvWgFNmOdukhklZ2hFR4aPPhLh53cLnhW1faeeYnA79ABI+Vj7Y3Ad
	 aF5vh8QzmajnlAMXcLmSY0LpNvR1gFCCaJsdBbhOqh3QbutvXU1vNmXcGUnccDzb78
	 EKWOHw0tevx3VWvUEsu+TWabebYhtXR++tYOoQgZUt3NicWsKrZMAYMorvPVR9gtNS
	 2ENLyiieVspUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A3CA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077023368.22508.15081784352027624845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d261069c3091917c32b2ec12cf0104bcc0dc7f750446ad88a0820a78618b0ea
Date: Wed, 30 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790770233
