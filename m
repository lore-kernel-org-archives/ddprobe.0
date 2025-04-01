Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F7A2D05E
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743493794; cv=none; b=b8Bqi7My5uu8gIgLLwSnUseK4clM4YhQ3bJpMwAtlWh0aSFFWgsvtqK9ZtZmwQo7DJEK4tYdu1xxrt2LzOHhGcvqpWqwW9zK/VZRHhyw0h7h5hkjens+ACAPB/8OIkWEF7ubGrwwXZin4JMoeeXTUuduGOTx1EjVet57TqjXhe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743493794; c=relaxed/simple;
	bh=5kpz51UGuf9ZwUWVkeqyOy1P7FZEHAZfzK5Wc2OriT0=;
	h=To:Subject:From:Message-Id:Date; b=I/tzDUAZstIz7iH51813t35YZSP9wyXU/p8xaBz00EF6VnDAazYbQRp9I0+lIGGokI1XovNAJvAw55NXSs+haw1zkXauoANo5GmrczVBSQwquACmkkwlqwGOOp60AHR/9q1+j43uuGxFdcqA6dmcgQ0gAXr4PEPaUt0TexwDDX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2Xn52mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2Xn52mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEA7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743493793;
	bh=5kpz51UGuf9ZwUWVkeqyOy1P7FZEHAZfzK5Wc2OriT0=;
	h=To:Subject:From:Date:From;
	b=A2Xn52mqp8etr32FBPqRKNqv1Oe1XSxF92LDCym/JjP8zsil+mLphgnalDTRUrV4w
	 +PqCvN2wK6ankWuJFMF9zE6tSP2G404HDGVhnmT0uga2LQ+Xj0RWqNY3KWnBIvCzzj
	 DW/ObZRflKj6jewWEyxw2xcVGYt553YsksPEyG9FwX7vsCuI2ETXmWImfHk6CGLjbY
	 KH9bqdSUP9QbIHbhF1OHErcede5YwGFjmj5MmYNXaDW/RO7c8GUz/nQnUOUymPBona
	 VvNARm6sQxglMgic8bwEx7xS8xDLBjL4n8wtXdXW7/SJwC5+3ciUKE9xsHMSVdQjNR
	 cH/ZAL1stLbLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BACC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349379361.5125.9172746541270849938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a0e149a95a73155a93565139027e69c93e63ac9732be8b599c403c126b3f88
Date: Tue, 01 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743493793
