Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD2412C49C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719755063; cv=none; b=LQ1JCukHVXNGGnB7raDiG/JdB/Gx2TYWwWiEsp9hV6RMebo3P7UqlaVdnekLVqggxEtCQ2MldJjJgJmIMM6LxjCncVpcbAJq/XhqtR3ELZtHBMEJZwboA89MvMH9nSIjqXjR0I73RNpg3rm7EDSroy1ySEfQ2fLPk+fUexsOIYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719755063; c=relaxed/simple;
	bh=j61UsMtwc3T4D3dA8y+s2x/TFWrsiIk/3mPWFmbXr6o=;
	h=To:Subject:From:Message-Id:Date; b=FUh7v0wF6o7TAbiViGjWLCFlGzDwaZsGmXSvhaN6egOuoM516dC6DO/FyhfYcWBs0PHvBuVadVBJ55YnQXR4yNDIkE7UrtjKyPbxxo0AeUGUVyqdAogzMrHniG85jb7HPPP1UOPbe7lu1APYrl4k8Y352Io2i/eLBTRnpvoYb8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYjAmHCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYjAmHCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88B0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719755062;
	bh=j61UsMtwc3T4D3dA8y+s2x/TFWrsiIk/3mPWFmbXr6o=;
	h=To:Subject:From:Date:From;
	b=NYjAmHCCokLhOvk8B1d0tXgx8kjCTbpu+me+ufXbYbGxOXK4OMGbZsJIkqYVUL5D1
	 LtYIS8vq8nZE7kpd2vtLgGMgQqR6Ot5dNBiIOufAVwsiG0si7lok5ZyxRz6NbTOpVq
	 GRVlqit8GODDMJTfvuBU9eangzVOmCtOJW7Gn6l+gLrPSb2PNRoo00AX/S1x/r9y0g
	 jxzXw1WHoXQ9Jlh7aorBYg91i5TCkBC8pHaJiTNqgrqEGKhKXgdRtgB9eQRmSjJ7aZ
	 uqhcaIqfRMWLV+z8VzGRqjOo8cLDOu9TaQVkgnydVKzlnuLq8yDTlUoR+UYjri4xQt
	 yeXUqysQxfnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C522CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975506276.26339.5717247906655002242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209afd387bb2aca5a982e2de144963d6bf95e3722c1c0c8fc13fbe8806230722
Date: Sun, 30 Jun 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719755062
