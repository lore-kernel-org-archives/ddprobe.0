Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD1323AD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758673794; cv=none; b=q9l63hEuqiMxtw//AbXGmG2ZgF9G7sYLKWU36+t0UfCSfypZ9k9bDU+BJfMS+WRS2O9HEexgNIjlT3nIZoBZZxtUdopDMyznH2BdI7RmBvDFPiKckOiUj9Nf0ZU5/r/Ckl3YT8oA1shG+9EKgKJtSAjjgJjH5cLFPMhjIxeARf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758673794; c=relaxed/simple;
	bh=Qutu0hWTFzAEkWJA2J63/w318fUoNLixwGHggn4Z71o=;
	h=To:Subject:From:Message-Id:Date; b=uhZBBHza6jP7gUZ2lJwTBG/l2cv6e1ibZuiPzuEZGzjrLQytfxmlEFZs3KbWUU11q8r7hlPQYP1ooioCYIEy+2dZcZTFOBFYcjl/sooci4s4XKt7WKLH5ZmEBkWQoxCVpotBcQAp5WRTpNRucuSXGw32oi2/opf+Q0QTjICzA24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtkvfQkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtkvfQkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758673793;
	bh=Qutu0hWTFzAEkWJA2J63/w318fUoNLixwGHggn4Z71o=;
	h=To:Subject:From:Date:From;
	b=FtkvfQkppuQhRzcxkadKa+ZhNjT5EDzxpgPoSUNiKzcI/odZPY/y+5V826Qo9Xp+n
	 dXlDE2lJunBQgJvwVqAtu4SP5iX5m76H8eYVAGeal2zyJnrU4vnoPrBeY4Bth18jrM
	 2+Cs+7jh7FXXDgdUneeIXvLX1opGIIU+g0NYlqmNKkHuPJD46iVWM7B01HWE/r2WrX
	 yCviEaDnQiuQIuR+skUv4/O9FKpRL9ke3l6/seOiyarV8Jfr3S5EwcOaGPIZFPAnGY
	 mewGJsJn5VMOO8sZ1VlOVpRxiMFPfwVELlSYvonh3PmCiHs2JF0tuQ3rlQXVIck+4n
	 5bhVytu1ddXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5CCAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867379358.26706.8160287395041626059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba4b878b01f8a5607f4b64aa25f96f8f595fe066b35d1e26ea5c471c1e4417d
Date: Wed, 24 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758673793
