Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3D326ED40
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788059434; cv=none; b=sU8ZiuFF8N1Sfu3CvHf3yp8wNaz7WyyvAs2As3nq4az4SxS0W7ylzOvYLzHbkJYSWv5/UvKk1Ni+b5cnMuBj1eeUiB5aSy+9mNEuOy2nq27JyPc3fxLnrp6Czcf9h+9B9coKU1Sr7VXZwUGJxYZoLAHGzr8aHQcEdcOi4O7a/sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788059434; c=relaxed/simple;
	bh=sDJwQrbk6i5CjveReTZNqIpxabcd4ZX1PQpizO4glbE=;
	h=To:Subject:From:Message-Id:Date; b=BLCSBFZPUBH5Y2rqO7cEJl2OOXB+azQrJd21HeeXIPQVXAkw+squvK0bFglGSSm/5GAviVkrTVBXRskTQNrgdimzV9OcaPfPS1ktxeYxJFwufmQAxqM3TUP9ytcPOQjXWgrQJDNaP63LB9xip/AlCvjnLpn1O0ynWKjKTUUPtDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE93wrMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE93wrMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2E8C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788059433;
	bh=sDJwQrbk6i5CjveReTZNqIpxabcd4ZX1PQpizO4glbE=;
	h=To:Subject:From:Date:From;
	b=dE93wrMK/gUJvfC2yZTxkDRg8XWJhELnI/txz26vvgzPQKv4nbFBtCLbrxQYIyv/F
	 esY4rRtblfYgGnI3z5/WXAv+OcXGlcGoHdNzAV1diz+S10e58xz8SRNiLLQ9YfLffj
	 EeWwc1/VTgqbK3yMcE9iIcLv+X3Y4/dy8cR8pIAoIAfxv1OYtakJ/u7+WnxAASLLdD
	 oXVOPn1QKh6YTEqK3E/R5nsREsS6qBoQAhYwvE0GMX2LY6VEI1ICb3TBelUNFGWpsJ
	 yFuno3CFq+hbS/qa62M/48YJOI8UqMgGZ6F8JwsgkCZzuqnGSHNu+T8QxcTgpNSXJS
	 mfLmkXIUmkFGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07DC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805943369.1175.1095950499912921557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb0956043ba5d1d48dcc81ca101e17cde6648d591cd5ad9363ba28904ba690f
Date: Sun, 30 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788059433
