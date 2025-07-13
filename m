Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350711BC41
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752434394; cv=none; b=t6EKCNikuepnpJlu2vLava/IuAWKIaLpYzEV+HmW4ynsLwUUH42UXlMmefxnGIHgf+A5XrI6fOUosonjDDl2QXnKjEDmVkdLRwrSU+sKO/+N+L+WpCqWDcuKRD6DNDqk4BhwMn40Pent77S0n1dqA6yO3KUF7/+IhOJVLfLloM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752434394; c=relaxed/simple;
	bh=8SbLUkGS9kqS60fp558Ljwqn75xpAEE1A0BtuZlcF7k=;
	h=To:Subject:From:Message-Id:Date; b=r/Ac/tVZidO3mRw/Ud6m0wdoKrTaDVuDPRw0IIXgRwJCV6uedhdxv6vZBZL/Cn3Q9Ffo1x9idhm5IbwOAAeUcV/iyGM7MOBmVos3IvxP54uN+Mt/gEVeoqtTbyznlJEHnIy8dLuxuiCRDAvfuPQMcddyrjz8do0sGPZfWj7wTP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkPH2yXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkPH2yXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B22C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752434393;
	bh=8SbLUkGS9kqS60fp558Ljwqn75xpAEE1A0BtuZlcF7k=;
	h=To:Subject:From:Date:From;
	b=IkPH2yXO/aUJrzjt+G8wE5WuaI3wCXwGopN5OvdYJQyvLIqDPYaPf99AkLOqvx/S3
	 /N2zFEfX7BAsGbmXOvXgOK3CB3CteQsKgSx2QUDavMNF6KRUbnQ8ec78j30uQpfHUv
	 vH2DPi7zCxt4FphrP3hA6iOaN8BK/IhCDL5FRmL2gkDhsVw4oCV8HK2jlU4K3Fheh9
	 vOf4Khh6faruZ09jhGlvIUOFVRZeEZy2p+kLVS7Q6u7wLCyTfobuVEtL9/cGQcm8oL
	 okfOLs/mvI6xuxNxrQ9HGOXkPth+zYck4nve5U4qnxSeWMQusz5VVdJwjM/ohYt7o1
	 QxIogzmYdASrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45D0C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243439365.28796.11724474668138256798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2002033a284e310ac2d85f3a7408c1d0e9ad7be281e2a5d79dd005028de6ca
Date: Sun, 13 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752434393
