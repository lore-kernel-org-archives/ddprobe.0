Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4D1264617
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774396494; cv=none; b=oVf/AhoQCctuMfq0mdJJtcBpqX/uUvPMzCV30ACa7JizvTJf4Adkt8qiLUBF4tIr8Bc7WLbjptmAoAvJ99o+sB0N+JGGuxaqlGPj+ybT/pLoeTTX+xiS6SuJP0cQ9Fn9sfgol2DFPqgT3QHpYUdoyms/1BveASxAoWQVt4CuC5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774396494; c=relaxed/simple;
	bh=NtFgqijtu+d54aBS2J197/8chc2hqz5aXb1hvcHktfQ=;
	h=To:Subject:From:Message-Id:Date; b=i29J321Y7UHBdCVSWjbL1oJG7GVlSyHsUb8GdQmQPWeA1qaUQbyji8hoknvhIqrW8g6ZLN3Q1lCT767X7Ch3aa+f9HwSfxUA45xXrxksvWvXq+RCkCv0sqU6h6oq3Ti8lBv3gZA8WSXSuAQmIxrKmU30IyXk59WgTRQVevPF49o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozwhA0BQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozwhA0BQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E572C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774396493;
	bh=NtFgqijtu+d54aBS2J197/8chc2hqz5aXb1hvcHktfQ=;
	h=To:Subject:From:Date:From;
	b=ozwhA0BQ+AuF3tJRFGcJLPnScfa5Luiruh06+VSR0EjS91L82TLsL47DqitP7hYVs
	 vaBih++Otm726aiIP9am1bW00e3pSFclDYCTMG/BFLTOO11WNWQ2q1yPuofYIsAWXn
	 Gd17OuN53Zf+li5Yir24UjXDbNZ3rWNb6s5wUnyiWe+Xwq8uOvPLxkuKY/+kL4gJIr
	 PjugkW2QkYXKFSABGjLaVkxDefrbSqpWpr8hQ9zPL6lBj5Rr1tZTyMTL9mAjiFZhwG
	 4ls7oEarZucgvHQLpvTSucr+VJZNciKHkBGXuBFVKxZNwuhhFHzMVammIpbwthKZ8m
	 D2ZVZeGoNpEiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90604F54ADD
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439649358.20919.16763434397262049706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8428cffde722e91dec6e623c01016f2427d99ba9aa435c006dc8759238e8865
Date: Tue, 24 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774396493
