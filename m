Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6521465A1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563663; cv=none; b=KlIIf1Q9rltlsS6r1I1hDJKDUYtnAph7vQsUE5YJ80O5LTuicfz3L/tA+hgr5tSn2tyElKtj9P5RoqF9NMh4vYylYcdzRZIYszqQ0lmzc0cu6KimplTnwJa+lMQGOEU/Gi/XPa77ozHjS4bfK/o+ra0xg7KpdbVQDkhRqUdaXxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563663; c=relaxed/simple;
	bh=w0tSLoUAk3UWD5Gu6ueUshi25p4vCSUlCdXn7yHVjmg=;
	h=To:Subject:From:Message-Id:Date; b=j8E5drF4rE6VirWXcL4/rWwX/sdUjt0ugcyFDb0nt2B0rBvZ+NmmcLFTAvpO6foKwBe8E39Fcx59z5YpJElVqsnLD6+F084PdJUOP9fLq5jq2P0fi+J1RCwSkobnP5LTwrcQOoFGczRGbQFp7XS8NgTHr8YFK2TmDXrnQdjq/2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8U3E+xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8U3E+xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EE8C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719563662;
	bh=w0tSLoUAk3UWD5Gu6ueUshi25p4vCSUlCdXn7yHVjmg=;
	h=To:Subject:From:Date:From;
	b=a8U3E+xHJsVY6dAvW7tTyzayvMtPC0m7LDYa2Cmt+knObYlxTn44vEmNYf0Oq2Cwz
	 d2kIEJI/b9czKog7761Qo1if2x/neGh5bXfFipRuGCY+OvuL3P0n4DBl41zTM9LIbR
	 pjWewiOKlFprnLcI3GDmMbVUE8XDRh4o0rdkr9vlLGOiw2WmmZAKUl+MhdhMbjxGTd
	 xo6RsIkZYdZFuzs8hLFjfk47LPWmCtQ30/ArKFXkmITX+nNnv8MiEibjGCPJf4UGUN
	 2N0vx3VHUf9ueqjmyn+R1Df/G3hAU7sRL7yqwF3UUl5VQycotRXPyhsdaQFITEVzFb
	 hKQRPxNMbFZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55A8C30659
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956366280.32287.10980783602492396072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c20c3ecd5983724b36707d33c4de2d2204404eb1a8ce13aa5d9d9a2af83a08
Date: Fri, 28 Jun 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719563662
