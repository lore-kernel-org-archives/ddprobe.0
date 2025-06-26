Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0862A1865EE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750898994; cv=none; b=WIcnXDMSkG9ZYmiaSI0iqnMisY5nsIzE3H4WwhPUtIrQz1KcLRmc1lEEr9TFTQ3oS27eNQaOIKgBwkMHmSqXvxEkLdi/A7jXuU/dmzCWI718p4F/YUGoOQjV4rt/rKHl3YdA5/0ATL70NyBpV6tqtUWglL3uDwbS0dc5Lf0eA+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750898994; c=relaxed/simple;
	bh=mutcGH8QgY5QrKEZ4Y2fogc21O07PVlySUajJEuE1nE=;
	h=To:Subject:From:Message-Id:Date; b=M7JHMZCf7FPSNw3xfuj0efhxoMOyOXze3nGWa0Q7gRhailkUk+bMcT2w4QtmAJv8LJ8IbdtG2uCnRJymGQc8TejnknHrVuWg/kutCjYUhAP2p2lco3FEoIJu+9TzAfdBw5kjODTheylqgsGzIq4DwhiKVV7WtBcAYfaaxbmatvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9geT0Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9geT0Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB55C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750898993;
	bh=mutcGH8QgY5QrKEZ4Y2fogc21O07PVlySUajJEuE1nE=;
	h=To:Subject:From:Date:From;
	b=I9geT0TqGw9Gt/b8E5x2jftY9VU1F4jE2f0YKT7DxCVKZe8rbOY0ug3k10IUVerRe
	 2WGki4YxNAqDg5fACZeRa3PIox39IRaAq57mdbLLxCdiu59kKBTZh2s/9aN6TasgQh
	 ROtVmxCn9XFoBixC4a9dQDnNriAVrEipxmeSuyEoREQeudzZCksjI4BbiU3eNdTKHN
	 /a0wp0eh12ygTcibXweYunsWBGE6Tc5cqzuYIfMdEaguyYEWn4P7hfVxUciZMo3HSU
	 u3CpAAA5q5jmzj/7grUF3tI9c6DOPOFxoJxc1UEcXqQhlIT76Z67JuYp8v5Xatkvqm
	 Cml3gNsI20yGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91459C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089899357.19089.1811726598592913480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6b272aa52de2c1151b4581890d7b0cbac033ebaf3e44a029986ecfb7b8486e
Date: Thu, 26 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750898993
