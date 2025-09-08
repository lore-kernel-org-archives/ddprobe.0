Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CD2E2EF2
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757315394; cv=none; b=YfLNtvvvf1fkp1D/YjY6zM0+WbuZCrjVVlbZdhlBM6PsyOgB+Hu1Zdo5zTGiPDzgkNKmr+ZGiKxrViHc70mkxY8QmfDErjZUZ0JMBqD2lPnDYbMfs6vOa44gNu1bX1XztBbBZ3oqzXEuM9RACSIFDGa9z6VX3qJkHGOWAUsuYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757315394; c=relaxed/simple;
	bh=hueO51WbxkNwPubUIu4F8tAxrG7KLd2Y0MUjq9V8RVY=;
	h=To:Subject:From:Message-Id:Date; b=Hs7xIMQRtXV7SW/NoC/TXR+aDTieKbEQUhGEV1IUW96pxbE71aYEr7gawVY1714CW7SGKcHCZk9lD8VqYqlAinmdsHCUh+Y5iRGcvnEOVno+FclqWK7tSqo5vt6m4qXgP5bQb4sG5gi/hE0YFFAgWscKkvQ81i7z1nT1ofamj5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJnCITGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJnCITGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF30C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757315393;
	bh=hueO51WbxkNwPubUIu4F8tAxrG7KLd2Y0MUjq9V8RVY=;
	h=To:Subject:From:Date:From;
	b=sJnCITGqky7U/q0jRDHR2Oliq8k2UY7svWKplHKR8vmKnUPbxQuLce6hMZzZF+5YA
	 EVrbdBJJkrvGkCHUVcu41nuW5Cc6c2wHgqdCtDtC2yLqnqwdDU5JDZorz2u34Qobkj
	 2vx1PJQX25Fx1JXeTqswOFwK3Z+IVK6c4juZS9hjoBxZ/zgJHg/vlos3ZwvF+vSirZ
	 rcL8XDdPaz8UHzq3eQ8RvvIWiIczsMd0bNE83fBpO+Mpp0R5nwQJzNuVNSWoeT1UnF
	 NpYKFc4Lk4G5ji3PgVVCKpUrC250mqT4Eq05ZY41wis8bt8xfofVEGh9c0gNpdOO+O
	 s5CG8EmZOZ/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F940CAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731539357.14284.8461838901712930453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82faa94172e5b89edccd707f06940d03f392db6f954e35475482f584c0fb0eb5
Date: Mon, 08 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757315393
