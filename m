Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DD7136348
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753822194; cv=none; b=IllK8ylNHnNQxclaTB8KFxS2n9vf/kvS33W5zuiQwwg4h8yt2mVRUBpSVJ1gpb11TMaX8j/MMPzVY8CBx0AYNztKlhhFT/YsjKhrJF3pNviNKmOCJAsJFrkdWlQqUUw2zXZJonAwpoLYjsoLiZPY9dgdo71lTN82iN0E8njhUiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753822194; c=relaxed/simple;
	bh=vrU+5ZaoTH3/vZOnpnVqiQve/n1kY55bU2+QaPcVO1w=;
	h=To:Subject:From:Message-Id:Date; b=S0z1GG9UteIic5kTHX1+rLdPVFIj/NXyihlbcM4IQP4Veg7NyGwt6wsIyXaMYz5w0SQoOV4RhxGbujJoVdQnuyjahLgKpLr+gyq4htjErThjrpKdznOfvj7L1BVZixyX1OHv+MxgntzpT0Q996c7PR/zAedl5LfxAO081pWJpzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTdUjB6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTdUjB6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC4C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753822193;
	bh=vrU+5ZaoTH3/vZOnpnVqiQve/n1kY55bU2+QaPcVO1w=;
	h=To:Subject:From:Date:From;
	b=NTdUjB6m+G1LvElUexvP+O63X0g5T4tNU1I1AlgjNrXBBU7OtWFWdtzqA1a3FrKD1
	 0IQB9e6I6XV6p3GlPJ96SsoTbKdiyirFAk/F0iyiDquIvVPXnwjJ8i8wJp1IUSH5lf
	 AqpO0qEriTa25QzIIXVPje4dh3eFz9hi/R+ammJXu0ZihVH0pUzUpYH+V3olxGES1k
	 8ILld5O8NjrfKSn9+t4eDO2z+NzbcRu1t/o996VfpZ6sZBlrVnr3LODkKxzaeG6aHY
	 FvcbxbQ6tw5pcZ5Pm6d2QlHHkqT+QBsLhH8jYF05vLDj72tPdTqiJxcpZdDFsi5qlW
	 1KfXcp11zBy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92570C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382219357.3727.6943485358287327706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487728f12b14b2eb3c5fef6c432cb537c8550e9f3b29209559b2822ab4ed5f65
Date: Tue, 29 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753822193
