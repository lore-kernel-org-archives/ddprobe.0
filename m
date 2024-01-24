Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0830212AAC0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706122697; cv=none; b=dUp/GlSmeIjam1nqFxRNi4iBgSSlNiu5UMoTODsEkkzEYd3AzcoGuIj/UfC0J+unUZUqSiBPmFjjK+CHvWz3IbmgbDCMUgqPO30oqFVty/ZCphqwzVE0R/1xXyGLeaRAzce65T27JH0GiBnpBNLp4YX5xMk8K1TSgn/ev8w/pEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706122697; c=relaxed/simple;
	bh=hAhok7je1Bcu7P9Nkpa+O5J0igppJIQUxNA6+tdG5m8=;
	h=To:Subject:From:Message-Id:Date; b=senWqV7y7zutvIs+uQGnMcC/QkDsCX1CzChmogvnaeW4L8cns/ltL8OKv2UivPktoQ3FsZxIwTjqTcV9Met60HVvUzJJoPu4kaXPXruaBvZ7n0s4cghdd4BeHFnak3Um96s7iof53MNHb8m3jDd0UaO7zutORS6rk2zlxACxLIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU5Sd1z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU5Sd1z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78502C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706122696;
	bh=hAhok7je1Bcu7P9Nkpa+O5J0igppJIQUxNA6+tdG5m8=;
	h=To:Subject:From:Date:From;
	b=SU5Sd1z5594fEaDoZL0r6649TcsejNoWG6qeHTy0bzvxOVb/BK3pBABitskuFL5OS
	 +kdPVGg2BG80Ma40yXcHUp6dMJmAmbiFDtb0akCnMi9BmT+qELgxiPP83klsQrP8wS
	 FnWwZSifuXh4dsiNzPXyL8oLuTSBe+0fKjt3scF50qDnxMDkv7POy2b/wL5yvBR1II
	 fE8pGhtISWD7oWDWvUWpNVHS4Yv3v2QFN9ytnTKFUKdDF7n9ObPlxujOGFrB3IRcfA
	 GOH3u3x7/B6ZloiTB8scic5GhRtP/t0qASiRRWRXgxokk/JvbV3Db74Q+3wDaBdAwh
	 F3YprPKwhwGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E15C47E49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170612269639.5900.16843455951358453819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07edf046c15cb4c17ae52a89ebb7d2cda0e6820bc025b9dc1f14fdfe7f700178
Date: Wed, 24 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706122696
