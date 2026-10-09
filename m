Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E25939479C
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791519034; cv=none; b=CU18CIE806uD4WNl6QPC4gBxjX0khlBCZP69vCW/HT0beTSV1xg0G0ocUnDKtDP5mg+qAPGL/tp604FzjPYcr12AUSebe/q8Qm24zOP7hHMzt6Oun2GWVaxBxj5KUljQ82iKrpRwZoSDuh80es5Px+cBppqvtH71ViIR1PTi7jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791519034; c=relaxed/simple;
	bh=tiQdEvo/MePuvARgzoQ4O5rXijR/d567SzyfqJ6tZVA=;
	h=To:Subject:From:Message-Id:Date; b=cpXa0lWvIzZgxnBvFTRVaUhDJ6GgXi3/QPfojyGMV8Qs9sskMbb9kCoGFvvBy1z1tEkiXo8joST3XawvKn0tbwgvLcFNOlBuqw3Esu2BO2N5qy3q/eSusCk6GZ491rb8NIqjhjo5/5WtFwoD/2Iuq4ILHLeBD9JVWIhDN518eFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smueEPlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smueEPlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40AAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791519033;
	bh=tiQdEvo/MePuvARgzoQ4O5rXijR/d567SzyfqJ6tZVA=;
	h=To:Subject:From:Date:From;
	b=smueEPlF+ZJgTzPf45NQVMnHUsYsNhs70+iDQ3/VcWhEScaDZNIr1Xveo9s2g5ed6
	 L8OM4iKu6zyDD3XvL1o5dhmGRfB2a2VpCsjEYYOefFGN+FdVxIy/bCBKE434vct1qh
	 hy7L+HA1SzlU19wPh8kn3bpmsgyKPs/RHnT1pzAjGF3xqcPkoP7YBhfYCOJbfFGF1y
	 6T0ikJp8/AILgGQNTqXa++ut1k9Fybgma18zexIrecA3GRd2yCQ1knDHwskUYB2AIf
	 1vXZiwW7C2OFfL5YaNx6hf+bMD2G6JC5TEnw7ZvoxrG3N+HwRMDrvYCJo7yVhC4Op+
	 X2olW+/R1g+HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F5ECA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151903368.8824.11708716471559795629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21416d1dbb4bd29112389dc34e5bc9e2311ab02e7fe18240a8bfaced1c06a993
Date: Fri, 09 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791519033
