Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6D025B091
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786790434; cv=none; b=JpW8MtOUzuHHxy3W27wDTYFJ9mcLx7Zyqi1tMRQW0RkeG8yNck+wsk6/aljj7YGWvWvt+Fyglqqgqc6PlOaHn2I1fel0jZI4eG6R1P1arWj6I+yfpaeeOyng5qmqXJhCgmlT/z2GA+wWPcvjoDzOje988rFwOM07KnXPgChzjyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786790434; c=relaxed/simple;
	bh=pJV7RvVb/NLawEH0Eq7ilHWkG/dyDggsasY51ailomI=;
	h=To:Subject:From:Message-Id:Date; b=OEtS40GEbksOSgWtnOdi+b8cH+lkVpMMUiXobGq6vSRcPPJZoX+nI5k6UOYoGtCYIunce+5YYjY2PJCo0Zj2ZhBcPG8VKVcdbcmbPT9iShANV9Sz2DXxkZyKlAdVb50d4ojSQEjV5xACaNuMTiNwKn2+UYLxujL96GjvM5lrbuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaVlctZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaVlctZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFC1C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786790433;
	bh=pJV7RvVb/NLawEH0Eq7ilHWkG/dyDggsasY51ailomI=;
	h=To:Subject:From:Date:From;
	b=iaVlctZY82ksYV0P83+3gXhVjxL9Z2jvjMjSq8SIkGt1w1uhKFRbysQuRddROk7Ie
	 ab8cgiScnRp1TI5MbnvP48x9kNXb20unmhnVwHGAEvuMi8/+GJGQN++ucW433Qb4OX
	 +R1Q6FsG+//qUglKRJx0n7lKAK/hnqtos7RMG7hLPhyEkrcGbBJLl0CnJPFuUwsnFk
	 LuFlpcZ1aJxDelqmr/uL0RDtZyB88ZxNwRiIgxnV6/8oP6VDcXYPmeNNQv/9SzYYie
	 FLIhcEe6TFX5EulahnokgwmURCT00avUY6k6l8qsUxa8K7M+4dOG3o6J2mLpKnwX3J
	 GXVg/8zCTUSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F18C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679043369.23904.8264196909530163518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad597984044f777ee2c5a18d7a23491cc79ce412349cbd2fa1fbcf63a2e800be
Date: Sat, 15 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786790433
