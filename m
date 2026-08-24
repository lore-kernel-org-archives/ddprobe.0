Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A958041DE19
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787578834; cv=none; b=R+3oMpijVRIPCNdxi7/DiswZUBEnf3cA9112zEfKd2qzVxI+/r/PkqdYEDdtGMkyTG5ffJ4ivEIrKxOsnSkxbq0nE/kPOMpwCDPa8n8B6iUv8lOT5ajBH/cGtzAn8KEbj4akO/86m5yIO9hPAp+ufadeR0ByPn+yr/w1lTmCTbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787578834; c=relaxed/simple;
	bh=+5uxIlYpBU+MFgQ/0czp1cve6ZZNL3VY+IMxlLtm3Os=;
	h=To:Subject:From:Message-Id:Date; b=PJAkEk4VD2tNSuokwXl4NHH07P8pMH6srLN9J2isAvVOtAPjeJh8TQkLBBwNSjQFG4E9tO0XycHSre/68b70vCZdtEsGOlpyjiZ2oyk34ygTNkL0peRwFJjuG5Y0tujikAeGMsqE/J0RWciozH/rbyAq8O1GDf6vKLI/4lkU5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njBzl74B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njBzl74B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEEFC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787578833;
	bh=+5uxIlYpBU+MFgQ/0czp1cve6ZZNL3VY+IMxlLtm3Os=;
	h=To:Subject:From:Date:From;
	b=njBzl74BeNpM8GZU0pDH1o4Ebag3kIV5SLj/mX/uY/U1NtHIwTkvbwIAUTOQ4PsNb
	 UKzJpFwJT+8XrvBEoh/8x1HVn/DhZEKN2frDzE0Q++oy/WozeaxzStHIeatFZya8Jr
	 eEOrHYBNEkEVmfDVdKXtYArlQa4laaB4PAPKnydzDR1hzW8JVHIiZtRo2AoBlpdWNF
	 7JvEhXwCvOfvKIYpJoZoaH1idUQOMFYvVhKK3q5lDU9r+gTZqbHHdmA5wLP9JQxEFc
	 pgFoEKM2hDMDuGIHhHak0lrQIdgn/gdb0+XkqA+4AVgf4bYAnEJDzMd0B38lx7gNng
	 Jnl6DB+VXpBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB493C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757883369.5017.10666369097651214986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e86ae17308d06ef4b4d0096f87a1f208973a79931c1b1350e18fa110cdf026f
Date: Mon, 24 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787578833
