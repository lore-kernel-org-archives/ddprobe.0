Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1830BAD5A
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758600594; cv=none; b=mhnB6TSNgJkAegjW2RpLRDp9bsa7det935J3PrM+dKmJf91NCiBY1IeVFqekynWOf470DkE8YI0KZo3kku0cMj/qXiF0dtfbKkvmiydNZxhJOkHVAxQYqCrEJH9wpLAE8u5oqukaoToc8bIsLJNfVo6BYzSysm2lOivUiA54aDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758600594; c=relaxed/simple;
	bh=6N0I8jWH3stKd4UomsjM9vLd6ZmTivkpWVa3DsDj++M=;
	h=To:Subject:From:Message-Id:Date; b=Mvz/DYRnWATHcX6ALTJ4QdMiC1RTWaFBxsPALykM8B/D6TzC+QpYmezb/c+PIKQT3MXVWPzb3sFF/gRRR05b2oIrtmKeHLpehFZZGLPOWRitu7gbxtfC+iStdpP4Xo6DxyQJPjri++iBDRoX59F+7aNX58uy/i5o6oZN4UFf78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT+sj+7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT+sj+7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B0C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758600593;
	bh=6N0I8jWH3stKd4UomsjM9vLd6ZmTivkpWVa3DsDj++M=;
	h=To:Subject:From:Date:From;
	b=JT+sj+7D1VAXagimsV2MZD04hxpSL/rPnz3mSxm/qHX5TCkYsLCyeYjTBfdmA7zvE
	 cxKGDxeRmqks8emhlwVN6pI7ufzhJ+WWDkcLLppdXN/fBrPUKVp6eN27UTbeZ5zS4s
	 HbziTalVqq2Iu1GNQ0MTv45OMO87Rxru/m3AMC2AazUqBI7k7+BUOgUzH0pgdFt4Lq
	 QSZ5FOsK7qgbWPH3AquNOdzwNu8JJjy7HSK5Ip2iwVfhYbiWUWlHueINES915KI4za
	 l8GD+OUOsH8LCgNIJEY/zjFzJ9jhqhz1epST9BkjGwdUKKhbwD63+/2hXnVDEXRPG1
	 Zyg2bJKgEFWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A2CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860059358.14254.16267437199473672383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068bb2a80a86400baaedde0574415a67f482511f6b12ec0004bc76037d5400e3
Date: Tue, 23 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758600593
