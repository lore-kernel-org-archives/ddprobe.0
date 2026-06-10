Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327973FF882
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781088334; cv=none; b=KyDfktxkCOwLc/CCMzlVSs3R1pqo8cv5m1sro4mghQ3uQzWuAj+s8jYN9I6S1ZqCZM/KEyQ/R07abHFQ0TmnUkYiDMZl0ELZivtgGVJ29q8V6HWPySOleUa/c6cm3Tm9TxVL0GtS7kJW/25OlhjJulBLVn5QY4iaTmAj27cOf4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781088334; c=relaxed/simple;
	bh=PPNEIbKinr6wg7MUI0oZhj3MSHUP5mFJhU0klFtr7Kg=;
	h=To:Subject:From:Message-Id:Date; b=Imf1enZ76h1htMquvZo57jSivgiTjs/yxIz7n1pWIER0ku3V2zyzTjhoYm0nzc1a//4GmZxVk7EcuDVKjC+Q2JkDvcMjFmpum9LMQ/I0KOhOfhP7/uPlwLxhXDsjAFyxh5dYnANrzQHIWOTH51pebCFjkm2SZxQR5DyE1F5SZlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjJrHT3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjJrHT3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69A1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781088333;
	bh=PPNEIbKinr6wg7MUI0oZhj3MSHUP5mFJhU0klFtr7Kg=;
	h=To:Subject:From:Date:From;
	b=DjJrHT3IBeAAZeZ46azkYX8kQ2Ydnke/BkqxDia24xZZeJ5dQASJ6gFW9r68Xy8f+
	 ZajhqvJyCXeVsLlHfcAYUbpWAjuTx13dtpqLU3A0cucmmw8mhbXHnU+i6gjf/kGAH6
	 /1IRJt6S+DeLalW0rIMka2YFLabZrdySEwFggTw9UfRiG1kh/7cYkWrlDPfaKXzDqg
	 CGIeZu2YdOWgOTBMYPLlpHGwQDC96QZM13LWDsB8wJFbuiYmWSlR5vZbh0roPnLQoV
	 EY1kbdeByLJmPwCM6w8itQGmUj2/ECY2Iutq5X0Yyu2tDbeMRdq1HdPca3rH2pgLDG
	 HIdTKPzA26wuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E81CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108833367.31410.9941662640183715026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f476b32a34e39fc8d4988097fa37869aa22db8ed14e6b39afcdd39a64c8111b
Date: Wed, 10 Jun 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781088333
