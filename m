Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3431E522
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714293143; cv=none; b=lPaJF8rpF6LgRWQzqIO7ACEIRg3Q5ng1rYna4W7whoqkV0WXcC3j3boZihOKvMWNpdq7dmRFBN2drkLfjqkbkIH5B7p4tTdK11tQbOKo9KMHkdXK7s1vHxjJDz9hiQn6pzDMm720Id4uTS2hW4My06tTkgh95l2ev2ChfkPWQZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714293143; c=relaxed/simple;
	bh=PgTiwfGRSw1R7cz5IscJMLSR5UOMQayTDBbb+smmkCs=;
	h=To:Subject:From:Message-Id:Date; b=Em7R0xIl+xqJdtlA0SpZcV2xE9ZAcimS0K77+3ktpd46bx4fC2OXKk1Esv0ldONm3DYGzlNC/OA+5K6BbVwTRdxM6RkjbR5nQ1VmtxckxmpL7UAyr7uNsk605TsMVbMmq4sS+vej8A+RLxHPRxddbe9GN6CbHoCXalW0qdMiL0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXfh4KY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXfh4KY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7BC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714293142;
	bh=PgTiwfGRSw1R7cz5IscJMLSR5UOMQayTDBbb+smmkCs=;
	h=To:Subject:From:Date:From;
	b=fXfh4KY6dPG5OH1HJOrdtfkHVKPCxmZue7bwur6Jw1Vcdy9HJQNnBBJU9tuhePfoL
	 4m9gmnn4vLkFuQcXhSRcqhDtpACxWYOEm3OL+5LCZedJt66ymFWmkzOtIlFk3aLPui
	 ii3zI/DfYwRSfa79KMMXTyaHquLaO0lMQZUDz7X07aaCR1bmC3VW5t0ftvRK/G+y8Q
	 VaHVAal9E5aT8x8SVKJCgstd6X1FRew2TzpuX4wLbI4vE45Ykm8+t/jyP0AQaLT7UO
	 cl/ZVFavB+Ig3iRwjrJVX4RLA80pkTY9efIKBVEGJz3qnY5jWQ1hvEZj3237BZ3suV
	 td02k9wE/skUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7305C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429314278.31592.3913487243222165755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cda441de7ee3ac551519f425a61ddc3950f20d9ac3e505e6b6772a91721850
Date: Sun, 28 Apr 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714293142
