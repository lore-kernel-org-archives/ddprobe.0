Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD91EEDE
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755688194; cv=none; b=ULgjGg1FF00/ylJNZRPdKHq/im+QfSbgrJHw5xi0m/HEBgQ7lxLhLs+jrWEmnnOeCcolcjcyvynr72a/gNKTDBn5FVtvJIDdPAyrH7EJzW8XxF8fvFsaHie5NAOV/l1TfSwGZiDqpa71jHM7mZmh21zT9XRvmuCtG0/5JAI0UgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755688194; c=relaxed/simple;
	bh=bCMLbY0e5r8IKwTJcpsJtZwD6fR8SG8nVj3TMcOFQIo=;
	h=To:Subject:From:Message-Id:Date; b=bpeKvfzw6EeA3KmMoqqJqrWxe1GFR85coGCHj4hx61//YIvIy9RMkNtbkO84oLDUtOSkQNosS2oB1c8zgZiU6FHF8/dQiycSU5qBXlth5Laqgj/5N7zDbYDjkFYV5AENiUMMi4oNkjYzbFgz1eh8ovZfTUJY5EF9MyzBV0iOPGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOGLDYyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOGLDYyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB2C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755688193;
	bh=bCMLbY0e5r8IKwTJcpsJtZwD6fR8SG8nVj3TMcOFQIo=;
	h=To:Subject:From:Date:From;
	b=NOGLDYyn7ABVyyouAqEUOwnV4YrSgLg33YKhNs8p7WgYQQNQYS2daBFgfZv9A3Zhe
	 /fD72+1Q2hbSwP3HR+AUqv4sH5Likt5qMP5IMtKzsqBeJYyeSg/zazohfpyQidedjk
	 OafJi4tGNyn+C3d97fgQI4UzY7VqlXzRyjX6GxJ2getFVMOyvDPsViExD6kCBTkCdT
	 eJojNYOEXAlKJudrgSIuQHK9GAoOP2NKT3CkOqXMU5LvPgmjH8nD/2ors5XYypJuBB
	 yremvni0CkybMC9U25aL8Z6lpHaZ6ukQTMW/e3QlW0gG9UFns335rmmOnNezz66TJh
	 8uHeLZY2LNVPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93227CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568819358.10581.6854914715229223362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21de44a3783ac33f3c85cd4181c8952f725a93370ad257b126914a7c5c8de4ba
Date: Wed, 20 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755688193
