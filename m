Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2947318C332
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763916714; cv=none; b=jpDoHfhoVh/u8Agc+HlWFdEceg0UBkVSrEiH3YrXF4e/f07l/ITTfkOECaJKOPFVPhg1dswD+NrBT1uWgUwU/BzcgUxVKtsC4iqYz6zUz1VgzvSWy43qJmAq5A1xM78jytxxKzIRNJSfPPYfX5PPHK9KtvRVX7hfMazhXj/iV1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763916714; c=relaxed/simple;
	bh=74Zz/S+SQEEerAg2KAtaUNcHxcl0sv6DNAWD2t/f5wA=;
	h=To:Subject:From:Message-Id:Date; b=dGGl47Ro6ft7/f/ojhkeLhBYQ+DWoTK/LlbIbwnuOpVk54aV1nyV5wBFEz0uac/Ojapt5SGeUIUc752Va7sMc1i8mb8npQwXIH8+0qoq6FLsOgou08df5dMX4wtPANNGqWnmQdo68zOAm/CLOdk2eMprND8iXthdXJ3mzENJ3Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYKTo40E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYKTo40E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1723C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763916713;
	bh=74Zz/S+SQEEerAg2KAtaUNcHxcl0sv6DNAWD2t/f5wA=;
	h=To:Subject:From:Date:From;
	b=lYKTo40EOvMUutko8add46nrJLLdEaS32sPwA1UWj9mZlRowiIHKU5jRocf2uNkbi
	 i7PU3Kaq3e8dQfBm6fw5qxfU6IdstU4fOyk24lgadx19djvBmJvQxy4SQKi/rW1Y5e
	 pCV31Ll+J7i5/7FGJYMX0ShsfuC1ZyE69Diq1w+ew9AGx82rPl49bnR6cwyQ8FEibs
	 4hNJBAiXnTrxiGGYdU5MFHovn6Igp2B/MNksIxK9t8cpt8kapJjpJ9Nj9NzIzD5F92
	 MmjmwA2kFmnrBg7gXXHVNte0mPlzuZ2LgwRIfYgVgUi+GSt0HyOHa7xgEDT5p4GfES
	 PkEjGhmTe0YcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9929ACFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391671360.20494.8078383959071219906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e68a658870933c2a1672a26fdbccc4e169847224bd75d0fe1404e6290335155
Date: Sun, 23 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763916713
