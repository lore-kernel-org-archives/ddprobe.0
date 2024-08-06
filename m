Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312A9625
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722908754; cv=none; b=tei1bBKsNFUwYqvqXgagZnB2y+w2cvqBVtQ25wO5ag3t6V8Yi1YpAqxiWqjW4IG/Sqhu4DU0MhvUfpHJ4PN4qCA2QjVu6HaI2rnFZX0JV46Gonh6x7ee0NZDxT1TcepgXTZ7ahB+PMmC4HvWFqyXjq+6FlGByRzAxADibbxozeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722908754; c=relaxed/simple;
	bh=UUEMUGuzjx8CGVVkgCagc1/iT3HmaHE2fEDhlcFypxI=;
	h=To:Subject:From:Message-Id:Date; b=bHQB3jfFxgc05LRznIPOJ5RTmntN2D8ZJ3NUKYxuceTJlbeJHr6zM9o0yR5DfDD44KXXTOZeVdDKWTH+M4QchoL5F3VUYMoapqlCzfouBqBOc5F/MffwRt/KOCiKTLACuOpdqyi6ujj5EuRZEOjalcl00I8R8DhkGabuEB/8aq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7rMdhIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7rMdhIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3615C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722908753;
	bh=UUEMUGuzjx8CGVVkgCagc1/iT3HmaHE2fEDhlcFypxI=;
	h=To:Subject:From:Date:From;
	b=K7rMdhIL7w1aMjqlriiUaKC3j+0yFPUmkEeTA+wtXoQD0pML7deT264mwHlNMtTBh
	 RhrQlS+jV4PtpUGRb//+Ki1KzmOMFB5/ByNGlTJgCW3BFm/T5lyc5BLZv9ApYwy5s7
	 voh9gk1s2k29HmPoxT34DR/ptxmTi33nsd98CyY6u7Nls+F5NptHoRBRa+1HXpLun0
	 0svFqx8YguJNajkjJ7SapFAnt4fA1ytTp8nZ6MIR24A3LpSKvVBHECqZDXUoOQVuv2
	 8cVTbQae7xrjD701dDmWHNxusEPfUBnGsX8KAsr0hI3fbKptTjo+JZ+dMdZoFy6G74
	 4xUxxSd47nSKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C8C3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290875358.855.11695385403147578744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81180326f4c4646df8dbc79581d597259c104e2684f9a972d670807da921ff09
Date: Tue, 06 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722908753
