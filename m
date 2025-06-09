Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E4420EB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749427794; cv=none; b=lJ9dDQFE5v47Hqg5Nc91GLarVXu7y1OJzUDvxUfE0tVPSWj+2upry0lGwBR3nRmKdqbNFwJRCD4uWg+7M8a0WSdnUC11i+hQ483YgD/qjMAswNNSbgQ3W9oZ0SMiKnIbZtLWR4ldWfXj14EEcl8tO5BcuybnKLaKHM/jheXisLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749427794; c=relaxed/simple;
	bh=86bKRNNzJNb8j+Tk1OqLufz3OlZuDSmWfHT4v0QUk0Q=;
	h=To:Subject:From:Message-Id:Date; b=DhmBtt7uP7RVuL8A/bL2ozeL0aY7AXVbufND5myJyWLpyfDuQRK9b8pjlBC1GW+4lf6/9OXpw+cyir4XHqy6Ii+q+1QVFAbJzjSe00PtUDSzrvKmEgPf2Y146aUZNCV6N0Hc9M3lLilspdfZNmZtLM7BH/Pq5xsAcJTZX/ZxI0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV2cYbiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV2cYbiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F349C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749427793;
	bh=86bKRNNzJNb8j+Tk1OqLufz3OlZuDSmWfHT4v0QUk0Q=;
	h=To:Subject:From:Date:From;
	b=CV2cYbiEqFKKCaXuK7MW0+nArXIN8uIshcgY3kjBaneuMZshVDpnupUb8KDtHdKhw
	 A1tZqU+JQYlOwquO4QLoquWNr+5SCx5HwMmeljPCGI8jtLGM7cUgGq1Ft3Rq0fLjFU
	 R8gBXoIOPPGTkl9QgJsyuR56xw9nGQp4UT67zRE3BwrsVU7iqT1mz8R8NQWSLETX3h
	 9Q+QkSN7jPz2T+Qsc4/v4ZBfVh5i0wvZ1p8ySdcbuM30Z9y2EQ2Gy/SPFomakAeoMX
	 roh/VtA8mqxf13Nc/bPu9e6FrIKQ2ZH/zDhFUveSJvRTtyyH3ce+/No55z9Uq2H7jl
	 fVjn2/LXgcmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D7C61CE7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942779358.24392.4338658595487411018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d269353340465f416fdaf45a34f777e1ab605c38437d6b550f3101c881cdda2b
Date: Mon, 09 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749427793
