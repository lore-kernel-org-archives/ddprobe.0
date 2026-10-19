Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DA53CAA2F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792394434; cv=none; b=qRFbNQrjRe/aHACqkAeR7IA5lHrspKbH1/fhrWRLbQNoUYnnsnfAPt8V8rQfFp3klX0tBfeFTJGun42EfuA3Pxvxco8jBexLkv0oZdwrwgLt27LFAmWd2cdFR9IALc3XH9wR7AKCRfjvUadsNfF0sO24j8v3LiEVAhVoBq8U9Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792394434; c=relaxed/simple;
	bh=6m1pmm4w0XFs4KLgH6Q9AAYEcxvOerBk6Q6VzjoXKy0=;
	h=To:Subject:From:Message-Id:Date; b=PLye0TYLeBRDcP7gCf33Otl9tzkRRBzd5UF96cGrLCKy6O/u1AYYZxCRQahSz+5HSxpEFxFANwjxfPxS/bNpeehsijUOMnNf9h8vn7EDA4l5v3LQE6QLnuuw1MLhvBmR53aeSzgjKr5cSQz+EP9oIytvE21JBweBG4OmdQBHUmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqg99LCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqg99LCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD94C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792394433;
	bh=6m1pmm4w0XFs4KLgH6Q9AAYEcxvOerBk6Q6VzjoXKy0=;
	h=To:Subject:From:Date:From;
	b=Yqg99LCLMBrcrHXhSyGWbNdtDG3W6s1IHOuH+plj9M1ECaj3I3wqZuo0p9zGp5UMW
	 PgHHWg4yd08tKDa1qJVl7rf7AYqOZYhZ5EvD8U7UdmNgIrXooHM86BLwHgWnoEPG/+
	 D2TWRvmr6aiePBM9S/m/Ne1vhjRkZpx0fjWVA8/36ZU95aMSmMQAXs4S2DnWLUmH7Z
	 LeBaUhD7bVvBcLDY+1GU485WZfk/nR7Aof5oNuQTFlx6atOFDnHpO84jE4Q4kOb4LA
	 +1cXpfq7NacD8U/j7x2tyiPPjgxtXpFTP8HzX1mSkW5ALqZlJFpAcGKKbyoZwSaXON
	 Wy850YL9P2Yqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93C5CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239443374.26968.4305607535922098448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484c57f2988b8c5aedbd9d86d49da2cf130177addb564ba17d8fb646717cfe55
Date: Mon, 19 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792394433
