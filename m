Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D0E1FDD
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758650394; cv=none; b=fXPFYCn6f5dCsiYAQrv/c+1OOFzN/O3NMN+BV8Z1EPKHCcqYJSeiu8p60lGz+HRohnFOMJyLvQitk/N/npMLYyG2RgGaaZsWyVIBS7Ia38ul6J1MUJ5XsYQqpigMAocbogzGPnfKDnAliTJmEdSRPEPDqABQdJ0FDpiEAiMaG5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758650394; c=relaxed/simple;
	bh=Sqrginw4cxo06ab/OIt/+qIDyQczL5fmFFkptnYPa8M=;
	h=To:Subject:From:Message-Id:Date; b=afRbyWbZqBAXucvravBzzx7DwCWGGBdz2pRXvhafmhyq7l0v3afoDqgo4yakNeBRXFRWXVF/lhqRV6c3k+iG80FNVn3TXtYLbQJ6kKjfCUy6GyKjXO3lbL5bEG83OS7c54p0ZP2gBuhj9v2hetkx9TZQ7e9v9htMXaUWU7fAFjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egoK4NUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egoK4NUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6A0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758650393;
	bh=Sqrginw4cxo06ab/OIt/+qIDyQczL5fmFFkptnYPa8M=;
	h=To:Subject:From:Date:From;
	b=egoK4NUS6Z5sIJ1wcssP8w18YQpSPRYQj3YmCJZhayNY2TI+dx+tz6jl0byQYuTAV
	 GMmunt+woKBB9joddSjdNSnnTccr6NscIi6dEX/YKeAamKrJzpJWgL/FKNvxzbbEa5
	 tVDp0x9T75y7MQu+2Yc8KHJCB0EreuxA5OxI/NbFxrVTUub8Zo3o0R+I0u9jik4jYV
	 7VcOGgs3MuNLiG3A/ayfmtnndV9c7+v9CF2QeVs2NX3TPfklSxOXHsuZqlwu1zWCB6
	 g1nJV6TwEU8YPXPj9h0n32+iQvdJmY+SE9XYbYNLY/FMPngi6pQhJD22kpkWutwbUm
	 uXiCSve5HJVOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FFCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865039357.31721.13371208913481101450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88541db06e263fa303afa7881ba5bb22a009f85eefbba90cda094662367a81a
Date: Tue, 23 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758650393
