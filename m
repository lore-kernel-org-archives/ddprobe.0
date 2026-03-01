Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0D83C2E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772369094; cv=none; b=hFmwq4VxWmyc1vBMLbQU8Oov8aZ0Jw6mH24+DmQ+sV5I8dX2dRmzW4rhaGfBtgvDDWvi+o/VHwn22tfyiMqqkHiC8su/zDcW99aF+hNjt3lgkJ/cXQE1BzVl//WK7KMGCblMuVQK0OFWE3AuqPHAMUeb5kOE0uDP2npq21u7Zio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772369094; c=relaxed/simple;
	bh=R7aiPTDLEC18An1tKl6bxQnnjXLUfzMN6bG+d3WGrhE=;
	h=To:Subject:From:Message-Id:Date; b=acUhNuXVWalObF/DsvJhs7JEAs7PNP9HqS6n8WFAlO8MwM3dqUsk5cfMVlLRZSNyEivPDPdExAw97py00o5wikhR8ABrycn18h1tQljYAi0GgvfEt/jOHkBh/iLZWacJTas0xk0QRh4V8s/wcIpsSFh0yjGdsqwrsb96LDEpDVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tb1mOVBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tb1mOVBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF93C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772369093;
	bh=R7aiPTDLEC18An1tKl6bxQnnjXLUfzMN6bG+d3WGrhE=;
	h=To:Subject:From:Date:From;
	b=tb1mOVBqGphQKiCcyeGoG0pesw0XWKdb26piRVTVe0cuOfhuEUl/KpIiZ6MJKFBN8
	 E/011KuCUkkLkwoXCC0NbzniYNjmwnqbOLJ4J1wGUVBB7ACzFc/sACQJOqsNfW3fUB
	 GBH8CQCssUIYAen4F9cPv2l3hg58QLPYF0GyrEExRJsiz4fXaQ1ITHIL9dHa8plYud
	 Jm7nExwq1+KoJWk3xi6pQKe226Ze+gAnPw3XqBg2YUHf9PIrQ4kHym7bcg7I96JYSo
	 TZPy2W4WgRAp3r2UqQH+KWKP+7ENCMj+sPclSHGiFZVcHzayiAz6RI+Yv2D0XM8YRy
	 /9VhdMrL09uBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9BDFD0066
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236909363.10357.8437009437681799533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b99d4f0764ab5b849c67a37831b21317db18722f00443d67fe045af7a7edb4
Date: Sun, 01 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772369093
