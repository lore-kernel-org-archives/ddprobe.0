Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246FC22370A
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791127834; cv=none; b=VLdACSox6azsLqA6icUTH+wxcmDNgM1K4S0ZEUCsAX7pbVShRG+yz7eQ+90VJE6e7Bd7nk/UlvjqjJoWspXVujsQwZanwf0M4ARnIHSdjdHGtbhqZyq+7jUZpMeY8r+5/1bNDWzUQpFt8HY17lXY11BaOwvuhdhwpbLCZOd1EN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791127834; c=relaxed/simple;
	bh=CHGDIvE9a8ecp+aQv+oIUUpyDGoPAExCcrqf2mOakcM=;
	h=To:Subject:From:Message-Id:Date; b=g8XZ1iQbVOToB3woFLXjqXdR3/4NwrTbo/3NmrSmq+ziCF09F62AO4QwKM6+s2AjvnxWW3l97g0ncq9TLFGmO/heBK7++11CXZf8JoDI5bDFOm+idDktkgvhl9g68oM7KSpGpHDssBXy87J9ekE69qDPtKq1rcYg6PCZqSGyNVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnhFmF5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnhFmF5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE453C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791127833;
	bh=CHGDIvE9a8ecp+aQv+oIUUpyDGoPAExCcrqf2mOakcM=;
	h=To:Subject:From:Date:From;
	b=ZnhFmF5kh64/RmnWXwhZ/j40TWFUtIEdePoRc0T9CGWsZYs4J3cjpeeh7bVpttJRt
	 ec9a+3RPxFZ+PwWJlMWUEH/DE+xTIunsRqCo3sIff14qP5DU3QE728ujj/r3I8SBOs
	 i9y/WmdKdfrWNXP7mAe/4VijyRcth5JxMjqPjciQi+G4fbtthQEZ/jvXVbzyfUIIH4
	 SSZw6XKLdM3LIPB6Py4IkxLWPePRZFPNqGgUDg1A+jV5wtxV1Gkwzm6Yh/Bn0J33vI
	 VbrzHhjrD431A3zUpdgMjAs9jy2kdL6YLXilm/UVZDA3pZIsHZPaJ9lvYcND5bk1ux
	 UkDA2N9ZSaynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A23CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112783368.17831.8106946979994710008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473cd10de3e0e9272e04986f31cbadae1ccc9fc3425ec2a1a7d45b50247187e7
Date: Sun, 04 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791127833
