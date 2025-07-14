Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC37229B0D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752525594; cv=none; b=g+ov2oxL8nSxj8AWlA7KDVPrm/51sJraFeKFqdyk4wVycHQfCwjQlTTjPCtMdc5ZDABQnCgmpA8ueBGOp5nmjrpHp+tc3kfyiaDDC91DVGAWbvSHFlUL56NIdPWhBv/hti3tHwAkfnEQMKJkBDXZsHaJ7FRXD586qpKQ5RhxjTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752525594; c=relaxed/simple;
	bh=LrdFKyxwGSP+XshFvlvRWZkGUyrW2qa+nWOKMHe3Hgw=;
	h=To:Subject:From:Message-Id:Date; b=O3rxa+m0IiweXKkdwBVb/f7QZbwz2d7/pXo2Ijxnappbt4/YYXzzyUWppMJbrXOmq1ptngfO30oD5hMJBa99ENmoYJ1FpVH+Sd80YmjE1XJjrXm+QDnO4WUuI50gdqybH6a0KayWvB7fxj5SD9kqGL+X7cau0ePdtzoxTFW9ctY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhTo0yCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhTo0yCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96F9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752525593;
	bh=LrdFKyxwGSP+XshFvlvRWZkGUyrW2qa+nWOKMHe3Hgw=;
	h=To:Subject:From:Date:From;
	b=jhTo0yCUL3boP9r6B7qeMT9c+8l5PvhbcrjDpi15N6YfUJ7WLmqjN7J9cDYmy+7+q
	 E2dJlRYbxy0fHusV19e+dyjeAjO7YvFmyG9fbDqV1EGvVgVZ7jJt2a9w2oQTi/DCJK
	 Rfe3aCrwWID7jv5yRQm+jgEYeVLd4qTtvH3d+gJ39TtZ+aHp+7QnmnWdqQPKr6GeOC
	 cpNpXKe3aCpfrTkc0OxBjk8pfNnUSO6yDvIBLhCEwTzgXenc6R1m0NsnGRUNrDfs9o
	 zrKFQhPM2fuvP3XJHWNANW+9jkE1nNJY68TfTz5CDPf7UXA0iVqYzIHZ5sSTlWQmCH
	 Zw+3EtNhRneJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A10C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252559358.7665.3431610679672049214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afacd6d74a5b6d34564f341ccb00ef62dfa496bcb9f111f1432243011b195a0d
Date: Mon, 14 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752525593
