Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A1A86352
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767251634; cv=none; b=Eu0aXR+S/HtrgqyK2HclbXCPMJtJWrBJ8utltTAWJt/I731/8u+hR3Xy5r6cVzhgCgPz4hg6gLyCBFvNd51xKiVscZ3grGPbRk28ZZrG6duE9thNuhn242bvrV7KhiDeC7ynb0Rm8+CGgLuOUnhkzkiMbGMTTO22bD/X5VBMe0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767251634; c=relaxed/simple;
	bh=ho7yrDsoiJX7hiyIRRBty4jU7PHi/bbZeBRr6Yf/2KE=;
	h=To:Subject:From:Message-Id:Date; b=Btnds1rke3BpDtTlav7EK9JwzRrlXeMpqK4gua2HbxNWXMMS4kbm7++kz7jD+24tkIKDexz2oDz2VRmr29PsvoEiU8B/agH1dn6hNBNqlsM5qnKjTcyolNu/OypCI1IumSXnm0dNvl8S9mWJsCaYLNaaYluj/uncuhvfKC/bsEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIS70gqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIS70gqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767251633;
	bh=ho7yrDsoiJX7hiyIRRBty4jU7PHi/bbZeBRr6Yf/2KE=;
	h=To:Subject:From:Date:From;
	b=WIS70gqfG+rggxz+ROQUlP4NlffrCnfmt6TwGCmJqlwQy8zkNw3uNsKkZM0rrCFAv
	 pLXUPuHUU4o9q6w9kenlWzFGTzB6FBg8U0eRUMF+VX7/CcNhAgpgcUY1oiA5TfDA30
	 JEf+qkiy06LDSTfnoM2jo4BDQ8Hn78J2LYf45/NqqgKBy7YMSK9cykiXDC8AH6R4Xb
	 mmJ6jsmzuA6qlhUu/vv7yQHDSWZV0TJwbIBSIU2drC3pkDlQytyWSzD+D2cbtKpXEB
	 jAaf48KrHhPaQoVJTCU2A+/Aw3MdiRKn9bMPjSEfR+HD+n87TqoGxNgxhHrp7vo/Kv
	 QpsxjtY66SSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB5EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725163357.14428.8236337095379236853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b623862a8c4cdd4ec2070828ea5e0deb77365dcecf936dac3e5e8b98455e69
Date: Thu, 01 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767251633
