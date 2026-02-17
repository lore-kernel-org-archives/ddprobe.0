Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1992B38FA3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771290894; cv=none; b=arhIVVzHmat8k5l9R46FCrPt9wZcmug70RzZtCmi5TrhCoEPulcQN9gQbwoc9b8+NQpdE5a4n2rCoOvQOec4eFKNFLUfFdDKrzAHwyOyvtbcaOk43brl0H4yoW9+sMi0j4LbUoDdikiJDszmoYm5ECG8uiD7BNoTCvIOjWpbvNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771290894; c=relaxed/simple;
	bh=IiGn4ttFINF+0KYhl3r0W8TmOC4B3idDCoBKl0KtLcE=;
	h=To:Subject:From:Message-Id:Date; b=GmQruSzryJMUcTWKl+xMVOU1ldp99n+uCBQV8QS+/iAxLMxyN6RUcD8ZPT69POSfM7dB0W3HjBaKWr2aPXhEm732lIbP4ZdvHCije+4P+z96c+BljL5U9+0+g9MTKaHx01soTQCRYo72sLPTWyxhJZKAD034VS1qMEOLstRw4Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X++gbVyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X++gbVyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B43C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771290893;
	bh=IiGn4ttFINF+0KYhl3r0W8TmOC4B3idDCoBKl0KtLcE=;
	h=To:Subject:From:Date:From;
	b=X++gbVyvOGgIpxvlc83GkVf7AS1PsCRhJjhDgJ1gm6Sm9xMjLBCkV+Xm228Fz7pT6
	 MdUls5vNr/VMRwGwkjlJKCqPjrpQEKy+32rKnufmvvlcVWF+B/mt+pea6KU/Tacnm5
	 T7IlEd81hF2rx8uJu3ydjWTnkNfEmkApUMulUzzIlh7OXxuc+68yVi1PP3qOoJpPwB
	 Fqo2AmX0brVaN/b6dArCqnIQ9Zy3oKu50DJEGpewei+oTE830EiYyecV6NNjole2kw
	 rRDdYfLl9m8UCxEJi4UUA83mztMNQHUGBLfO5dsKYV4uIg1FnlfL3bpayMftGUm0X6
	 ANVnyR9KHV6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D93E8384B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129089358.15448.10534495752298325867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87db1f3aaf3bd404a11f84b7db6144402c651b43dcfc0aae1f12139b3ba4ce39
Date: Tue, 17 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771290893
