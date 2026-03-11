Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DF1282F04
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773195894; cv=none; b=iaTsdVouwKpYqWUCKFFAj3C4mPdLuQ5byv/X5jrf0QAf4N4GOWZPmIvbMuC+SCol6uIc4bfjyB5+AbgFgfZCEFcwxII286OYbJ9Ju/9sC4CqVyFTgjHeZjSTRlqpnhPt/mjQ0XHHnIhXHYKd2j8iJF0aWg244QuReGYPFh05wGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773195894; c=relaxed/simple;
	bh=6JGn9gao3vSfuU4XQ4o6YUJYBvMBiVkpA3kp39DmtkI=;
	h=To:Subject:From:Message-Id:Date; b=kkN4HyOVS6P9rVV+DI0+QCJGmlpe/3GA79Nn34uLXhLQ98IzzIwRMyknGubZca4mryX1qZBrpeQw8KUy1X6DeQ349CFp22t4b+sQRgAITvWaaLsiydbaS33YcgXGDtLLDOdKtacpbCEUAiCfJ1LRgfCRa6QeIfpr+8a3m4cn9q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkeOBw40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkeOBw40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60DC19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773195893;
	bh=6JGn9gao3vSfuU4XQ4o6YUJYBvMBiVkpA3kp39DmtkI=;
	h=To:Subject:From:Date:From;
	b=VkeOBw40Sxb6juzcR5ZsQEOoPqBNuzSrSCAt64SASU4QkvS0yV1YS4GSKIK6+Lt6T
	 rANmVq7gOmB1W2dK9i5r17imPB+fcssxS21ZB21W47ka7CYF77L7+c5/dVppHDgPI/
	 swIBjvBLYib9/UMISMEuppxu7JX7C8ucW4bmZYYMLkbslb3PhZJkS6P8t5hUPjZZEe
	 CUrOZv0Nul0JCO0Xune3+YsROAtYQs05uybkjsA6rasvdD6y69vnG95oRL9v1JFKH7
	 OYT14S51GnUHWyjL+W1+RmxzE5TFufNky6ASE97Hmu8Jt/kPeASjwpIKey/b1PiTgE
	 DpmRJuAfOK/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90667FD88DD
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319589358.20081.11050366710436482803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e77d3fe2b0190cbf9ee37808b20cf4fb1da8cb6b1e5ac44581ccde7edebe8f3
Date: Wed, 11 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773195893
