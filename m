Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4551D7E4A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753239594; cv=none; b=qYDhNlF8WZ2rWwm77ZhOfmgHFFxFQTRJ29ZucYI4p8GDdFxTBzmqQajIPm/9WHOpobxFiJH5EH+2ok47qnGC06LWpDmKqksUyOzyRo3NPzj1s+ISdQC0/ZZeLhPEbcj1UqTGFtOgZePGSRiMdIxip3IRjXdFEg61IN0TJYPzXjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753239594; c=relaxed/simple;
	bh=hrzCnILfNsLUphVuHvsM4n+tQlJ5CPQVoxhNlZwRosA=;
	h=To:Subject:From:Message-Id:Date; b=S7B856/1erlkndVEumHqgLAguJYJK1KGEeqlKI0v2MfFMpFfIqtGyoiX3B5d0grSbFLb9coIwgKYa3r+jhgVhVjlq/6uI8o0VRjtTPOFgfVxtZ4VfNCv/ncIB3IuT+yo6qhsxBVfY9JZzUJvymzrL+sS9dT6+hFOL+22QMlNCNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG6Bmfar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG6Bmfar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B87CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753239593;
	bh=hrzCnILfNsLUphVuHvsM4n+tQlJ5CPQVoxhNlZwRosA=;
	h=To:Subject:From:Date:From;
	b=qG6BmfarcEIb9n7ffVgspw0RYmddS4xHHMHPAMF7T1XNB7LON0j4Zgtv5wxUAkQL1
	 UcyljHT9jAlMTl7axGio0Abe1Z2B+JjGcLHycbzi7vZH+6jJXuigVIht9NrBcJNzir
	 ESjl/8xVv7yfHjZEQn3IwOXH8z1GmaKRQqPp4NHXDltpFYNS93FOM/l5AhQFypZMxh
	 JWICr+lu/lqScL8OjWcMJl1kc8GRj7c0YRpDp5I+tKO2QKOdfQVLCtDZY21vAJch55
	 XQeNyyRyS361fgCvA2IfDWpRujVDKGRIPShe+e6kJ1OJLadZheVQ41B0WqWNvx8Bf3
	 cXsxOR8B32L9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93423C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323959359.9325.2304026817655666982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de03dcdee085ce37311493efa4d2c778da7325895568ff2437416958f2dffba
Date: Wed, 23 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753239593
