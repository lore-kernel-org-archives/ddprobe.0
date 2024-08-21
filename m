Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28C13AD2B
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724263554; cv=none; b=n/BBQQjYv0hUhqDwIauW35cKcc65ccz37tJbb+HoMFb+1Kff9pcEd9cIFmxRc4KwRBXL6gApvnnpCIdTJByNRfEvT+6s6sr/7S+3fz49eHSDQ/SymsYuHbvjmkJ5LQ9tgaKgBMRUMPQjWw7RATAzhKNIFfMOfbwfTbcBKaJz4TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724263554; c=relaxed/simple;
	bh=vlGI90e5To1uszjtWaH6b81w0aoQQl1TKASse2qhzKQ=;
	h=To:Subject:From:Message-Id:Date; b=ocdD4ZGFmObng0iCzDSZ8hEVPo0wbLOKde8deiP19iX3RD595KURUDWlPptFv/JfWbDiVXuJ39SndoeG9r6V8lQ+svLo6wiOGBluy+06FAG+0bx/y0UYEMla6mD45sMgF+aJcAGVAxJZmrc14oOYYbzAacwKX0oYH04Ect7gU1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq6va29y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq6va29y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6F5C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724263553;
	bh=vlGI90e5To1uszjtWaH6b81w0aoQQl1TKASse2qhzKQ=;
	h=To:Subject:From:Date:From;
	b=Fq6va29yPyMFe7H1kiAkjS9wYEE/YuKxkk0QuqtwGUaiGjvmpsHelgTOXa6mPlPFD
	 foPLBmuxBpyQ0PVx51WZ6+aVHRYGm2PL24GkhjAhf96+2FvXSfFcMXtRh6oTcQtHwR
	 QjfRib9istQb7PbdJuPJTpjQYnuHl7Lo/n+iqCLE/+Gi7k+1qrxR+T2cDRLEXimzCh
	 K7pPZl1/8IDUFGFDHJJ4gx8D7b7AVUK765BIaT8rW0Q4JmXUNzB8LVp9MoDU++Mtb3
	 CIbEINOYyp8MxY06/42pnjJd7ZwEcZ8Ic563ypeuKo9qw1JpK34+UnzkfCfID4TriW
	 nCLUTQYvM5/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8DC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426355358.23828.1589440808579726834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076ee0b0a3b3f319c059c5e861ce9ff8931b12c73ca9077089931157f9272696
Date: Wed, 21 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724263553
