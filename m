Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDC114B086
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757122194; cv=none; b=erPUyXoOPrwLUTwmS+GXV4JhJwn0+KODdHb5U5DqMfxw50qaBA+QBMqbTBnNPypnY2UUV09k0njC6PIOdoGeyj9rJ1vQ7z4yoClxworjylgk9aNwBDaflhvrIgjx0vsNKBhkFr1KUivHhb7sq8fjXgUu0U118yQp2TYwDtf8FqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757122194; c=relaxed/simple;
	bh=Dt+eRemmtRjEJbqXs8Ojudq7NHOfxMyGEubgOHKPHII=;
	h=To:Subject:From:Message-Id:Date; b=Wu2VuBB8Dj/JqekbVXbFj5VwNa5Gozwo9lTltC3G6ZcdGQfjy2FfY5cunpc7ReZyVZq5V2d0mvehicrOJCZhPUM2MVmSS1Z37z2yEABuC1nC5f3TQlnRkkJ//+r1LcCyBi8ulJ8lctUllY5FH85sztDC+VNa9Dbnv8UmZIM6SYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0wy65AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0wy65AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757122193;
	bh=Dt+eRemmtRjEJbqXs8Ojudq7NHOfxMyGEubgOHKPHII=;
	h=To:Subject:From:Date:From;
	b=O0wy65AIzhqsHEpolIgs8aZZrMO5h0qlMXG7sSJ7sgEuUlQtmF1ZgOoaWk3+azm8L
	 LMw1uP5Xfh0ZVXHD/WYf1DvLzt7RLlJeAdGFQ62yWpqJja3/ghCgwSW5gRDFpckyRu
	 ciKj1jYu0+EMQbEYjTgPBTouAF3U7SWd3xm+nNm7CjLv8Ad5VG8iC0oXttOKVRvFi8
	 RinHzEp7NJvAa6EcdPD5aRoiAWow1iH34wLQGjjl0Sp8iB7t1FnyLnKOitHHnppyAB
	 5SOKNiO1sAnEeMMbuV4/stbFHVS3UGn3JKrzgbMWF3hB+XtjuUQvAFXSL71CEcDhTr
	 SCGxRUqcpQ04w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92484CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712219357.20297.12485765469331824404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c348fad94d35f4124262666da363d33e57b372dac17568b4f3a6ec427fbf8d
Date: Sat, 06 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757122193
