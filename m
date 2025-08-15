Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3924F2C3770
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755241194; cv=none; b=BYM67y/qUGVULlpcmxKk+/1/NSYZVxDvN4UR2JR35ZcVmwObK2m0/wksU/DGAGQXemtdZk71JhvPSWaCEpPOHSljk+73T1QYFsdsbkG0D0hu/MeqMJxGtjt7HAjqRls7mNUHu7+tGaXompU2JdqZF7Tq2NYcplUwfSmNx/erXZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755241194; c=relaxed/simple;
	bh=0yv5L0Xdosr6vZOlMzpPJb0A3juRDCi+L3c7EjulkvM=;
	h=To:Subject:From:Message-Id:Date; b=jj8OxCencMjstDoL63hxwwV106/A+H/C9+nA5fAkZ2xeCTf+mCbAJcsFMEZlSqs6hHVbk4QnJpbSi0mgtGoiOjaSCN1iuz6Ce6q9XpWvTfz+2rJs9qs5vhK1fYKeVrTg1ikxtQPunZELJXpmfwHCSPk+xf2srtwkRea/yKCaq1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejCocOUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejCocOUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE914C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755241193;
	bh=0yv5L0Xdosr6vZOlMzpPJb0A3juRDCi+L3c7EjulkvM=;
	h=To:Subject:From:Date:From;
	b=ejCocOUctwQIPgzozyq37YJxG/gxT+PEWMYFmRbuVoUVJ5H5bcuwjEAKOOX5BUnEq
	 aQQWocx7skEXt1Iyey1CktRWtyTuWPZBsJRlYJDE7LJ+NmW6P72pf8CsdwpoFCdaRS
	 O2rTwf0Zq5Q/qAWBiXroVX9pluvIQkPNuuX02LJFmecz6LJEXDTiSdxHJPbvz6iq1E
	 kdEQjpRErV15nBVYldogmh4eVuwN4lsY6VtlJTn1hjZNc5AOFSMvAGMQmhpzGfJIc5
	 +pR2lnG11G+8knDKRqfQrfyv+4bZjI2zVnI/odDiAdBlYsRHYWmpKXpu6Yr+mBpqZN
	 TkRrK/RsyIEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2436CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524119358.2731.7193869321888624631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7844edb2c5ffb9d015ba483741eeadfad8ddcd8ecd6bceb42a88b9c8c7e3959b
Date: Fri, 15 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755241193
