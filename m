Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389618F58
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735746954; cv=none; b=bp2Nx+3qKOfTb9BE7dPo4GiV65FTn/OXdvE1GwE9loY+h7igIWrh+aq+ThjtkQ+vRX1uh05yWXD/W4JURQWOBCNcqzqz8F+byq7Z9DH6X7NBX8ICDE97NGtVNcnWK+puFpTzhY+BQGWJsgWz0CLhKN+BWXuYj2lFQbsX2obNLxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735746954; c=relaxed/simple;
	bh=IPei/atT6zf50lQ+dpNHs5BH95QE7RTxy6XiblKVeYM=;
	h=To:Subject:From:Message-Id:Date; b=OI3/pxmdNgEXfliJR/ox+VilKwq5ywCpB4PcDOXIhkN2X2K6wU0zY8akMQ46I3HyINTAQJYwUTgMqnmNiwiGyYYQNlZqFtWJncwEAYxfJHWyuVxvqpQ6r6lTd+x5jvJ8wgHMQV7sPO8qtgISwZJ9oafbPlEExPStnQGWeur8Ae0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wi4XohKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wi4XohKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6533C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735746953;
	bh=IPei/atT6zf50lQ+dpNHs5BH95QE7RTxy6XiblKVeYM=;
	h=To:Subject:From:Date:From;
	b=Wi4XohKYpK9BrBzy/zAjHkyWEtuHvInrhMKvoAbyj/17RMTArLu9PWEptM7LmomBY
	 C6fVZeudja6LuC8tSoUY/fV8P4tcfv4XAxJIUsKlIVSlFfNrkgdSwuV01jlpqSL7bS
	 DvEsHksaBxAyOCGsQzkRukVekOICrpjK0y/YLzgjO7h8c0bmsONNVbYESiDwTfmZWM
	 XxQ6CJ0S411spl/iJz8mVCKcaN0FhsxUH8MUrg5n6CwiJ1A+0z5FFE0lwY9CQo8CxG
	 X+/vxc00kqQfo0r2Xp7Ats1BfORVb46TkbRZeG4xvwfHpNUr4cd7B/t06EA4Vs2Ir0
	 ORRpqNIa2NTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B67E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574695360.30454.16723967868836441973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e7022a0ba66c0794970a10b5c86433c0e80c83a860a19e310f9c7104fdb929
Date: Wed, 01 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735746953
