Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5953FD1
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735360554; cv=none; b=ihOD3xRY5/C3R4Rht/yR00rM1yzPwaoo9S0yJ8cVXNSOkPdHiK9j+gtiw+k0lLkTYU7tHa81YLfHc51eKwuUNtdTM5rBGP54nen5AFo4BlY7XvLs1LUQe2pTJ62ApWidZapVsrv/htcV5v91uQ76MkQSS44191oGLtI8k89cv9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735360554; c=relaxed/simple;
	bh=Q9SVYXfnloP43PZ8hrKb4KBiPIzLeRxOosOVyO6R76Q=;
	h=To:Subject:From:Message-Id:Date; b=LOtWVV6qpzfV4JlRJtnQ+UrLchSrFiE9ImnQ+VI9qb9ehpLMPalhc/NDmI4kmW5MfGzArLcnnbEeU8zQpmEjNLFKVRQ3zpiDUjgrTES3X85OjOD0HE0DzHFI8J/6V1FPRyCQihZcXNLn+4XzLWugAIJM1UXiZ/LOTiKIfIcSxrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFD2DidG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFD2DidG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCC5C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735360553;
	bh=Q9SVYXfnloP43PZ8hrKb4KBiPIzLeRxOosOVyO6R76Q=;
	h=To:Subject:From:Date:From;
	b=vFD2DidGovod6Hgbz5TlbtK/rLpahNU0t8wZsOOk+U7Oox2Rrfky88UGw8L1H0DnL
	 Y5ELUEYT09iLY60Og4lzBZzPTIVhR3Htu6eITnNpjo5LoIF7tP96X7hr04wVWWgucc
	 aXVoApy1VJOfgKN2TGpCe5Hgu/fHk8ijAVUUXJUY9vUquoi5kyB/tXKbMDU5dXyOWb
	 bhQcBpl7iutGjAYuQiJ8tU88FK9ro2KgPxiBl+ovHY9S/yDD6VS+GuEWSDQhjmrS6X
	 FxdqZ7fNWrVTo0pfAAPlceCg2abzK1Vv/7079bbNLqN+9IYLdoXpvQ8M12OO5XznW+
	 rR8mKpndHS5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E0E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173536055358.24477.2351934429031459798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3000b74f9d1416c41473fa57f085acc32c7fd4cf59d2c9e56dfd454ee10ae0a
Date: Sat, 28 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735360553
