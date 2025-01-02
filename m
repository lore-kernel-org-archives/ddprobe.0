Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C841B414A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735829154; cv=none; b=eMVe4U3MYkqCoxOhKHSJ3lOfbPfp+WQ+Pbe6KgBzxJZ0e26J0xeRw/IfyFaAIlttwmd3hgEFXNzfHCU/L9wgo3xg29l70xshIglH72/iOFG3Iw6cUU/KN8O5Z3//aHAwPZKK8TiX+csdUZfMIlTmMghutuXvfcUnCzoD1wUYtjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735829154; c=relaxed/simple;
	bh=f8LPa4CqWgc3mT7rlRXf4yhoo24LbyLBfS9X1ecY/UM=;
	h=To:Subject:From:Message-Id:Date; b=P85Axtq2dcbtCXOs0lbNMKv/0d+GuLX3FBojvzpFI7hWcWGAyKFRJTnkE5CFDUvNbMF00vP4tc565GAh4O4uMgdlh/0diSx6ekndJ5O3x9qTSXj/X+88xOSwc28Y1TvbWmySu08z5DZGWiBYASJs5FPp/3+8EIOnirR3QBG18SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKrksneZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKrksneZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DDC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735829153;
	bh=f8LPa4CqWgc3mT7rlRXf4yhoo24LbyLBfS9X1ecY/UM=;
	h=To:Subject:From:Date:From;
	b=cKrksneZqGiP1KVv+YYWLotWl3UP+Jgroc8o4Jv/8+BUWAg7HIw+TM7uzWIywVkGe
	 CcVhHZXB+lPkvZ7RoJoMCwGMINpuuI5ECN2r3L+GQGYl5E3uRnC4ORJV1663LvAY/u
	 dgypZqgYrhRwr6Sl1iGJCs6QNxEPGoAdJIHHbA9JrsADblGq0IhDJRooHt9dGHIt6v
	 nnKQB/fRJIQi7AorG5eOaP7O+gu8EDsJ+yiiWmS6039dPBdAj+0w56dNE3B2E79GmA
	 H/35MUoFgGvbl5j4NyIjjoIHfTcMyufdeWXFx9vUi8HrvMgMa2WywBTkW5vzUEokpQ
	 5O6P3gQObg2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532EE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582915360.27083.322690698294714286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10156b2cb1d6e1b7f47a4b6d255bfe78c4dd93bce506e6e60843ed26fc33a9a
Date: Thu, 02 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735829153
