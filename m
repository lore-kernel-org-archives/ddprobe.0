Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0467A3115BD
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758558594; cv=none; b=hTRUDnc4OYOxi07B5i7Vt/+jsDJJrhKnpcTNnESkZW0b1ZqXak7zPrXZEysXqitvH6Bz9Jl6dQsfittOkL36j4x81cSQCTLJ136WY0AIWJfsjB9Gj7QZ5mWQ8midkeKnrgpc31i1nQ/UrhwwqvWatfozgL7X7uk8/VMUeTT0OGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758558594; c=relaxed/simple;
	bh=ivL1WX7pqdkW7mgu2+r15OgwcXtD4zJzxqnArz+TR3o=;
	h=To:Subject:From:Message-Id:Date; b=Ns8ZQ2CGmCfU8OF11IZkTSKTcsQ4knjUjF6MYPucsL5JoMFNXDJC2BtmofK0gUo3PmriYMD0a8bI+ZY8Hpy+OLFzcoW3gCVGpYzDeUVpcdsD0Y0GyA6hVi/6cnK+yHuPnAtNC8lbC+WFSd6IuHBu0JMQIydUVzhZgyKZeknbSwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h57VO+bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h57VO+bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0534C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758558593;
	bh=ivL1WX7pqdkW7mgu2+r15OgwcXtD4zJzxqnArz+TR3o=;
	h=To:Subject:From:Date:From;
	b=h57VO+bRWv6ErHI8sMgo34mUMZHmylRe30/rlN+K3mZgu/1Zjz6W2tn+9k4IvDrjB
	 AqO+jZFKd1xO9+N07cJkVhKwnDaq1TFkkAFQ6mPoBEufUCJMQqH4F4tNV+0sj8JgC0
	 rVRGvkmA+hFxi3qDj374Y755dfadIHcKfvOPAHjX9KuXdaUj/EuoqDCH84KEODpjqG
	 S2HghYiWEgFCj93BKW0CTWeunqWlTjTAeqN1AAVXSS5CrA9hHmKtoxApxb4gtLuJHe
	 ezkIfZFCx+XBDyNct1VNQxhZwDtjZHFdHs63no0WTq4EjRbzX+UJZJpHZRuLo8WS/V
	 v32B4X9C04T1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A1CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855859358.18531.11789613447928943135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59183c4e33fac86de13a47f3e9a6afd492b22347897f3653ea442393cca91ad1
Date: Mon, 22 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758558593
