Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9361BD512
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719957323; cv=none; b=VHjvV9IBbbRJ8YWrFdWM8cotk7ZNBotUna1p66V8PadRDeMkSwci3MJ1/7MDMA15BLYFLe4nJ4xk/P/YnDE3yG03eyzjK/dIPJR8xZ8T05Axvz/jwFZqjFmwKG8TnF/XCDtSXsnE/g9/1W2Hmj2ZkBjYektWMgVq5R6/CCW3X8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719957323; c=relaxed/simple;
	bh=3Tebctd4t3nT4/pZdLZvUT1xYM36+oHqm3advJqgNsw=;
	h=To:Subject:From:Message-Id:Date; b=myF9apbNiwIbCl+PyVi4rP/Bj5Kllx5e+5of0A/FB/YSJWWe1NJP8XeD1fEoeh/6XwX0SFGRb7hgBgnZQlTzu96H5NzOkhEm1V4GHcu79PU253yFi9IvpWm7vs2IRpTL8D0sivsNica8QHMltCeoCGHrXkUrl5CHHXBLkOyy2E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4C5979W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4C5979W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38F0C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719957322;
	bh=3Tebctd4t3nT4/pZdLZvUT1xYM36+oHqm3advJqgNsw=;
	h=To:Subject:From:Date:From;
	b=Z4C5979WPIRKlQNwNQbZxVKGZaFUy35zFFdD7Ae7olNWl/Ri0qIE7ZwKLfEH0WK1L
	 CDChJTFSDxnjBbVTgCsOsBwh+o+TH04QQsskT98/xe65HKsCHefWtUbm1vg/e6PhoZ
	 Qdwu4lakvHjvOStTbXWbLE1HUMfanX34sLfH4cPDOnhFvmJLUzMQ4zgzAh9BxMq1Hv
	 UFAcQ+WCm9hV6VxcAzrfD9yQwNhWbiTqy6//OT0smWXCmCTQJEEPYxjpMXdiN6RD/0
	 +EtLJcqvvbBuCIqhqC8NiKiPkEyjs0hOCLN8pdy8c62JgEByxIZ/uzpVxO+qq/Asfu
	 slP6EIoCq/UaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BF5C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995732278.18096.7235405754802413311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3552b99d6845ce0694816dfb8b2319ef13875f8e94ed22c11204140db46eaf3
Date: Tue, 02 Jul 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719957322
