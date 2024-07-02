Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D50174047
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719905723; cv=none; b=QDEkzC0hwWwqBQGo3fBKKfYNeGLxPBZwG/Uw/WVOcgZi+Lvwi5xyvOEkuw0kHWjNb6zr1S19sh16S8Rl2laRSjyutrUN+IhDTWfKBbjtR/6eFYMwjK5BJ4HpE2KbyL9Uhq5VFy5Q/0JbcoPdSVfQSC2Ga+35E38tGGxeyJPZG7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719905723; c=relaxed/simple;
	bh=kfxEbF/pwKDBfQJ94OZfja3T5s+MZtvqrcpFGzipLcE=;
	h=To:Subject:From:Message-Id:Date; b=AXfBqgkkm7RXy+C1JlXaym4+3DfZCFl8uroQpH1d9AizQ6jPHSupLIytzjSZpDZiHbnJovHe6Jr0uYoI0UPgO5sME/IJObOC+kxuKfeXSLSMxL3b3xOCLZt05Fi58HcXrjzFeFWNh4U0DLZmGuypAfByA63tHqpWx6jo6mve//A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTkbzIn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTkbzIn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE732C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719905722;
	bh=kfxEbF/pwKDBfQJ94OZfja3T5s+MZtvqrcpFGzipLcE=;
	h=To:Subject:From:Date:From;
	b=WTkbzIn0fnqvRxe/zWiRfNgFt+dpXB4b35WBXxLEeIag1ByaFIA+Bel4L9zC0kXXV
	 GTARoWLS3FHrYQhqChc6ONSXHKdpsNSPbURzNDTINXrw7mYq5Z136yXYE2KssvSCDq
	 AW3b3uJg8Oe2Pwgy4ewv8gW2vSQpCaJ+fm1RzzBqVNhQXO96qmr3omwbcdzvBsKuzw
	 XRxbZZzJ4LfXyqaG8T5504/4y5nFdQCh5Tn68XTkuICYJVSn9nnVtDGKJZeumv7bhR
	 4/pmni8IHv7KI2qkPwJS2iqN8smRCzkHy+UcX3rKegVyP5t0PJ5PrRnG4aEnCKfXuQ
	 30EFChsU6N+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCADC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990572277.27184.11301571765804543279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d982079aa39842b6616e5a1c2698a58e0560b84154218df73165f62a4f7cb0c7
Date: Tue, 02 Jul 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719905722
