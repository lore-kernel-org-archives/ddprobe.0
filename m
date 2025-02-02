Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687712111
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738508155; cv=none; b=Pkte7t2Ij6rFXQslVMkrUAOJwzH5yMbukS19KVGfTTrexA2H3IoMmDZYCjz/ZyL4yuuyR9D40eIRBUHo0P+3inrYiu206fj3iBA9xBapCEKN5ga8xmwEOqg8Ra7GZ6bVBlffVB8uy/RTerjBqaA3UKn+JAUspWztSpXTuH88Z0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738508155; c=relaxed/simple;
	bh=9sAX/D6nQ0aNP1gycZTLbR2ym73vhMXDsctzNUTlZwk=;
	h=To:Subject:From:Message-Id:Date; b=BCdqJfWWRnzHlyD/Uhl3TUU1kz1Iem/kD2zXM+Yv3kR6JGNig1oufMsnJi+RDrd+g1V46emOzgHFUw84utbztqqVAalB5mM1O91751N9KLTAxBXp7XEwF0hceL/qU8gTqUshfLIw53etNjH4Yak9t1o10C3hZTbrTESewkcCwTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLhewTJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLhewTJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B7C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738508153;
	bh=9sAX/D6nQ0aNP1gycZTLbR2ym73vhMXDsctzNUTlZwk=;
	h=To:Subject:From:Date:From;
	b=PLhewTJss0QjuLJio5yqm5Y6dJe25KAAd1nUpyLRWNc9n2agL8J6gO9tGiQY+xs3l
	 TYJxd9AIeDCKatUAFzgJ5j8vScvrWcTfsrrZhl+QUNLjGGe/6ZASBhNJ/tg74vCdRA
	 07f3x9jQ8f4KTNp4kF6TZioJWoMotTyzDxqMM05RQBckdmZWh3HAouFbjRlt3tW8g2
	 mWbgv0KRLmHn++ZrFWAFijP36ja5oHLOjzag5lFaLcq+PAXTpmN5Aa7A3CT9w3lEtE
	 nEi8usyYNbi4ek+9obMJOqw2T3dACMyhRk0fDstpuqbwvI5oV1/MWFWSzP5AiHplc1
	 eo29df6O4Iinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EE5C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850815364.28983.7689814613601797488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9834ed1702743368074aa7d12d48baa55c1e15e6c09bfcedfa0831c90b3aadf
Date: Sun, 02 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738508153
