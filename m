Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B50175A5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730726754; cv=none; b=IZqEIBlLY+Mr8hBRPcq/Ks1Wzp1SkX5wiia+gQI/WjdDboNovnMbjJCK0zWOp5hxj51H/zzY/M8/jHUX8Ludl/wGgftbIW3LPI3+Oe6DxvS2t7qFIdTc3MzTcT7kw6PFUmExQgz+2Nt76GR1OytdAPQRI7tZfiL1COLlAbGkBNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730726754; c=relaxed/simple;
	bh=GV4GgnyWxZlqfVNYYmrJjIXWGs6WnHQvIqMbV1HepD0=;
	h=To:Subject:From:Message-Id:Date; b=Nt+R6E8ceXc6o6BEsKw57ggOuhrDId2M9Iv5L31NFv3WpP/aXLACGrP5+KWy9yR9Dmdmv6F02dBMO/rLcnGYexfUpYl7bMjicaYbHfcZMfGrGbjzXQyHvMSfWP+3g4+d64r0gUimsFoJhIugmpouuGPGfTm+0IICApumMrAysCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etpsmI3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etpsmI3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EFFC4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730726753;
	bh=GV4GgnyWxZlqfVNYYmrJjIXWGs6WnHQvIqMbV1HepD0=;
	h=To:Subject:From:Date:From;
	b=etpsmI3p4l5r3QA/KiKsx1pbNiG4br2Z3+qXtCdBY+iVfnP9tIWytbzMcC1ZvZts8
	 PlSxlKMrq3DKn1l/iLETFd/NegFD42dT+QZVbp6GOp/rtNIHl9efaDGcEhTOx86snH
	 A+fyw3B5oxWpuW94zKlFg2VXRu25samPGpY0m7QXBghhtwbhT1WiKU5AbFtIV2Zx7g
	 gABxId8K7fXRjFu0dMxAoaCCwMLuT0rM5h1G9YHueIQpDZbNQkO14nvQuxkiEj1YtP
	 EWl5/q8NKBqVJxm3HFjaHd/4HJDO0qXkx9h17//ApXf0l6+Lu95nDDaujWiZFvT91W
	 F1PzjVN8/ukdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE129D132C0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173072675369.10262.17460226621008808588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45705cf288daff977bdea03f10578b027cd7551ddca6bf2b673cdba0b2975ed
Date: Mon, 04 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730726753
