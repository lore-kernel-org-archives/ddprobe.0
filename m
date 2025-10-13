Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1811C2BE7AC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760375394; cv=none; b=WytAa5lWIlFQ4WXt0QmS0WaDubDLGeNsM2dGh3v4UdMgjvqwY+bH+02dwqr7Cr1y3AY+qdfxMJW70YPG/GKDrw1rJtnIr0dUNPOR3KsDhBQOZaBoljVrn5samEYQS7HrtRLVdfOg3aq8zIWy8aLpX6/IqNrvV1p4a4cvXuGvji4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760375394; c=relaxed/simple;
	bh=vNIx6NDiJol0h1hbdpxo3YNuBT32wW+971FUegAJbGo=;
	h=To:Subject:From:Message-Id:Date; b=BqqBMKhZ2gUB66sl2w+QmaBbNyMQISXDgwg5Y/YziNgSYgp5dZpUjIGCTBTJXN8Zs3RL7NJMLsj8gc7HIgRKhJFmJOhFH972VVXXEckpWLsxXrBdz/OqF9MTOBM6iorpM/3MxvpdLwH7WNtAtc+I+fEBTLb4Zm5edxnTraRydB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1kl6Rgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1kl6Rgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A440DC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760375393;
	bh=vNIx6NDiJol0h1hbdpxo3YNuBT32wW+971FUegAJbGo=;
	h=To:Subject:From:Date:From;
	b=t1kl6RgivpvSj6HxjPd4rdIu4NRTanOiO1O2HUI3QZwNhFESHyfMnoJ83eMn9pnLT
	 ty8s5JVRGq5aBZw4xf5F2/UcDjxP8JuO3GZI61CflztgSQFs6EBUJls1srjHzbIWYy
	 Tqtya/aYQ3jLoO0qd2nNKvPzM+04Ia3PphYjqx/j0WIaNbM9vt2FR3Y2ZF/ru6+yZq
	 VNqHLt4kuX0VdQHaUk9WtreVBC6/OIOXXIinC6ACYtHc2qo9VGID+1B4WPfJVVjF7s
	 S1Q/azdDwANzT16rrZMJbbAmE2Vma5EGV0a/m/K6NculvvuGh9P1kfbxmLix8BDDLz
	 RRqKZefT444MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE40CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037539358.17803.5031310858997113722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7937db2b43b87ef6371f0f4a58f6513e5a35616bcbcc7c184f3cbdb5fee176
Date: Mon, 13 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760375393
