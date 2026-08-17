Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309BB40961C
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786970434; cv=none; b=fo2gvVcKOuaob2Hn/xMlaI6RH8Csj9SvVqGzh2cIdKkxmJMNE9hY2oaibKkAcZ6fOen4SAT25wsQVoFZmvMhFf3sghTPfPjeZQ1V4O42smqUwqHA3MDB3zIIqEsS0gSBvr9Dg+N/mggPGSpduAj7kbn+3ALK3o1HylCAOz7aYPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786970434; c=relaxed/simple;
	bh=+6qE2F8S3sMCEahglcBjFXzoh0pleNJhxssBhocByWM=;
	h=To:Subject:From:Message-Id:Date; b=tZSH8T5v4zczTGzuThgA6ytPc1Fw+j0qA42kSgudc3EVTPYIMnd67ik6jFrP5ZpXFaZu8y+4Ok9Rwyi5XG3uawgPWRqMPMfZrsOBCW/kY7U9vgVpwanyIjM3LsztjwXRmI/QxTKKtj6/uzj63SUP5Wx/qMZ5p8iSz98msfzxo4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pojv80hL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pojv80hL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EEFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786970433;
	bh=+6qE2F8S3sMCEahglcBjFXzoh0pleNJhxssBhocByWM=;
	h=To:Subject:From:Date:From;
	b=pojv80hLrdlSXrxByVXtK9B8hsUSpW69q/H5wI0OwOvVXnaLcUstsw4dZuZ/ny8Oz
	 eHVeBn2hLwbrgbZPKxL65e6jk7aughGMn3V9swoxHi/9Dc8MdvdqSODRYP59PVNBEI
	 x/cSxA1tqZwT8CvQ5FK9A9BKuNvs/A0NEq850qUG4YLQ9ot/Uricv0fC/9lVxcdTd1
	 E5oqZV7KVZLsAuQT/BOH2rAygdyIlCf3Q4pnnxnvmOIZ1I2QWg3iDtAz7I0jzN3A9f
	 fvd8W+6XCEEqgXHdFFuD2cdzwEmdao7o3JpFPtSR0BpPJmN9gRgac2xeoee70QkD4m
	 HJSGbjvWMA2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB186C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697043369.13066.6812550764497243277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8c4eae64a18797e1baa68eec790181a6c7cc681443e3bf46e3c5f33636a5bd
Date: Mon, 17 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786970433
