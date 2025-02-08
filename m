Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D00522F
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738983354; cv=none; b=jSZxGYgIxOZTQyB58i7KwSA5hv4qkUl9F2jLxXGn3dhlsiyosqL/ZzlJ+tesafmuHvXcnv86ARL3gnr/n0I72O58TMdXpkqCNJVrmvac/DKa21RtLR+sL3HTxWTx9sWkF8h3EBtrJYg5qLLqYwaUiA5ZYTSRlPskGfIWIo3+rgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738983354; c=relaxed/simple;
	bh=kRfeOPX27lANe7mixCRcQmGRnjfo67ieTV8IO28YjfU=;
	h=To:Subject:From:Message-Id:Date; b=gyJPaM4Yoy1TG/NeXfAl5pmXFS5RZ549xKp1kiE6huFECe4hd6htGM8j2Rcf3XVihJh+NT+zaT/v82xL0N6pp0YskqHmIcZ4hlTMwIHaxQUFOqpOlCjaUUrEJc/YzBn7Fbu+6h6cc17/GWb/N4nVfjkidjpVn0uYn8MzMf76Q0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxgheqZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxgheqZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B8C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738983353;
	bh=kRfeOPX27lANe7mixCRcQmGRnjfo67ieTV8IO28YjfU=;
	h=To:Subject:From:Date:From;
	b=CxgheqZEBGM39Ewt547YdHs5QLPVp4S001r2FhH6394sX4iRpb/X1S2Kw7N0vqNAV
	 dJEoUJvsQSKSBtE+gK57RcsZ0oUgUDGeM94Eg7c+xy/VQi51hJoRno4cdVMfnKByH7
	 9iPAM3bSMTNdHDEdBN/3FOzaidwuJ+9KGQh9HT1Zspf+6AvL/WuYg0/A9WU0xnsAN6
	 yMSKUhJk34Wac4IhBFf9p/Ak7ckE/ZGOCw9v/rCieXrYlc8NUYPHsfccZrsZDNrUO+
	 diGyDcquzAqztNuocX5pwWOzXvncoxKg8jIynzHAZ1jMNMdb04RSLwzmwlAkI4oo2N
	 1tltSae1VwLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2AC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898335359.20129.10262941735444145713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12db330c01bb4db05860ff913fe21df9f8fe18deae206888cb2a91d371428627
Date: Sat, 08 Feb 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738983353
