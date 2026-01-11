Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1938C158DA3
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768169634; cv=none; b=E20icGtgmKAgxCqjZhIbgTyA2vuve32ScAv2oTF1rVd9AMWFAbCZIFSa5XCmoQQ8RHkCinxdgohk4de8nI8h1ddoW+Wj4WyKwepdgKg4x2T19xYmmo9H1iss7cQurglenFdGGbGeUnOAUf4QUFlw1mus7j4BgEtMg76KdAM0+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768169634; c=relaxed/simple;
	bh=OS1geYbm+37EqXpGvJJVpBvSh8jVB4UHsfahYRhfWwk=;
	h=To:Subject:From:Message-Id:Date; b=QXSz2+HED0F9KVwPPJPjXjEUmVx/ko50Y4O8uzDv+1GYU50Qc4LlqhUOtAJC+qYsi5ymRulZXAjf+Ccizpvqum3qHnJ+tg0mYqIak11VTh1u2vCepty15mR6k9NaWn/nh9AZDzc7gcnOmQrvaJ36XYGLefGxvJwoit2TxNo8P8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keDmWb2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keDmWb2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9656C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768169633;
	bh=OS1geYbm+37EqXpGvJJVpBvSh8jVB4UHsfahYRhfWwk=;
	h=To:Subject:From:Date:From;
	b=keDmWb2pULxqh+IiNU8+8Nrk3BhijgeqNQAL/vekvV7sU9Hr5gdOyAC8f4MZhsDgo
	 b7GQTD3xdSZ5lHDFmhCiAFhXWXZvyEQ8jIcGBanFxFzOgUINl0W9QlxhXYcYyFHd+q
	 gl71UOLy65KQpJS1xWHmx52XvA9dSFJS0sznTaombbjh3vn6GySH/LkrH2oguvNaGa
	 mbVfSSXemKsRC+9jXLWOZkk29N6pd2J73YPvtGQjL3eS3QYEWcoviaJwATQn8XGxUa
	 iVM2qryuQPa8tT3aiUUuekVRK+QEqTXHIrROGe11LE+Y5rleGQ/fse+1CYjoged44t
	 xEtI+f6TYriOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DAD25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816963358.29100.9099199346739149735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874bb4d3dd03dd7931d9c6f2ef41be552752a7583066b2e6d44d9a14750cae92
Date: Sun, 11 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768169633
