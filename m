Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E61A9F88
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762721994; cv=none; b=UZnBKYx84hhqmc2VCDJgy/lgkRWqd9ytE+msJHkOX/AEemnr1aHSgrP6TNXya/YBm2QEj67PkM9B4fqfPPsks7MXeafjpmCKhV15RwMpN88mRrBXXRQ3oNiLViTYmWZgCeIZ9fatS91oggOwlCVymHSXoBXb0oZ4fw6j/iwx1hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762721994; c=relaxed/simple;
	bh=y9qfQsIKBZGnydM+OGvcwUZ8+4XsDGaf1/NCwKd3Apc=;
	h=To:Subject:From:Message-Id:Date; b=Z4Riw8PTKZ5vnOZmaiTV6/VO2XJbgo4SqhIHcI8cn/wBue4OTywaYe5DDoirdNnxQLhAnw01KwVIfrbXXLo25uk6AXvLpcssSi8fsrIO+eUGEdONrKepT1TDjUIlmsq6t/f78yg34Of+mWWG1nJeJnb0/ITL/MuYZRA/RBS4sEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKNk9sNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKNk9sNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762721993;
	bh=y9qfQsIKBZGnydM+OGvcwUZ8+4XsDGaf1/NCwKd3Apc=;
	h=To:Subject:From:Date:From;
	b=kKNk9sNXEzwvnf8gCFrhpuQJDFqEB5kJAecmCsxbNtVuOj+WQ36TJQJAU2ch4aS8v
	 4fIWLo3hWEKxockuqaQsXC3h1mymayj9D+BqNypW/5NPQAdXQPSe2+82WoM7dWgvpa
	 q9pQNBR1/Sb0DUm1KC37mcaQupecG/z4Nln2/7NaSCAqv3n5hokdLlgzFdu8x/ppmc
	 6MCV0KdC3lUJO0mCVezJrHhI31q6vRx5+3W9W8ffx+cWronqp6JC3Xwz8dLSxQuag1
	 89qdUKa60N8vmkpJ6oh+dMl15ACBfH6mx4usf+BhYcown49bSSNzHUIHvtVLswmvcI
	 Ba9HLCmCX8PJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92059CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272199357.31741.10398067831531068390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32521e2cc0cc7ef5e79aaae1f28537e608cf6efca92b36347bed06eaee9747be
Date: Sun, 09 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762721993
