Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164231B87F2
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753170594; cv=none; b=JjDIwY+CWgeW9C/SNqZl/Hf3KLMP3oIGwopOKHlV0ZJUqem7JKRdpGopJSZJDZHSmbref/hEYUAPvaXQWTMFyQYCoeuCtx1ms7x4g90bh7gZzP3bqgWVY/TbfThvpuvZgTwHdNMEd6a+sjAsI4k5baGgJDc/udochOTi+M2DNuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753170594; c=relaxed/simple;
	bh=3R0hyiRycYvJhYhdmcOWdgTPun6DjKdftCADLiZa1yY=;
	h=To:Subject:From:Message-Id:Date; b=PbRCl3TgCKLSodLcTo1rGKL/wH9WPgS7eHyCjfkWJddMp4oK81C1dxoSWovHLCIwd5s/JaGW4QShah/wSG5+YfhOOkl1B7L9xjL6D/PTGsVIY37f3T29oPR900ZsvRL78NtCS404ow9N9mWqUtyntx6QUsoSX7+XDXcl/g2W6Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq4LuVYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq4LuVYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E91C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753170593;
	bh=3R0hyiRycYvJhYhdmcOWdgTPun6DjKdftCADLiZa1yY=;
	h=To:Subject:From:Date:From;
	b=lq4LuVYPIgyhJwVtpcg1mLpya7hVwHKwToMqNj6RpZBWujVVAst7eY0U2PkQ5w2Ql
	 aftLU/N48VoekMJNpCouzSyZKC0Bu2O3AK6CppDK0T2nWBTtaI9NYBROZfjubJVU/8
	 5yNflAKC8OZYxjWrEOkBQudjP5aI5PMluP97LmF9uhOzzb8frsZX/16LtbQtkVjL+S
	 v5J/NKfJ6SbyqnVLG83U9VFeKMMeY33+oX4H/nHf4rc+aXgS17i1uIg/MEh9J6nSJE
	 IZsoLzb+sOhftu1o/GP/I6B6kTJYhd1jRK8BWCIG0Q17PK/J1Bgu17a2/PihWK2C2Y
	 SgLbBZ6sdRJOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6CC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317059358.22452.10672674006524956299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7a703a9d6417c70fb7ef85f8c49456c600babc4ff536c8ee041024e9746cac
Date: Tue, 22 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753170593
