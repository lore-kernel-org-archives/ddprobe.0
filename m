Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A8A46AA6E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788426034; cv=none; b=EkKyrvFfVPXT7oetg7cCSILQ5QuyDrqQGfUuIATJ3u0eMMRuOxm6bhNtktpkN/ciU7+sEpf8Ib+6DA2O16VnwX9CewLj17/cAu01VUoa7RWWmCHJxXrPa73vf6yDsh5yYcORqA3u3sUxTS0Nu5syyIqIw7+thETNkW7DbXI+vLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788426034; c=relaxed/simple;
	bh=/TzCg7OqZZKsUWqZvujbVHkJe1j2fMrAyEQY7Z8Ensc=;
	h=To:Subject:From:Message-Id:Date; b=SiN2BFdj05yhFkbkiHpfJSV8mBWHKdhq0WUW8Z2kAiYMW9bqKab8EUg9FaQRDH8ywWyeNNbKNLwmIo8JsksFvtoFuhcKL7hpAirUblsLJoJtnrrFAo0VesFIbEEL8R7AwwVKUTRinvht7+SIhY6/x+VszyzNqXj17MBoExgeBO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN5YdlbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN5YdlbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B08C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788426033;
	bh=/TzCg7OqZZKsUWqZvujbVHkJe1j2fMrAyEQY7Z8Ensc=;
	h=To:Subject:From:Date:From;
	b=oN5YdlbKQqCFNZL4gIoCl5m1Urq1qHWRJynROjtToHwlOl/Ji918Oh2SvSWD9opyP
	 Lx+v3RtAcNoE8clSR+one1hzB4+JtlTnBsA2HtMaEkpWzvm12p7C6wyk6kJ1cVfAy9
	 05NyJXGfXUEVqSFdDtUBmZKtZ6i8LMj7jH/A0Kw1oAqwbOHHQtHmME2hioM8DhqnMu
	 7QShLMonqaDT/0WaaUdYs0wrfUvxOd+jD4FI3jhF+k0jhpyBBtN/Tk8VOeWHZheVbB
	 7y6aauMTVRJ3kpoGERZOx3l+iCekL14fPEkzKdvz5c5gXrrp5Cbk0CLjgp7xbOrUVs
	 7hDxLRm3GvGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D1C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842603369.18183.1736464851531639987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0ee06e5008f905e9b58c66b3d6acc541e524a3840930cf6db77461c056c0ee
Date: Thu, 03 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788426033
