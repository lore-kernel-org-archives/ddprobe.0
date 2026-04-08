Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61F237AA92
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775680534; cv=none; b=pwq08XuxcKqKE2oOR3MKhcDAwEi4sL6o6l7wSX4oH2C6+Qe56LErwtJwd+uUm5bDGv3dtxN5EoJFD5dpZ2fvw87HY6nNxp9bdsl6ZOpr1MIuLzdR0lvERfSrfWjTRoI1NRE4OGVJN4E0nYFUatDsYEsbOTRku7FD3seM0UHHB4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775680534; c=relaxed/simple;
	bh=LMkzBhVFwxWyXaGFReRgOsBtVKGlbYa54LB3XUASLnU=;
	h=To:Subject:From:Message-Id:Date; b=EgZng8r9vK5J+KSvYzOJAnj+5TDigeDOF+G8rUgpfruUp2sd7WJJ7pAb2LzG73JS/dWpq1E+M4P+5uQYUUTocDy/C8NsltzZTS5zoVhwWM6WW31/J5r4sS4FfXqcHpt+LpLwLFZhInwVjT/AkEK3sq73IdZtz65UkzxzwpVyjqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzOJQan1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzOJQan1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA85C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775680533;
	bh=LMkzBhVFwxWyXaGFReRgOsBtVKGlbYa54LB3XUASLnU=;
	h=To:Subject:From:Date:From;
	b=qzOJQan1Zo32tAnX4b4UGjm72fhY21Eo61sJ0Nlsap/Avxcv39pBlZWDsPUe7S1x6
	 uRML88vPVzz0Ac+Cu1kY+Dz4PxhUZqiwXPRV9nGMLIFn9fJ0sAWTbXH3r2R9QuOiba
	 i2905tni5lmCGgMHe5c+zK3SdWNEyFBIkwVFFXQiAKR77P6MfQHAD+6KU1aEFxUnoJ
	 joLCYwrTqhPypwVQOyb0aoHKEygGblEFojxrimlWEb3hUkuE7xqT5cTyvPfsKgcf7q
	 zG8aKgW1bS1lUDYwT9D0s6l5Qu71OtZRWo843X1p9X0oFBeDb2HgGqPp5ZeVr+b6iH
	 GmeEObqry4cyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EA310F997D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568053368.17650.16396645678729004310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b48d94c4b0964894a86387a4a3041e738d2f046afb11c7300bf1df76d2fb84
Date: Wed, 08 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775680533
