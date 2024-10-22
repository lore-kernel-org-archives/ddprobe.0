Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41005139D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729567554; cv=none; b=KE2k2XUll9Di7NZC5N/+C2bzH5dtB6ztilUXD2p2Y6UJ8/SUwPLRANUCY9VZMO6wruzcKoY84fHtxiEKxZL4he2FPTnBW0OUh+7azoE5m6UvNkneAa3JC2zmcQNwKdtVrJMgtYOqIZNFZiKzOQ5G14jGEjHRYszU8EkHpBYfsPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729567554; c=relaxed/simple;
	bh=Q4r+kCjlNFuKVkJHcNuzzp2PafCSngg1u47wDMb+9+U=;
	h=To:Subject:From:Message-Id:Date; b=g8gQhJ+JYBE5Yuoh8O/I2xuBeBDMWo9DmdqlKwt/hxd6q0o1oD5oix/ZSaujHf+R9+eWZCb4/VGvQMrjUTKD5c7md0FsjebA1XLCX0mKxabuNUmJk+3m/7V8akYL82ouxqmjH2B/2g+lWnrOlmp0L2TkFB5a1TyQDQ/qmWCCIRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIZy9TXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIZy9TXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729567553;
	bh=Q4r+kCjlNFuKVkJHcNuzzp2PafCSngg1u47wDMb+9+U=;
	h=To:Subject:From:Date:From;
	b=JIZy9TXl0hRC/OdL2PdkZNMwyD2mKpoZNHxZ6yXHJhPco4Ddof1XuxLqsuxa/Jtd6
	 JgQbQ7I5p7ZrC2gUPX/rT83Nt9j3ngNEvtwDgdXt2igvdjkUveGV81wLOqzTsyRAm/
	 vfX4Saw012ez9iRMMa1HVllrzUAm6t5dTEebZDf+xpmR5q1xYokrt8jQkHIyA2TGii
	 9gNUHLlK5dhd7ju7pmtMSdxjfX/7ZqNXWiIooLUvjO/uGV+WfSXz88YhBSL7hyY8rR
	 1Ee7QLHGfAEW9CfuoYaQh1bdYG5r5JNWWIrKYVruyxGZtvwI70Bddk4XHxIKQjxYjz
	 acME/UhS7MCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93102D1715D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956755358.15361.13127485000990380229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38db3ddedc5c8d19ad8acf174876c08b7521ae96b608d375644419ff83a3d795
Date: Tue, 22 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729567553
