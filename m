Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464B62C9D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743869994; cv=none; b=OFJNXmnVOXkn8PkiL4d+cGlfOid+XGYYhe3BWsqzd6eKRqGuF3eZKRS/vjROJ5ujyjv3Sux/l3wBeZq/DQjGlwNfvYO9vvKzylq4UYn6E4J/92/u8yjXuPCsrZbRRfqdwimwyc+Hw+V2w1yExAuuSIagkP/IzPwz+8hw9L5vSI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743869994; c=relaxed/simple;
	bh=d+R0xLrlEmcuXZYO5SmS8mJsj9gM6lSsDNs5ZzHAoR8=;
	h=To:Subject:From:Message-Id:Date; b=WFkkgWe1FInwyvf3TiU9M1ZzLUUkxXF2VER8o5ZCVlGhtBTUdBs3Oo24Y2BkJgv3CeKVtECqUqRrDW1HWLXnEYbErySYt7PCvGCYg5uZxeqiTzooMN36lEfgOy5MYONn5czkM63qA9UabizpNUsgPLVOw6ZLqLUBO9PSjS6BSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvInVgt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvInVgt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4770C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743869993;
	bh=d+R0xLrlEmcuXZYO5SmS8mJsj9gM6lSsDNs5ZzHAoR8=;
	h=To:Subject:From:Date:From;
	b=GvInVgt5iXdq3TFtUgNVmT6A+pDYdchMfrtSyohzftnr0OWCkU4XAczxdST1jyy9B
	 0fGmVRUOJoXO1zj/wiGUWALooIvOq3bErkPtkcgfV7rglKhHd+CZttzk9rJx/C4u5i
	 wAaOnaOqNRdfZBCWhnaGg2mkKzsRKVdSPSZlyqezB9rCdvpdfkqUcOv8ath9r8h3/9
	 RpvaRWiIzrkGPpVOXOGzc3prt6FZ5bqDLMYWRUjDZcjyofi0wAwgdCKXVLiuO+7RX5
	 8EpLvJ6g2ybiTRMvFGwIbanOHYXyqXP3xkgVAh670R3NZDWqnRmY0RLVr756+YhFhu
	 FAXSDa3zQalqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E3C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386999359.31270.8277047607222784071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72898570749352b5c17036cd95fc20a5ea2c3e98b66091d87ed66ee22eb7e97a
Date: Sat, 05 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743869993
