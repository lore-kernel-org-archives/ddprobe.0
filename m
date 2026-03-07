Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307FE31690E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772888694; cv=none; b=f5/eXBat1xxgI3/9PK8fFxDMVNkoVWSGQJ5NZ6I+hXd2k34RO7SRxHc9o36P26yxy7Usut28+jr9KiZl1nhP5Kxwqo26cFDkRh2QtHs1lm/+8nvnidpUhbLbBUp3xMQdEUzEre3TTBTkDvENLX/UOVPlcKGhj+Et6PoZUa8c6aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772888694; c=relaxed/simple;
	bh=9rURUkc5j1cUkyeV1D5rDhAspZys6EfMmeainStK1c4=;
	h=To:Subject:From:Message-Id:Date; b=IHD/IVkRAE7+zK1/AEYR4rAGbdi3zKOKYJ+cr80jL2WnETHUN+MyBR3S2+QxfquwVVnA+FmRg7T75yzQAd/8u7gB8uG+PCp6q/iC8/QHVROmXt+/vhfTEI69C4bF6090oYbA3IYmtE0V73IZXjAh+2KL7juJE0/7OMiW6leiGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux+budun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux+budun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F5CC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772888693;
	bh=9rURUkc5j1cUkyeV1D5rDhAspZys6EfMmeainStK1c4=;
	h=To:Subject:From:Date:From;
	b=ux+buduno6WOcX/gn1CEdT4bDXcTJ5JjjczKvZMGB02Owgr1iIIk21ln23qQgzx+y
	 UlElajbCR4zz6kwmcknrairgFOmxaul3Y7MMSSSeebQxwvlFQvf6SWRaAcv51/e2qh
	 w9ZajDZT6bsFKLyneitpxzmltMx1UDDjZt1cN2YzoDZAIBfAJ5iDZtyYSf5AN7f6Dl
	 Oj1HPaJlC1whemmh9kyxLmeeG4+uY4ojVkzpGcRctptOygVdLEiq3QzW9MewSHWYJh
	 3xpzZmMjEkZuO7oKo+OSsprL9Q/WS4TrLieLlXCs0afjkpQ6c0Z/CJYftd2pmrxCd5
	 jOI7i9uji36fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E5EFC9EF9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288869364.20788.13964115829439937020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd5a05beb42e885bddc0664eba4029ce8eb871ec2a8fa91a0529818f68def34
Date: Sat, 07 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772888693
