Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CBD1D958E
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738953354; cv=none; b=TMynmlhYrzsVmLhsya9MSfE5NMURg/+YJVwvDHVL4QcrJQY5tNpxKl+EaCUuC5+ULsOGVgSb6nYxkJsKd9wg8DhSqBQHogzWjS6Owo1miD/JHxDhm/gB0l9sv+v1h69d5/TrmSksFpkZO8LFgebBMHYDwGY+lU/cZJ8ZUze9bhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738953354; c=relaxed/simple;
	bh=S3IBafuKTamlU99CXGrluCetl/z0K6/h+6QaO835oxc=;
	h=To:Subject:From:Message-Id:Date; b=iVYrKZwI95Xgw0Fhyq20k1DFDBnOZ13Gh8esRxlwXya6t5ELVGrW0B7Ckwh4TyL779E7301PRGIUe7KbrtXyk/UxoEM+RsMWDS+pMoBCxpp39Dgo9g6Zve0uOW0ouq+NJsGjM2yKr1FowsNWRbQb7vkj/Q8g71qhGEiJwwUw3kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5Pd0K9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5Pd0K9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC2CC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738953353;
	bh=S3IBafuKTamlU99CXGrluCetl/z0K6/h+6QaO835oxc=;
	h=To:Subject:From:Date:From;
	b=i5Pd0K9RpxEidTH1iVkfqII3Ym0r0R15a4/XWIymFwjf3Na8U3eH4wO8YUc4Wc9PP
	 djKM+wThgq/Uec2YOUgKYJ3BP8Ik6o7noYGZVOV6xxDu6x33ir7vqPsimeMidoDGMT
	 2/0Yyk4IS03AZFBtmPt5xJrL3WEJmiChO9sRKkqCGTgCF4o4hNoAytcd5asN+rdnAB
	 /07ZaDcbGJsmpophMx0Z64JM6HUwUgp9I5biLdDouijZVIfUmTM6yuULS7BmsqAapj
	 Naykyycbplsmn/mdpeaGrV2bUh/tQwYl5EQQNvQq/qls1Ra5/2coHG9f9VCH33mNER
	 BQYwwdDhkrUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C0DC02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895335367.11544.14082867694268803202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f1de9fb59ff47c4a9cc5727622e9c7ee3227ced2a6d19283445fdcfede863d
Date: Fri, 07 Feb 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738953353
