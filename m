Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3698D1DD526
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744129194; cv=none; b=jxYXQQOV+ul0I6XEAlzIPx1lSMIEgxqYZqtZa0TFfaai6BTT/zrAI8TcD4TpFu+mlhGrSCZlyH/SS0gRMEHpo20bqDrFC+5g7iPSDaHRlg4LKiCs7GMsnxhsqxkIc8EbNoFwVHVY1yhK3NfXrsvOcftt+VyKZy8vIdjbymYBDEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744129194; c=relaxed/simple;
	bh=OtU6YujGC4fzBvlEbZCsQcMtThtflZLAAbSSnLk5dKc=;
	h=To:Subject:From:Message-Id:Date; b=TCZrqU6vs+mSyppvAST7OHMAMCnod9Zt0S62LRjDEOk3j+MFOevXzemhSN/Moc17ZdBbkCvr/rBv6Y298GYctFdEEBf9ijeFlV8MDF/NCX6SKH+rIKNTVKUqUqzYZ0jhvd3VdzsFgPV+xkW6C7A00sa1hUSDaDZw6TtDc17yga0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR50hDQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR50hDQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AFDC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744129193;
	bh=OtU6YujGC4fzBvlEbZCsQcMtThtflZLAAbSSnLk5dKc=;
	h=To:Subject:From:Date:From;
	b=YR50hDQpEKyktmV5rH+AInktMSclyyGHm8G3lK9j/wyITHG8Zo4kv4ifM6c0aF3px
	 G2zcSQE4wzTI+i7cuaM5L1SbnTvIijgE9HvsaWc2h0Zjo2KdKqoQR+1zloq5qik2Hx
	 5g8FS8BpkAck+j1RmmtdQN19FcUYrb9gFJ/rzgBqQc1qeU4K/xn397mr5qx7LQBF4n
	 2LVmcxi7hGdBLZrVED5bRkTb0RcLU0PNETmuzbzoGiIB9SGWpc6B9MHMp7A+mlH9aB
	 gmngaR/L91BNlqhys6TT801kZd8MVerRJfDNJtC4yjkqjOFMhxD3Dj4zyA182Qx/yX
	 FbCEeNV+1r1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90926C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412919358.15555.11526710483033225407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f277108c0a5905685630f5b79cc3f74a7743bdd37b53c820c968ba1f91c4ea7b
Date: Tue, 08 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744129193
