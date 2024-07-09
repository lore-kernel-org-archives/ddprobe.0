Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBEF1B86E9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720551983; cv=none; b=aj1T19U24XZ6+dGgOxcPGm8nvm9fZ4LquoIHkrZZrG73AR8lQRi9UQiwqyYz+fLCobFbL++DsW9iKsVJJ5W7LAx6UT0UuhRotUMURMqeT/3GdJmAGVqclQfMwISI8pDYTFFyNPvUOIGt2LZsFikut7lwuP/p/654XwjIQkv9JXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720551983; c=relaxed/simple;
	bh=3cUNmrywFwWQ5XXtN/QVgHgom2E/GOhkE1Q6y52f1ns=;
	h=To:Subject:From:Message-Id:Date; b=UF7yLuWWpp5DpsIpsPu4Iz6lXZ0npZwMcGyoeGvrdxk+AYUE0uwtfck8l0edR+c8u6SBak58B+1lKji0VGRrJCFiZt6O6YytlUrm5kmwl4PZv67X+yYRuJaMwZvdUtclfvt8sApq5hE5tPFjbxmgoJwc68c6O0FP5IYet+OGUn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaEXuOfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaEXuOfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45F3C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720551982;
	bh=3cUNmrywFwWQ5XXtN/QVgHgom2E/GOhkE1Q6y52f1ns=;
	h=To:Subject:From:Date:From;
	b=OaEXuOfgCJ2rfvsAZyURH8gZkKRa3Cc29TnW9g7Fk23neQH9MHH2r4BEJx7QNwkqf
	 LLBR6DiTzTRhuJv0v4q3fIIFd5utozng0UOlK+ucqu/o367MOz7IS6+JK0K46Ce1/3
	 79kOzkcDYMJX4y8cK9EJOZdHz9d34pki5P/xYwu6IYT7bzb5CUxov5Fa48FMR/GHOd
	 Wa68LLNIAPX+ghN6PdmwX8Yraan70wVfdc2yGaGmafhmh0qDgRjeSOZpdv+96JLOkR
	 rLIRx+OK6T3Jx/UhcxnExeycJrHT+mhXx5CKY7i1mTSwT9qFPdq1y/fhZgv4cZ5e9r
	 vbdlsckU5pLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C94C3DA42
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 19:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055198278.22469.15301489603233702910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f193bb6afec507f6cc7a7a3c3dfe51d0da827b6b6fc6e1dcdf2f6b671a594a48
Date: Tue, 09 Jul 2024 19:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720551982
