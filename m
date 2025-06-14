Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7E52AE99
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749884994; cv=none; b=VGsjCt7tK82C5ylkc+wTmZ4xAbbbl+1GofLkL4tD+oqCCtokW7TVZc08niNtzalftsEqXDPZUV1L3klgUfQ1KhefgMfI6BcddyilDqfaWkjCUzT5f2MUVyhzCzJGudIS/y/21V05Nw7qjaBSak/fBeDrcyCeVyxw4pkDE7RuM7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749884994; c=relaxed/simple;
	bh=f1psplyzKfkOvl2rJIDYvlnpRyaaiSQ18Qqf99byBs4=;
	h=To:Subject:From:Message-Id:Date; b=avRptENpkhX4iHVB/WAC+PbhGXON5tHwGhzlWdM6OwJVbXadaaW3de5+Cc5plO1AFgEHfUhs683eGspEhbDLqrXlfaFi5zBhkCY4Au0uqdciHadRsl5PGm7irVu1gig8bqmvNXuvgAINzqGvW4Tk6biVR2jRLPaGTJgdQYgUTm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwprpAS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwprpAS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F094C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749884993;
	bh=f1psplyzKfkOvl2rJIDYvlnpRyaaiSQ18Qqf99byBs4=;
	h=To:Subject:From:Date:From;
	b=YwprpAS24XNDIw0tBMLpODOFEhT6fYSe8m7FvEPGeIx9OCAIG43KmvPuKHwipR2bw
	 wDCmtGquid7OifYnkqYTwHRf18DzskF+bbFXhBmKRbYq8qzYw8o6DarIljcDcaO8wd
	 ICvNhj5NG11TdiIQdUAUIVymYpZ2HRKRBAn9z+Nhsg+MMk2yuDe63S7/KYzW3Erc0p
	 1s3nEc9xS1ROeT+NPmAEfkyuJkEa7VemXZJstRC1GUsUwf4BZ95lK0AcvFV+SHlMKg
	 s+7kIwuqYcFvoN7nSvrCrWv+mi6PhMMPJRLlINAUVynE7W0bSRUQ5R8jpILNIN4rWj
	 VEFrvPpwQzmwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF3EC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988499357.8646.13213709192037165190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d08bf9cbb178ee99d2d0333256db7bfa70e4c17fcca2f2211d0ddd59bb7290
Date: Sat, 14 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749884993
