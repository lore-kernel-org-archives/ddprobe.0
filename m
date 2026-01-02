Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7923C4E9
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767387834; cv=none; b=mDr3e9Cc1oU9KpyUMb+QGWXJGg8BNbJ5r/ZYRkcKApRVGNfClezmFl6hCVAO03W3Q8iq2zkR+HBIadBZmqnAfUXuvaKFr6QVkIVknK2FUXnfFJqN3IAlqV7XRXsa3fNekALAf8OJjA9bowdRsFXzVnGPIs2f6tG/VtVGOlPHMuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767387834; c=relaxed/simple;
	bh=adiHXczvGsQ5cStwCf1GkCJBPKWxqTSCWvUYF4JmCuA=;
	h=To:Subject:From:Message-Id:Date; b=peNBwQPGw6Jnv667DBWFQ5i8Qch3TG7Ag2WpsllWy94mae7Eeky/ktLEmMUHYTrx4fZ0TWGlkBxJFbVzadJ3placpGJ/v9MKziE9zMYCd3+6LDNatfyE5pXjAktaVnSWl0qV7InPp+voSJRcQm5l4/0HxML7xgokzsXK8AMmpNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKB0uLg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKB0uLg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767387833;
	bh=adiHXczvGsQ5cStwCf1GkCJBPKWxqTSCWvUYF4JmCuA=;
	h=To:Subject:From:Date:From;
	b=fKB0uLg9+9S7Rz+UOdzIctABln6JIhIuxV6t0WBnbWeOO2DXEhJJeHRqZTyAgfdFE
	 TDkbC8hgmGe6kW2/9Iq0JY0Wy7vx/dIX22mn9Zp21XLzgf05T+bioXa1efJY3LjNyg
	 UZs8s41uNhrhlIfVU0m7qLwQ+IzA4txDaCJoNLeewhF0U/N+y+CmYJdraJdi5IAbgn
	 4o/NYcNE0yQDI7Ah6n13Nfc6LAmzfnadr2W5RHUvfGUH2EiRRafLzODZPbX877ha+s
	 F0rmJ0gj5gW+PTqjlnDfAasuvkcPuXG/RtnXWznL2RlkTcVtS+MITtc4LZi+CbgfW+
	 NdEOOOyFHvxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E7FC6160
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738783357.9500.17781006316058120508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47517d269f35ad30917c7a884e3a13e140999d2f0f8bb3ba513a23b53f50c8c3
Date: Fri, 02 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767387833
