Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1B31CDA08
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727861754; cv=none; b=P3ZZFz+iami2SNW5MUMog4edf82HfGkIF809ut+Dl2RFr1k76zUmmEoSkpjcSAV3QbyYTs1ezyaCiA0MuOLKVuX5pH28iIvKaRxSBDFdoo5BEOU8Vk1WCjHryt7tc2OgMaGINpGmshG+d89/sDsUWmT8mMxoTbD8CCf+RqzHs2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727861754; c=relaxed/simple;
	bh=89IyvZe+r2aJ6mT9qBFF/KrlgHN6iLKyIYBZnTmGM8g=;
	h=To:Subject:From:Message-Id:Date; b=P+4KPldCFBzNBjoNBtQnooMb8PrNHOXeapzzZuq+8sFdazXPSfV1BJPS3v5a2bWov+u0J23CwXX5PYFNjhThSQw4mb1sKMpqZw/V15Ao4X7IMQGnWR+gw1yhv1JG1xm5OV+vQ9hNEFgvNMUbq1MYBFcUjfSFT70ToFXbEPPxP+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0QNxGcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0QNxGcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ADC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727861753;
	bh=89IyvZe+r2aJ6mT9qBFF/KrlgHN6iLKyIYBZnTmGM8g=;
	h=To:Subject:From:Date:From;
	b=m0QNxGcP0fPIvUFs7wARca3GjOlBOugXtE6F8W7A5HOgWJ9Kv1noID1g4sxi7GJfJ
	 rXkucB5N3Irp5sEZFIyVzbhU6kE+XHBDAO0VHFHE1GID95TcqbuLSNEajWz36gAoHy
	 sSfzF4FH7UkBVWrkywKDvjrbCahUUi+LRQl7hRYjliYGGHZg0YfDhsv4n2HI6gxw2Y
	 wfzJSLddJ++d2FvUTYB8nCtPNi/n41mA71deT6c/tGaYkbHEQrSWTnueyptygcex4v
	 muPwYHrjU+/XUFNhflHi44CsIdYbIgP+nNSORQDA2lCAlX0x3UWloYWUhiUGXsQNtH
	 llZ/7fZhbQ9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF2CF31A9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786175360.9642.14556397851180570934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8365c0e7b4d37beba8735d954860943d1e81d407b894a2ce00423c19c36440f
Date: Wed, 02 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727861753
