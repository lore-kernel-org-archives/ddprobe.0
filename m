Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707AF18B1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718695163; cv=none; b=LjdqBar3WaqIMwgpUSS9ksIcNGL1Nb2qLLyO2JQl3UxNUmEGRRNu3kDaO30KHYg7Jl35Y8RBHIbjTGBGde0UetlC+9xaJMbBvaBdt+JGje8kB/KHebeYXoY8ZVX8m66mWoyKAQ+ZopHgdiWfAehM8M6kPWR0XDVHMDCMx1JwvEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718695163; c=relaxed/simple;
	bh=fKmDEvDxPwTQoM+CHT3sqZZ431dVVP0AmjTP6Mw7ANc=;
	h=To:Subject:From:Message-Id:Date; b=V0bq1pXDs5ZkbZ3hjeM74Q+UmxImFSLMhbE7uFw+1G/j2HTQYXGKtXV1xEGZ4xUPnluf36DjPfM2yJUWkxWp1hpEvX++cK2wLuTuAJpXF1nJdT7dLY6hhOuEzTUoW2TQFQzdCAi2caf7LOXYWuLOjxD9q2ikHPpk8KBdI2U3Ka0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSclqJD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSclqJD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD689C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718695162;
	bh=fKmDEvDxPwTQoM+CHT3sqZZ431dVVP0AmjTP6Mw7ANc=;
	h=To:Subject:From:Date:From;
	b=lSclqJD/Hh5FpY7AF/Kvo7vEr/0UR0B97qIo6/cRDSCxGJadZM5nGUu16T4wTOqyX
	 WrUHnznvRk1a0lrruvrscmY//NpPoTdezBFmeeg+Zdhxgq9ImS0OhFpgjK1R5X9O8j
	 E3A/3h/0oFHmZj/zY+FIgjNtgbBXOnZC86ooR7TR00Dq4LpPTi0kZv1B4pmjlhGU1P
	 mY4Dd1F0adhLxmDE2pqCbEuyGNUmyRpCyshxIILE+hgAX6Ju7QFpf4IcvlOw7rqZtW
	 LLQwbmfHVBQ4TlbWITv6P69SQH9YLyjyFWdyrFA/5WoGusbnRT3oEZcwL7SGygV1Wi
	 oOuG1s7YbzxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33FAC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869516279.18168.15888555855169978080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47a1b460a2a9fa9f0233788908ac4efb40a4d0c9f461344b75dda34b21f81f3
Date: Tue, 18 Jun 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718695162
