Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79682332EBD
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781177794; cv=none; b=pwaPArseRS/kMa5KcgEUbmGz1vLEd4t+fgLoNkTAhnWclyJOKfjxgAB+yA/+VCtLyilZzM5gdCh2eQNgBdIIZ36QG7am1NlClykC+JE0Acwt9ziGogGOjah+ys4GRdsqQy83u53cwjJDB9cpDZM8yTXpLWgcKwtuSSihJXOLH7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781177794; c=relaxed/simple;
	bh=dBGX4N9eeJQfBr4YHkPXBwYzNseOHbW0lWUQNUj64+g=;
	h=To:Subject:From:Message-Id:Date; b=QK/iC24C2YDQSam5RbKpDYRlK3XGFhh1pqBTyErhLiLMBGN1UOhobXm5pHQbRXPBAqJ2JktgXR2IA0aR5i7sVlYjJW2aqDDfjpBqCBMmpDbFn34U+S7AN+8lroEU6ZZPRLXaH2QiovDb/hlAQ2hLwT+HBXTya43YvRG0zVLQ9Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKJ2MGTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKJ2MGTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CE0FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781177794;
	bh=dBGX4N9eeJQfBr4YHkPXBwYzNseOHbW0lWUQNUj64+g=;
	h=To:Subject:From:Date:From;
	b=kKJ2MGTDdKaWQPoZywmeQHfSzfsZNOlpVbCSx8G5HO2PVWq4gTMkfJDj7xoFVrqGS
	 rdEa/GXYByp+vdMHlakUpwrXQ6lyEWUe7sUMky/KnkoHgnlr2GbqpCZRDGR1ejZ3PB
	 ywAXTpdqyEtLsyJSD+SuGpX4aILHbIPbN8pYzAlcBglvTX9xkJPuL8R69PQcPi4M6J
	 thVZPe42cxrshCAM6djb6M3Udr+ZEXm8PWYN2RXVDsjmtcvAXrKfnSVvMxuF+Oxees
	 KmzNofT0JzD3BAIQmEpxrqVdm4SOkdOPXBg5qKvj5se2qJhzBVhaq/R4yvJCiFUDmq
	 0vAOcWSBqmHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2F51CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117779388.26580.11307151063204363471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1781c5dc9cc837fc442c7dd3aba3775e110def0fe4a4b08aa0fef02625ae357a
Date: Thu, 11 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781177793
