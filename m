Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C771B4248
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755088794; cv=none; b=gCslp6hRXlSW1OeMNWNHvbFiNgsu1Sk0n1pUDBi8j2kMJwKhgVzjWT/i3ZbrcjHAx9hflaoc8fplkTLTJZplZm3ct9/BkmF2tbipa65LPkR3JbQ/BJz3y18ctPHBzw3C8Uw0UcnGYr0gJeIBMCL5+gn4CDGrDK49swqBLAXC2c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755088794; c=relaxed/simple;
	bh=RGs4dIXWbQaST4cRbXzktOB+G20sZFkFXLABwixhPZo=;
	h=To:Subject:From:Message-Id:Date; b=pamlh7IalwLL3XJRgNXg9vSdbCyhwsNVBpqoT/+AZb4f1ldWLAYlfeUpP8wSzotaTaXST3ezOs5BjAq13FSy+p3nAqlJHGpcJ5re6EMym99I70d+MdHNuz8jIRmHla+NwG3VEo4v2aPKNDnuLosNQQUDl0p//iiObjEEK95/cPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1tiek5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1tiek5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755088793;
	bh=RGs4dIXWbQaST4cRbXzktOB+G20sZFkFXLABwixhPZo=;
	h=To:Subject:From:Date:From;
	b=O1tiek5QJTuNMkz5pE+up4YEGkhG2K/D6YdA/PZwb2eXb3WHUP9hm9KamVwDv7HvW
	 is3JpRA6ozMAYmYTGIcIa6TUPJdVt3haTeAAh2hLu0Zawl/AeWZ+2HCcFfXbLiU1kF
	 fMiEuCeQZxE6SW9aEQZ4VwPeuhsOo0B5EkeAulCcoaJJi5R+SP3EoOg5/WPJurHsrf
	 xf+8rAO99L9Q9l/MGYd4LBdyEP2iLGnhaRzQ3NsrORetiWX5jP1jvD21debEIIj0tl
	 KdC4YDBv5qnwlAMUlKq4ff+vrytbUeaSCAgagzlcbFnxJ8ydhfJ6+mvUDhawsQZnfP
	 UIhub2482BRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF1DC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508879357.30292.3220396626017787525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c278952c39ce6cad99556eb84aeadd5e44bf5c4300c6ed9604ffcab60e34a510
Date: Wed, 13 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755088793
