Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B59122094
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743902994; cv=none; b=NFJNR9ch1JpGQZBNzgPe7zuGSmIH3RNWBdVwPveJ1pnWpez2K7tPaaUyizK7yVIIXY1/iI4eL36kx7DIQYv57JEYgBozo3jUDW3zTII2WvIo3udWOtmwLBvuG+fOsR4vWuhTceSAPJJPxsxR6S86QBHGSJK5CFj9gd383ltGSII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743902994; c=relaxed/simple;
	bh=8BINkrJark0xBalgVei53hTqFy9vXn6TdgkrKC1qG5o=;
	h=To:Subject:From:Message-Id:Date; b=k6aYE12/s4Jc2eSnV0d2+4nZo0wT9jvaHnVazk0RfrbvCiQ6cFpI5xnbkVNaeRDRezLbPKVDGGk/CWTC4C7owXoT3f2oSkXSuUtopCi/K26YyyhvGT2LwDZ3LhiL1QllV5CeVnwjBs5wAmcodXEw9LGX8QKj1SifwdVy53IhaeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvYA7Tb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvYA7Tb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AA5C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743902993;
	bh=8BINkrJark0xBalgVei53hTqFy9vXn6TdgkrKC1qG5o=;
	h=To:Subject:From:Date:From;
	b=bvYA7Tb7M8GaePQ92kEKfS/bMDBUPmUF2EyOTAdewmZBNwkEzqUAwbrotcF/chu4H
	 1a3c9klekd7Mtm5S3E9lCvNZ4tl+2hmIx3gb6vYNK7eqKmB8+CBqqcJfYlDJ/tGdzF
	 FLuLD7xWEjBjD1qGTSybfetZMMMJmbtPNr7NbL3SS+1hwbeWwRJp01lx/xMADb5NZo
	 30uaROFj/EQgwApviiiAE0HthoEhYlAK5d25gBKt1vdRUA9FwczBA2rfIKespjEOWv
	 KhoeuOZ2oEd0QAu0GHK5h2u3THKu0dWoHtiUAmY8CSWzXpWYS/XbNgOzSMux4ijsJU
	 quaj53gJhK3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D361C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390299360.23129.5204302341086702089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2f04e9fd36b40955d949244cf473bf005bfd32f1809e82de088e4e1c5159ab
Date: Sun, 06 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743902993
