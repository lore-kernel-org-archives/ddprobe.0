Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F42330D2F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772827494; cv=none; b=O3RopX44bed+eo6AaMLIY84I92Q4K7weUloQCCYZ536Z8ivQnEc5xV3x1HZDozG2pQWykdZ7aTeJLbdnZSLav4neND7odj4FTakXVvrzjjtT3S/YtY5RV0dztiCruuhq3bL1ys6x6UbdeEZYTFfm5alyfWZf0QS4g4D7tPC3ldw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772827494; c=relaxed/simple;
	bh=ZuNhCBAu1mCr0tfgpYkFxlis5A08Uj1UVsGB7hxdskU=;
	h=To:Subject:From:Message-Id:Date; b=Ni24orfKk+ILEddGjSxksMQ5pW6HrHhALcZCLQJ+f9W/6kuzMaed8EuBYdfgsRUXFhyte3mL6FDihKdpaqVnTcvKtsU3U+pbLlrTGj2xpRXrKMFD4dB2r64Kt8A458an9LWeQjU//w7PEluSZV9CKep8uz1pMtc6TQ+/eLcX2lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOXqsyMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOXqsyMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9A1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772827493;
	bh=ZuNhCBAu1mCr0tfgpYkFxlis5A08Uj1UVsGB7hxdskU=;
	h=To:Subject:From:Date:From;
	b=HOXqsyMknRGJclkkoUt31KyvbAnsoKdt+b5MDm2nW8UtCDJLRZep22jj0dVhJ4AXU
	 hTsYyQqn4JEH6WefDlSFFwKiFsEw4FywZEW6ahgDfmiMr/XCmV8QrYO6F3uiyVs84a
	 GwtOHUJYWFnIrIQw81Q+twSWXrOf05ONy5kqX5o+HW7UAtRBuTjS19Sq6ciHzVSUKz
	 4eVPZxut5rpZMw7TdAIIVQ9GAH9jjb3Ht78/hl82lUyvToXbGq0T7pQuWBc8IAryn+
	 Ny89dzQQKRoDNwlSF50pKMAQ+HDUyvqI/ASAaJJ8typb7UuJQGqU0v2HlWoLc5ioiP
	 LX7qgNOImcU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90761FCC06B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282749358.32603.13889255582168250916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55afa186236866fa8dacbfc2ca10f6c9c33a36162e550b1dc8408cf3cd32b66f
Date: Fri, 06 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772827493
