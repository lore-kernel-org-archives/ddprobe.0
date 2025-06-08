Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF3B26ACD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749394793; cv=none; b=YCyWIACMsgTZBfDWXg+hUG/tKzdoQRyFoswJKcFx71RP89NeCVKmmaJkxQBE2UcXMUleeCpcd16Zu2exjG77rbOGaOIP5loGqoGiZ6sS5ARpZflT10Tl+e+Bnm2TY4HGNvyRBk1R0FvppXLGDeWk+wh6X4p82Ivg4oUjqFjooqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749394793; c=relaxed/simple;
	bh=P/c2j4e5+goI5j/f4aDUH4uSePzXLWsEP+qMXt1QRhI=;
	h=To:Subject:From:Message-Id:Date; b=lB5S75Yr9I1JJJ2mgOttnuBYzOrms8DCIGw5u+0OVfOtRtt/EzXWhDjCYVQuwRKzZxK1/orD4E3yEIzcgQdthiV3jyKZdtj5W6ocjNdlGr66KV+jE7k+vWbtJYqwEpqLIMFmzxxnvkQGfB+DMqlEKRjxqeTxEIVeCENb2KX4Qo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u104SZ3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u104SZ3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F1C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749394793;
	bh=P/c2j4e5+goI5j/f4aDUH4uSePzXLWsEP+qMXt1QRhI=;
	h=To:Subject:From:Date:From;
	b=u104SZ3S403uAiHwqJFgA2r1MoxAw7s1vnTMZhZSAYdqomUNndal34YK006wFXTBo
	 BD5TLT2jo3AWEZKd1vYJQTpiH/huCKyP8U97DdGzHM9aep4xRsEX10/M7F2wao/juv
	 EQqaZgLq/LDDLnmdaTosv0p9G7ZMQa63sWACeHwp6lmdRXo4wxfRIFrFASfNUEuDTl
	 +ERX9g9h4pVQdTzO4P0Wj8DBV7UzImAF/EEYWj53cgWtlemEOmClhruNciXx+x2st+
	 F6ACIHaKk4duNWNL9uBtOMLcmqzYDrS8FdRrGVeniZdhIrxy994x8DNR7kerKwwIgF
	 GDzzU3uTIwwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913ACC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939479357.23655.11409128626901397362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5ae99481f5ba5f8d7590db39f6c0037bbbfe21b40c0fba7ea6fd5353af827e
Date: Sun, 08 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749394793
