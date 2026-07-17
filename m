Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348B142B733
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784307514; cv=none; b=DDFR+F9xjbUVDiTcCKbKxxdjkQ0k8pkZy2FvK/FVup9lYST8SO0X04OxuScDo5fvruDSwn/c3i3HHFiq/SuQngcDXAPddX4zY91DV7b396Zpmj1+wJ2ODqkHPmZONfhu/qvkD8VsAjgKuKE+Sz+vWO0n9eR4idXEqwHqRamExhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784307514; c=relaxed/simple;
	bh=UWeLpHl4ZmMWHbRc4aX6QsdxcntYnZRH7AlhvkWLbWQ=;
	h=To:Subject:From:Message-Id:Date; b=llIsC+P50MP2KfgfE4RZwB9cLv9iEXfmgHRPeREyBMHb/AKWTzMdkN7FjQBj0GEwLJVvoS/SwlHtTxtFrO+srfsPan+6zGolbhd+TTzNDDVuMV+c9j4i0EB/8bgVtcnFYzae4KpHlMEYWfEAyLUdS2WKXdpzFET9sFx+awZEfhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ap5vXZgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ap5vXZgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABACC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784307513;
	bh=UWeLpHl4ZmMWHbRc4aX6QsdxcntYnZRH7AlhvkWLbWQ=;
	h=To:Subject:From:Date:From;
	b=ap5vXZgmVEaIWb8LBLLW+DnjTGBGCMdP5EeYiBjpfn5RMOva/Fn2kVjjzyS+zA7Ej
	 1fbxahfVKbFqnhxuhH+W3DD8VvrmuAi/t8Gw9vlsZ/3HSOLkG83PGtL0R38629ZYsk
	 ktPi6x9jhj6HKuOCiaOcqlXg6hpdcDvdeIo4jItDYk9H9xmTbO9u0B5QxQH2qGr+tS
	 L1qPAiyIyCseYf/Rss5q/fnojiQ72S1wLNXnlY7kWkDIPGvnMA0wtrhDu4+yZ2JISC
	 WtNtO8nNnRiD9k1Dws8zjQFdHFX/JF6+PM1ORu/XuUVgr6Yr5darv84kgOvdAJN0eQ
	 hs03dNF8obh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9788C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430751368.12045.12521266905834784050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4f32e015b471ab0941643d2cf91a49084f2b994caae37b61be87a5ee19685a
Date: Fri, 17 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784307513
