Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC7F2D23A9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758316794; cv=none; b=ryABC+kVyHf5UqjuxjkANeOOKskX882Zr8zCr91n8AHgKJvQmfZcP4nI14x8rdIaz6wv3o+83cClShK20/QESL9WYVzQg97zGjEmr2TwBtdM7HPw2GasfVfQO4plz0L4Q04nk8bcNMzabi43tLVGoEumJ4POQ2s/E3I2yPp1FLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758316794; c=relaxed/simple;
	bh=20i+Nn0zaugdemY+jxI1cKX0b1lLH8ZCb4NfiEAh6/A=;
	h=To:Subject:From:Message-Id:Date; b=fy8Rdews6qtBjVRnX7UIifsWOaue59p9LkGPWn+Wym+AvKsAnmEg0Zq87XkbFqrc4+QpKfDDAPbwhRtETPIDyBAGzpS3VU24iMYGg9HhEkC6RaUBsYMV2FRpGC7U3MYCoK8U82xeJezVr7WEza/LaxOgradGMq6VqIteI0EVNhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqCd3tnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqCd3tnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00CDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758316793;
	bh=20i+Nn0zaugdemY+jxI1cKX0b1lLH8ZCb4NfiEAh6/A=;
	h=To:Subject:From:Date:From;
	b=kqCd3tnOBIHk+xUg67LveFK6v0N8PJ1sQNXwoapxwyIlzyh8yolQCinlgXEWG1myX
	 IrSf247p5Wna5/7+2fpy/YGhRNf9/vui94mi0OkXZHaHFSKQLlgga0boFfcagk9Ncw
	 NTgXpMawXwhsltjArYLo3d9KElrqHlftUycXOerH51umIxXJwvM/lfYhM0/5+psF4w
	 G6FeHKuKz5nZ1ceyYtMwiIF1sncRedvuZkSHT1QaKYYTShf6eifC4sHxyvsfl6D1r/
	 uTyR+px/OKc2P70sYjRHP/GeYOHAUoR0be6PjSkDy9vaxyTsAWMW96tRYWdOxvhbkj
	 iuYZQxsU6rMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BACAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831679357.18988.16791290490624061916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbea1c9de3834f47382cb39a584c5fcbaa2806d49ffe6faf3f81220904ce8fb4
Date: Fri, 19 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758316793
