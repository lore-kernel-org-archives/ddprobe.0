Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7622FD1AE
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755018594; cv=none; b=EQhkuuZOQE3vJgsCNRFlGr/nrpqdwPecSClDsSi5R6oX5hbScZbnCljHx0Icgv3M/VV5Zug8nRxWgZq9TYXz/G7LJXxz/VQwKUhnUYkGmWIC4EuXKOnbzHwvUay2ckXU+YI/Jcbmj+kr7tXXnVbt9WGeEOq/JKm4w16oTojDPUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755018594; c=relaxed/simple;
	bh=Tc6fw/F5bXmFOJiIaQ7xUlL0uxHzzJoLRXBqjk/rQiU=;
	h=To:Subject:From:Message-Id:Date; b=KCi3S4XwVX5zdTi2bm1nrmxKgAXdcMGi9u4y3ZTBUPJ9WvBspnXaejwwFNL7ZMxgq6RqAsm8qPOsHt/lIXkXbbpzbdlMKO3KUXro65hxzwuqw3JCqbK56/1EHQTQgDq7BG6+bytngTiE9i48njhLRzWziQWwuEs5v5GXQisEXdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJEwkJ0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJEwkJ0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755018593;
	bh=Tc6fw/F5bXmFOJiIaQ7xUlL0uxHzzJoLRXBqjk/rQiU=;
	h=To:Subject:From:Date:From;
	b=pJEwkJ0RQL+o4YyFMtQx2dVd4uAD/q4U+tsqiUkH3nmCkh/E2bHSjDoYgNyntlbxX
	 0RzSd9J2BWQf3aO4kJ8A9G03EzpBIuz5dJbbiotuYsoCOB0kjHi8hqGDHFCIMWhrrT
	 LlNOmv4UnPnb8hvP1jTglG0nA2icRIh7F/WozPGpFBa+bnJw2lx1D+O05jDYCNUIep
	 H0aoOFilrMmDlSUB2lRmUlX2N1oLd3aXA58hUFJop1pvqU1Ii0WieTA8fn5Lcjhxdy
	 XOGOH7zfoTXBfXDrkbeNHrREVCBkXbHLkljXo4GSW3hET1RF7i2AINHfMUAaXkZd2/
	 fEzmxusrl4sCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FDC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501859358.19237.1755471810646620871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e835d17d57b7c4d23c89410aa48fd67a51dfde9a8d1fc0275f0401299c55d173
Date: Tue, 12 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755018593
