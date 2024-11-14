Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476B8198E96
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731567954; cv=none; b=iloj4W26uwpYNMEECynMwMK84Xh4HiUo0gP7Ha7fKAVeGA+hP15G4qvMkjGSg3oV8RXsaqiiV2vt96CcTv3+xwzSWdApwWlRCM0N1f0L6n+qJuHoNobFMt8jOI78wrkNtvVWCWu7oA5qmGFr5Q2Xpi4sCu/Ijt4Pv8UnINT1QxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731567954; c=relaxed/simple;
	bh=gzPcnwR8y4Y1ju0XojqSKo4OF+EOdBM7LDVRWkGjwBw=;
	h=To:Subject:From:Message-Id:Date; b=qbejNgx3TlMBbRB8RlOoGEoP/Kh/Tj35acOrXDGWibbTNYIKkXuofA9AOOZADSJ9PHg6+JgfWubvl+PhErVObNkLO61vzMKtVvq/wwWmVdoF85g0o6BNDWAgpCY4O6L5vF8IrFOFJmqNFby6SUhP39T7bojb1E95BY7CgB9y9bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2/Z2vTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2/Z2vTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1122C4CECF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731567953;
	bh=gzPcnwR8y4Y1ju0XojqSKo4OF+EOdBM7LDVRWkGjwBw=;
	h=To:Subject:From:Date:From;
	b=N2/Z2vTNC/bF7QSEgwmDvJ1BN7vcLi0ajxZOOJYZpEHtSvA+JZbMl3OQSKmcJeQ2+
	 XfJSBE9MA3OfxBv7Q+1SpeFCJRkYGGOWJYOtBMy3umtwqjJbmKeVLv95XM5hWMGnWN
	 X0HpcXSfnlI5jWWfseA+DzQT+Ti/GMwLC5K1CG/T0b23rbywc5Nruahx3u9Ek8gWOq
	 G6rp+z6XQ6n8lg0J4x9Sn22zYb4fij9V8sejZA6wtnA9ClxoFmSkHmvwlwg7Gd4fdM
	 YjDNJgE53ySrCHYv9KklqlTkyX0couOcntduQvFNxd/1YLrrXnLzM4RVvS5mXgJWPs
	 Uw75Lwg0aQltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4EAD65C52
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173156795363.12651.14902830941614778114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e6159565a6a5416c66526bf9845453389cd295044dbdc0cbf28c72db5e316a
Date: Thu, 14 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731567953
