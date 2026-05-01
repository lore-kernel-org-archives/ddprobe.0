Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E161314A6B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777675054; cv=none; b=KlJhNBnOp3ecGXmjMO+x33eETTmHUwt7DYQFn6CP7+9uxBCGnnyKOyjZzYsDQ6IgrK9KdNWgqycjOk5C8O0jmudkyE0PDIv2m9RxeyC0+WQlZ+4vimuHBYaXySovHBzyUhOclxN19QzV4wKvso9NoXyWuCDJZldjZuLb6iENmhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777675054; c=relaxed/simple;
	bh=VHmOAzPfOU+s9Baa1nhhS53em1zeEJ0PCF+UvyAtxPY=;
	h=To:Subject:From:Message-Id:Date; b=C9OmqJL+1vVaHeTA61ajeukwuP8v2kLuLF1vLuTatDzBTI9HWZP0+mnjsf6+KqnwkzUcp2vk0HTeuqvr+xnxhmVvJSLlqylgNOmONSw8okM2DoX3DfmYsLyPKz8WRRoYkt/JOZ9+pjTzi1vOZUSBe1HO9SfHuNOhpHcrZfyx5A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m96eLdII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m96eLdII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F75C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777675053;
	bh=VHmOAzPfOU+s9Baa1nhhS53em1zeEJ0PCF+UvyAtxPY=;
	h=To:Subject:From:Date:From;
	b=m96eLdIIuFwvkUqwV95+Jcj3+f52WNdH/54bvBohjw9Cf+KGzWmeSTfJlswZDQxOA
	 maPq0/Ua0IR3m/d7ewhcHiMorff6FIlLl3vSXLGB+AYENruLAT1lEUKuezKw1QTrc/
	 jopLHgmuo4nNoqdU52YLlZFsm3BOCZzk0RHYzSw/2PkrEN6lcZFy+tjoLtcjfQIVM3
	 n6gtZK/Ks8vSOU9NQQ13LlKABnmpQALAkJb+uwtZMePJMIk/EbqbShVNaYiyybB9R0
	 d1qPKoyrKN21jL6Be7pUp9KaieQGoJlal1w/m26KAdQ6oBrDFyUeiuoySqTWyqzJzN
	 sYjQbERtroWmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5BCD342C
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767505368.4816.5344320128605656208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb44e56e03a4ca0dc780a74095d4c454a824bba1b54a840af3dc823ca3e9105
Date: Fri, 01 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777675053
