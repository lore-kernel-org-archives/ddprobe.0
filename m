Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F7317F3
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719455003; cv=none; b=C3ni2mY2mpPJgCf+kW+jUrwY2Ww7HlS18b7DEVOnA+Iow5Zb5f08gSjsbDyn6JeWqaI4jUPQVlQCz1mpcNPwdQQBCZU+2f4iPk9SjwWHmtCWmVFWrdommIGHzrkRtzIw5CDd7sZKk9VYUaElFOgqedbxN3fQmifpJPwbMemvXiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719455003; c=relaxed/simple;
	bh=SnJeleRG9AAnBBSZ1fl7JzY9aRueyRWMbJO5+yKJugI=;
	h=To:Subject:From:Message-Id:Date; b=mfUU9l+LY2hVIlpi8vGjjNXJw5n0tmL3dGXowVdZ88mpHJ49ca5j5337/1eznKBjc6BWRMbzj+ZXnTiEh6sQxJH3cjH+DrafRR0Ehm09NwL2KhaNBoWREkliv5IlIK9tVIjT+aY9B/VET5zFUPo8vNBRkuBu+lSD7RLHkLBAfBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVfdcDNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVfdcDNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B9EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719455002;
	bh=SnJeleRG9AAnBBSZ1fl7JzY9aRueyRWMbJO5+yKJugI=;
	h=To:Subject:From:Date:From;
	b=OVfdcDNNRYtQS9G6FzbJS7AQnG4JW8WecnDtVVLHabkvlqE8s3LzMZoXezmj3N88b
	 A6yVtyithMDrR+bg/5Nt080JyqtEDxUic1poUKX6V7aSx7diP3USvCezOCXps5ivN2
	 a3s4IHRvXArw0nZ0miImuiHnPdWzLaH6jPDu/4FuXH/OrnZmQdjH3pkzIzLpmPHqrS
	 lR7cLPfBUg39VhM8J4f6td/btfHgIYc74Md2OYKNMoLp4VDdqFXv8NWuHyqJBHzWTY
	 i5P6bgpUojeSw7AZu3k++/4e5lMeNdpKkEFCprYal8QmGQrqd7HkYvwuCE7lFMgfja
	 0rCuwMZpxq52Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA484C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945500281.5256.8547565275620172977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62bddf07433f1940df2799f9f3764fb03a829f4da0284180d1df0affeb9fdff
Date: Thu, 27 Jun 2024 02:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719455002
