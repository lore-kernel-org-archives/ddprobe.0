Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4359B1339A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745142595; cv=none; b=d8MvIwbZaFMHJ3Hm60XDHbrg1i7e9WOUmMMU1hHsJLF5AG3HnpqoSXEcaQRcZf99j42mKfezdRhqm77pz3NzupPW5SLj6N6GIRDwaRfClW3HzpOgDZsMx6wlYfD98qB503w8X4nnk/BbH+Wup/IpffjqEqSrmoOY0DskNLiRviQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745142595; c=relaxed/simple;
	bh=+L+Xay8oqQmjM0Trs2Fw3XfTJvIfEttXQM2h6+Z4o0M=;
	h=To:Subject:From:Message-Id:Date; b=TMOg7C37y48ULqVcWUhmbBFcgwdo1Z5TtrSCKqMCZnjfmgHxRM1DnVjSEv5bxpwFQeolMpbFFWHIa0i7USChWE0tgldMUKx9UFFtHCsLbeJo2cbeShgTyrNrCH31aDyjIKdxkANzQk5rMozz51T4daO0gyYxBK8bUiR1yv2tpRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH2BVfga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH2BVfga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD841C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745142593;
	bh=+L+Xay8oqQmjM0Trs2Fw3XfTJvIfEttXQM2h6+Z4o0M=;
	h=To:Subject:From:Date:From;
	b=lH2BVfga7BMB7+FxxEls8uHGQKIi74OZBH3TeJal7sNnDhVmmJJg1cqYalAN/EbH2
	 yxx0MVzx1oInrRK4632DruKQNdWnmYjtWiBeBMVqw+Ekl6VBEf36Gigcw7XpMZw/kt
	 DcVLjo23yNOEN4QCiJvb2RsAAnci1nh3GDEqQuQ32Tz0c5/z4T7Zq6vU00ITlF9zGO
	 damr0f3jIbJlEau/iRk0CVvdUhD/YloOag6RnUhd71ADcho+h8YLABfDPC8EYKr793
	 NMJ2TWCp5JDCaWcBRmCuIzGwnL6uhCocubPzO0x0+JBH1GubDTTbO5wnKTIjoemkBQ
	 BJeQpX6MlC9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C39C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514259358.29534.7623656053235336253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9db1ac10e5d9ca5c316055f9a20f973c38f99862ec65a4fa4eb68790debb83c
Date: Sun, 20 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745142593
