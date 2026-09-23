Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BC83101C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790134234; cv=none; b=Ea4UorIipvBciFvhw9dwtMvX+PJtOGofBJAoLznJU0/Xptpjym7WZEC5eYJeM1hJPOZ1VQ2cQswt5twc1ik0GLR9brIvo9ipTiP8snIW+nFrIDmQHzmmsWJt870RZcw/CQE6A7tjFhmWmnP/rLuqUywvuzmKUWOnNMZHSkQC3Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790134234; c=relaxed/simple;
	bh=+LO+VoEGRSqEIn4aLt34o9kNZCK5Y+wl6MjK03kzINU=;
	h=To:Subject:From:Message-Id:Date; b=AVcmaZ6mOpIsHcJebD/7dqSi2TxNpQpEaAM/mZiaDkWl9gKD1tH01XHVMAuBa90dlshz1jzYwZj9wM6ISYRnxyzREkFoFWthF8syeB8KiMGRFtgw6L+Fm/bemFMglKvbfmAwRGznqfDF1oLBj0FNecRDGAthUdMk2Zp78G4vU18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/+aq3Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/+aq3Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D619FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790134233;
	bh=+LO+VoEGRSqEIn4aLt34o9kNZCK5Y+wl6MjK03kzINU=;
	h=To:Subject:From:Date:From;
	b=i/+aq3OdylK2o+hbtJqqyR6J23l42LEkuLBe/Sgk4lsWqjDxkOsUgJyaEogkiZPsT
	 3Bs3sQFBGiCgT+oF5nvs5d1nwifuOZmk+B+fawKbz/cY9+79n8yhO0KCa2B6ejG8PG
	 neJZy8Lj/fKACO8m+KpVjYt8RpAZVkTfPBPPze3tjBu5622S7t46LYX/SygbAPaLnt
	 5kxotAYOpfyjmryqjN8IoHpkz0QMfwcGM2hCBq6uNs73744kxUGn50XOwEz1uydk7G
	 0gg+0hxAM6z3P7BRZcUX4rNdxaquo1P4dl+hgkS3C8haHtkf0PmPFM0+dw0Xar7+Rm
	 ei9VcD7J5GzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB01C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013423375.21486.5840459133768561930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61b34515a5db70e8134f89dd3f69b426b2593acf28181405057f402a850d98c
Date: Wed, 23 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790134233
