Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E183397E88
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782932914; cv=none; b=a6Dd64od5YJIccLKwLU2x5Z/Gs6Bo5ela3pxtsMBLbHNs1Gz410xvxKORwvSgj0GJUPd0WSOQKKlcOaZPqAS7Om5dPBdPgqHY6usi8Q891ULYsof6zj+blZXdh5JbXab5aIQy4hJcfTb6A0YOIywvRLaLknSKWxxajwys0hhSTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782932914; c=relaxed/simple;
	bh=CuhC6y71TgG6bYtlKF81KarCcbrhMLgERATq2cWTyGE=;
	h=To:Subject:From:Message-Id:Date; b=o8NAvpszsN+cK9hDGKwtpxW3YCoho413UVSt2lliuR4+LIVNsYs8zZ7dl0K+TxEjewwomWdM6bkoR7cBXkMJonKrmQTsopAHsoAWc9xgrHSTQLftmulQLkl5eF8NX0FnsrT2c5PvpZvJo6iFihXo/mc5M0smIu1IZOVtwFI7nF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnppC2wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnppC2wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B06C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782932913;
	bh=CuhC6y71TgG6bYtlKF81KarCcbrhMLgERATq2cWTyGE=;
	h=To:Subject:From:Date:From;
	b=cnppC2wSuNiWFJ5Rx64Vt03F67oDsYwg+OJRY5JqiT8gLdaeUXBi789Thkq7yl7HH
	 JmaDxGmmPFoZSGVQnmLHYqV4YAdfwYTMmodZkrvToO09JURm/EVxmsKuD43i8fH/uR
	 5rDUsn2P4/AV9AqrCvMRh03RPDorYDx5g+ReBp63gQCpXbxO6eOM06wwP83KbT0Oay
	 zoT04DTt0/9xodk7+M5su1c/b1Ec3boYOf6IwLqUkHUIBeWxUXQa7193q3TaWHut0L
	 vCFu1yWWrYsS6m3BTaqgV5B9j1egLOPC9s6hWURbmdC6pYTVAZP6RFdn1h8ALdOvvV
	 51uR+OnD2ZLlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9054C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293291368.11963.15140981150192803846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce44871cbe9d32242b608b2f912aceab24d6c3eceab9693ea7efaebf6b45607
Date: Wed, 01 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782932913
