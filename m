Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B493BE17E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791286834; cv=none; b=UEsmLw3XVZ2w4I+Ae1HSGnY7Qwwqpnu4e06xI7K2vPeyrFSUBm37dxxe7DGMqZGxZzj49bFzUk+1rVbQxCS+SFf2BJ734qT4xLYzZhSBC2RDpsixjoxRbesJGXABQJhbJ4GrgMHuxxypkvx4NSxHZd+zpzBsBvHMv/Cg7HlxIOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791286834; c=relaxed/simple;
	bh=QHJWVw3DatTy6YKWD+lpvd0g7SvORLrT80eINPj8Hsc=;
	h=To:Subject:From:Message-Id:Date; b=uJcf6VBuaV4irok6MVbViSCRgtp9qhfOB/8EUXhoTFID4JIgaTHe6rnp9TpeSBfmZpI3QuWTxfW4ixlYP8ynGRK3U8nK5gI+umyMtKJDIqL4zomdV4GQbo+5JziWkicR/84QQhApqcE3mZvNaA8v9tnx3cERfq9x2g0QVDZ+9WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx9YtFEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx9YtFEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC16FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791286833;
	bh=QHJWVw3DatTy6YKWD+lpvd0g7SvORLrT80eINPj8Hsc=;
	h=To:Subject:From:Date:From;
	b=mx9YtFErePIJyTAL4QlU36/SQnEXqDJjwRGK+2ypZ6UXvBD1uR7sJLCOZAjvjblvm
	 EOy/qPpdcOJrU2x7ji9gBuCiR+KcrGRv1z5xdW0A8ECGDGPBEpSGlApqz9Vt44aTl/
	 U8XqRLsuLhxeQsNnFcEUYU7M2Ff79AxiyJFFw2IHYi2+ZuvF27MTIhwzXm7myA3K7r
	 M82VmRvQ7zrYyXtWUR1HdfgZUqdxUfh6vVNTfYM5+MCbRQ8kw6n/L67ogEjQ5WeqYx
	 SO0Qsn+cyx7+sl6dPXIpBuvsEFTSptOXdn/kp7ROsDwafsYMv5T4FI0100mqCqoHEV
	 c/aOiqNRWixKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BD5CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128683368.8916.9536469997170053615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6118034fcb049bff390871ab9964c17d083bbcbab24ecfb572fa3f581638e61d
Date: Tue, 06 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791286833
