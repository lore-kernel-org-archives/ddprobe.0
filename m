Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326EEED7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750499994; cv=none; b=CD8fdGaguTx2EWhqBgHOiitBVX9DFX59R2tmhMrPeJiALEsurK/UhUIGKSVxNIWKVfVsBrxDZ1L3LAueoDLPJFSZtgThynCHEcWEUc7nFRCba47tpn40swA9dzAVZyvuEmT2b3iNogQQJe88rDIkKy7OYbKy0FnAkFiqj3b9Tq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750499994; c=relaxed/simple;
	bh=uGFOS3+cKkzpnHANkXy9BioxgHKiZz2N5Gc5Ftuzkbo=;
	h=To:Subject:From:Message-Id:Date; b=naEQHOi4kjH21qj1poZaJXlTtjO28VXr0VODvnh+oP2yM1cmiEl3+oJuupBysQ/wv4934M5AXegPhU0ampxGQb8UwQNpJF/Q7ja+KVQ2yQsjowHKXpjK9Mkf4+Df+YDB+GxNtkQbAAkazdj51bcIFuCgodA4iglbhdzMoUnP5uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5Yiyci4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5Yiyci4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D4DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750499993;
	bh=uGFOS3+cKkzpnHANkXy9BioxgHKiZz2N5Gc5Ftuzkbo=;
	h=To:Subject:From:Date:From;
	b=o5Yiyci40mn5wJEdUcmh0PkbfmHhfmz0BeMlVqPs4H6rrOHCGZfhcyRJ7aEYiCVqT
	 S68MBW1OwOHpbSHtyeBNEkjwAWuetYscRIqjGPSM19oAO+ZL0GzcoxVgc+yAYojjm5
	 VXOt9ZU2flP7bR+QUI9Q0o+S51zq4cx6IRLCRIRe1vhS4N6xjQnvfwf1S5upNZFaED
	 jvBMh4ZjXRXyHBg64eyVvlZb/cww3ZooFMKlso9kCE96qFckbrL8Yz+RaIsbFmm8ms
	 zgGZWtQr8EDjlp0k3xrlT2evz86runadymbMxAEca+OFHMatk646211n6zCFu2Fksh
	 gba82d3tYNDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D1C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049999357.22459.14526273997433385104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f1c1f4620ecc68013fe4ee183e42aa86fb94a83e0671426b5d4358a95c25b4
Date: Sat, 21 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750499993
