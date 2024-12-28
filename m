Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA2158851
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735386354; cv=none; b=VGxXXRQliKnikZCa1SfMVZz2c3Uxgz5uNg0SsG9+/5ZT6qt83DzsCJb8yqhbBKf+NiP+qVQQruHpBnETrBAqcxRfAtABTTU2CN3CykysRhIm4nBcyApRj5gWYC6KJuxhpx0EBHKMpnTq7E989P17APIfm47WDTX94JCdmNorIoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735386354; c=relaxed/simple;
	bh=fCsPL6CWZYsmRAudK1FLXJFnX/898gpW3eMKUfaCtIk=;
	h=To:Subject:From:Message-Id:Date; b=RZ0YhAeImHj7D161rWmTchOV4xqASq5IE83QObez4qkRmWmjSLxvgQEU/aCe++tEqgNHc0KERZfHBZNFHFgfKr0cwYQtrkwcFeVV5wJ9RMj/7VHsQ7jzje9akihGV+HUO8On8av0KnCCdrUUZlVFSNTFJnOymWXLrdERuzZMq80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGA5Rvgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGA5Rvgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98A2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735386353;
	bh=fCsPL6CWZYsmRAudK1FLXJFnX/898gpW3eMKUfaCtIk=;
	h=To:Subject:From:Date:From;
	b=vGA5RvgpkNlMCUZRq9dDE/XEM17m7hFP161yts0OWj/1rQZ/Wa1OGbyPbBw8MiXTu
	 21XG/KtVrg7AmjAoRvuguyFnxJo7Dpk7yZ8sxd6g9RMVGbCRv5ifIKKdpaF+TGwoeY
	 YRB0o+rE9Jowp00wMzjCU1vXI3WXxLr0gaUKvQ1vLRPGLrx8juuJKJGncsSEfJruOy
	 WhkqU1c5uHlctdnNFldjXE/4hcutgaQra/aV2YBglMA0ptl0Fl3vMAwBUgDqV3gzKS
	 Keix1wgzTbbnd+KtgiLhPhtODGZgJtKG5fm+DB4KYe/JZFpaONf3/Wo+IFWR7PCddD
	 tEIN8n5Ks479w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FABE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538635359.2634.15884649212815366853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ded6065b26a2cf5b87172291efdf943f034f04039b4a01c6aa56cb894e8506
Date: Sat, 28 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735386353
