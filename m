Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27362586EC
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753770593; cv=none; b=RC7OK5XJUw5w8Ig36xvg+MiHqGpLUjI4M1qvAGZQg5ByOplGFXx4qQ0eVcpplHENExh8RDHJ9k67gy4UYAMBd3OUdpRdvpArZwKTTU7YQqW2u2ONDWdGfxKYjDfQBP9Fk3r4Vpiq5ZPUNBxrk6wE8ActWt9zaZ/erpFAU7FI9MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753770593; c=relaxed/simple;
	bh=/YK7wNg9zpKdtB7npiE8Ngx3wiWUzTCvFRXvgtaZaxs=;
	h=To:Subject:From:Message-Id:Date; b=kR0orqmTiW+oyNgHYfX7onTBDSCNfj8rggwqxZn+QL+ww0UqJEoB69tpoBnsMQn8y/3h/6wJMb2fSq8kErpbvJW0u2wHIzCUAcSRqeIIhi4PIIjZdxrD9ujwHkejOE1gz2URjphpy52C2UNiq7zaM95s0t5DDza6KVNf72qff+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNgmwDq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNgmwDq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753770593;
	bh=/YK7wNg9zpKdtB7npiE8Ngx3wiWUzTCvFRXvgtaZaxs=;
	h=To:Subject:From:Date:From;
	b=sNgmwDq/IUVNuaGchOolYcEffiqeuSbfh/+AJuSuD6tW/mzuYEM5nw/YjszJxnUq8
	 /eBVMOze6du2lJ4k+QQpqR4lxRDXVozeX+z2socz3wMz54rwUwkGpIUu80hRqcfLUJ
	 A9W3klIZv1CB1JFaSEuMUyTc1gv2zK0E/gYcwwb7Og0uKi/1bzFIhXZDXhivIEX4E3
	 ojKMeD9UkXuq+v5rOhdjJIqQD+F3mI9SNq89v5t2kM6d+q3bH0os/hGRSWO3XmzGl0
	 T2Xw/qYgrvRnJP+W59pP9VTMVdV4pndLHpit7wr1NWtP7IxNzbrjvuktFxQUeHnXEe
	 E+mO3y1rJq9LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92372C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377059359.21812.2152277850430876755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d383807f3d8513d70e63e5b485204990d0301577cb54c857c9e89059e83c64a9
Date: Tue, 29 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753770593
