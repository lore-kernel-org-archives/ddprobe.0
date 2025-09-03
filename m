Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BE54A2D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756939194; cv=none; b=mC7TOvGAdMFlm4Fa7odK9C3i0E0Mrlmfz9b+drdPO+gT43wh3x4CFfiIffqV1BPeDASYc5a4QWxiBMSFoYa0tTa3P0XkEOqpk/aw+XuMI3F6mEg/bNbHsCtJziHupTYj1KfRyiKH/WXAtRvplumwppW/fo1fa595p1rx4tCNRmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756939194; c=relaxed/simple;
	bh=KDlzJjABHB/sr+MZMF/VuGWTPIQIZ30g0NdN1reI7rA=;
	h=To:Subject:From:Message-Id:Date; b=Qz0fE2F2GHs1w8+g+BoEJUbpiP0/aIF4GOy6Rwsv2yp15QvoBwSeUTpVaN+AUVdn2gKu6skp1FQUiVAJefdVrB06kMnUDPQo0wSqpgzjG+ZtCOZet8z+TF6bTxd15sv0x7HkdblXQWkSHorvIpC77arkX1Qw3yRjqbEP9KqwFVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fc+D+Gni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fc+D+Gni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756939193;
	bh=KDlzJjABHB/sr+MZMF/VuGWTPIQIZ30g0NdN1reI7rA=;
	h=To:Subject:From:Date:From;
	b=fc+D+GnixgGpScZdsODr0pLEP3C4UlAM8PehHH0/qiJ5CVf8AVRs/JFNcgwRn4IPY
	 aYaQXhu1WQkglVxOVB+i+cEEQqb6GcW2EvfBsB7QBqhXxoP2edAfzee/+mH40wdlJ2
	 juY5hqeoWHs4cOSPu0QIge/FGtbpwgRBPyowBa+Pbbt3ihg0rReedaJ3bks3N8H68f
	 C3hoeCIY0wlXxha+Qsz1k8uF5hYXY6rsYCNdvj7vGJcIgnN53Z8HrmAnkqt+uzOGNP
	 YVcifmsHQ5n/wbq1Akp0P8h8Ni13rs3sSSb+AwDXpZRZuI4zVMGqvbi8vVbI/WP53j
	 lTidLocwzrfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D7CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693919357.28298.17260176001496652919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b092ea98327e8177d9f7b1a684f856044ad5a3df593d06ee57ad31aeca7a4212
Date: Wed, 03 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756939193
