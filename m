Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4953F1070
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788001234; cv=none; b=i2fXfZuUVvgK4Mswudr9bDdvmesEXOfO39MvDGlnGDkx+ve+rzNWhVxLx7Np3sA5xxpjBtiUpbizbMOClvnPX2PB1QV6VdbVnqRooFfkI36ZWmEX19KVwK62R9IU0uZ7dJRwwV5WxNtdrf24VqZlI746RUk17ftdbqN8+OsUUsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788001234; c=relaxed/simple;
	bh=ULLzS7aPN1OURE+QVOOpiNkeI0fGtwPs0KGHqrHYgyQ=;
	h=To:Subject:From:Message-Id:Date; b=EY591e8s35HAgeHyiFMzhhYvSzea92fxmUjYzv2kiMD9WjS84aoCV5KysDErHEgXzTneeot2UQilPE3q2ycHroPcbbpcZiVWAqN/rOhACbo5QPOmjkK3WGyy3LfLUC+08AO8k1r9xcG3FMQ7QICHaHdqMomRMEVFDJPr/uVlfXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qqf6+q/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qqf6+q/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F22C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788001233;
	bh=ULLzS7aPN1OURE+QVOOpiNkeI0fGtwPs0KGHqrHYgyQ=;
	h=To:Subject:From:Date:From;
	b=Qqf6+q/wSmqrgpBm6QRmUdT9awAPwwxTV3mLbTS1Khf62CX4ijZHkoIPKoODYv3Xb
	 SdKP/egEYnN5ver1ofqH58547ci2PFvUP2+cNXIH3a/KHOPgyfeoNCh6ymUDiZAUBM
	 fAf/Oaw1faEW0j0Tn8T14A6pq7HeCRb6vba/Rx82JFXnua8whRsv8AnywB9qVwKQZx
	 ai4IkfyZxCALBJwyB3Bo6sLVzFVNsb8dfo1jRCbJ7oykaXegxeu8zQB1dEDOx4ykQW
	 YcGctrhbJfW5JiTjjOi5hlrQjtXpnJ0tFb3myGetPvH5aVcQTO94E+zJvsg/Guo4Qp
	 ttnaQZVOwlO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD29C61DC4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800123369.11701.10996163161396484528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b457862b54bbfe8cf50eca5685ebf78d0f465333c14da6245227387828a95c8
Date: Sat, 29 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788001233
