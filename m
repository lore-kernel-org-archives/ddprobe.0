Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E9552F823
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792420234; cv=none; b=W2B89hh6DTfM6w8CdL0CL2BPj7EtYOfLjXVHYqANKVZ8N9ksrzmJxYQvVE7D2z06wLS/MD9KHE2uBrqGNKagN/ICZ2MWnmAS0ZuPKr/TTzHnJTcWNTj/+pnqJI0+VkAKprzfA3XhYCLiFb0eDybOmj4/qRwU2kRzUCYEggOJO2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792420234; c=relaxed/simple;
	bh=zURq17HrFYn8DRL+zeARLP6m3nvQbhXnTHBgqrcRCOI=;
	h=To:Subject:From:Message-Id:Date; b=PUFY+qlKvcbXHq8JGau5E53B9QHKxalIadzcno/0or+wodb3RZSDjsE1TpfVSB9n/5bitkH7UobUBnlbYcDPepcYvFmr+HrVivPzjD2+UJcVSqvKrdzCr8PrAs9GcEUZ7Jlj7w0NspxjKJx87Yr9UOYS+KSYUAeGlVPDesImPzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+cJh2BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+cJh2BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3937C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792420233;
	bh=zURq17HrFYn8DRL+zeARLP6m3nvQbhXnTHBgqrcRCOI=;
	h=To:Subject:From:Date:From;
	b=I+cJh2BEC9XUNICFT+B0o6kuu2HaSU/ohhMr8XklK1q3kfYZkftgAeqq/7swbk+16
	 gwXkFN9T8ncZovP9/bJfnMRe08uzVbh4NMTOrbBtcsq9u7/z2LQwokKhChY1ORZb+D
	 6L5wWCAQxi5XSCs2MUI1hR/KKB6h8xykxidWORAq6kh2JLuX71v1/+yvduZxvZ80N5
	 87Gb4/Uff7xhWrW3lOR2cO5sbh/eQpK+eWKkMdbcmu6VLSHPHySgeAustNaap4e9wW
	 Nk4i9k1RCBO+JrqDEmz3tiPQbeuZVGf1n+qTuin7tlKoNLVALzBoBEweJpwCLIrtsS
	 RlLhwmKj0VIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3562CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242023372.30721.10263338879658633365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a73cbd4dd4165355373331aab06d120b0c8a689545af00445d166df8cd24ff
Date: Mon, 19 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792420233
