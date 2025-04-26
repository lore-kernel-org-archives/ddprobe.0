Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BABD13B284
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745632794; cv=none; b=P0zy2HmKEhpqNFkgOMdsy9Lxx6AIUifq1h1HJoeao8YsK1/w1gjH2dlAkxQTOu/sc8y2ML9YHsiUBvZWVEeWgGtepDDTdqw5VCET8YyknUk+R3JBJosxuhVGu89XkqgPeRQRzOC+L/IzxdR5FqSAYheG6A5G69dnjPDGAZrB/dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745632794; c=relaxed/simple;
	bh=M7IgopepiIz1UTgRldWjMB0xVFn/9M5DfF/3TPpJLRo=;
	h=To:Subject:From:Message-Id:Date; b=C9OFJXcOLyso0M/VZm7xXF4skLGts/7OsyODLDwqITx09RqSp+ekPKmuplD0Op5gTJoGUmKi86PCA8sqJfBdQZQCJ8TWNgjW6v8Lr2ZMwMck1ReToU1Vbe4MJWnTAxQBQAow2oySjdJXPxvRw4NLD6BkpAPpt7xWmSgaIJviABg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c05WuzRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c05WuzRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745632793;
	bh=M7IgopepiIz1UTgRldWjMB0xVFn/9M5DfF/3TPpJLRo=;
	h=To:Subject:From:Date:From;
	b=c05WuzRi08/IM0ce9gCHCERbxppXesquDfJ+qndkTjIsaN912Pk1frJjxXbrHp6IU
	 piTpyS1Y0aWSJXjZQ6NJH1n/TzTvRGuac424xxFq7VoDObS1JIfqLpAkXN4QzvuZiE
	 a79Fe98FdTD4Pgn2PJMrXhwlUo/QUYFO8ue2bbntJDXQbvs/TPDptRqwqJTv/xXzxV
	 Kl1sNFKCIEQE/5+22dHhOMAw6FEZykvdNhZZfs+FE5aS5UaK87GLU0jsFMBli4XqDp
	 ufE3BJK2aCo5fb/+JQQNd4TuadM6UefuY31Hcs87mJgwhwP6mjW8wNMJHVZNSX+1hv
	 1CjoygE82SauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91394C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563279357.26925.1761636302222739967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48364dcd0f9495a9dd965a49f7169d1b9f5b29e8656dff11a53ef70bd6a736b8
Date: Sat, 26 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745632793
