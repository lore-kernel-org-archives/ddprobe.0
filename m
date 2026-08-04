Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76A63DB31D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785847835; cv=none; b=AlN3KB990Oqr+W9NFW/gkmwxC3DsEh9awcshAYAtDp9uBC3bah11htRMpWrd92MIMxtij9MaY4hjpjpWZlXrgNVRmlpdz8WE/n0S3l+5UCbLAuh4xvnKni3YqXUhl8sHcSQDMq3B+EOE7dBGB1Q5lHUcofC7/TyP9ZlH6vL9Qm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785847835; c=relaxed/simple;
	bh=rUcnhfI1nhIt6NY1x1YNf7DToSC5GibWVrP2LVkMG5c=;
	h=To:Subject:From:Message-Id:Date; b=Mi45TzeyVI6Y4Mb0Qek8z2fcouLt9ECiYc3ETYYLt1+gBo/SeI5NwuOJO7vkX62IaTduiusltdAFnaX6d2z2NsCqvEplZMYKXDVSoeGe2hQOKRparArr92blK80nK6fW1HsRvPn5woHhFgvmWsOC2tpofHN7QdHkaujs7r86wmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiKtsmV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiKtsmV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E7BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785847833;
	bh=rUcnhfI1nhIt6NY1x1YNf7DToSC5GibWVrP2LVkMG5c=;
	h=To:Subject:From:Date:From;
	b=XiKtsmV+irhNW+S6MW4Hq+l1k00I75Z5N1BfWlYaXmuJIuPxEexLzhxBKZ3KW1n5t
	 22ee31aBSWobwU7ois2P1FPvD3o5dnvqBA6e9HOpTHoq9LQIq6L13jHl1nLFoqTN23
	 rL3t/41z/QyT2HRKf9S6EQv83HF9kcawneSdNvjTQbk6m2Gzaipa2tTjfP3obdWmsj
	 owFRfoqm5dLngIzh+He8hx25ZILGW20KsExN5wDd0Z+9qImsX7uwyc7NSNQSqmrTse
	 rbE51nxsdbVeuOQlf9kzRlQyPTZXuLhcGuCAv/aT//WtNNSraFUSDfCYuCmvh5Fmq1
	 Q/VKMpYYgzzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1D9C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584783370.31676.3714977845526138250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edcf3bf2017c073534fca223058230035d236e93198038cd79f41af774c129b
Date: Tue, 04 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785847833
