Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C57516F841
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749161994; cv=none; b=BTKEEFzTp9yeJgPXYh4iY0voEIyV3+5AzvYyl+yfxive5onRUHti5Elgph5XNiHd/r7lxrRIzyo3eZ7uJ9ulClbCQSjHDsgZfT95b0x8YUvBBI4Judl1+/cToe7Q/9q+6JojpsWdY6pZR0NekXsA1JDk26mheo7KjAi3SblF6es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749161994; c=relaxed/simple;
	bh=fvG4nFt2wt1ZZ9F4Fbbev06HdabS8FGG4YShyv1EqL8=;
	h=To:Subject:From:Message-Id:Date; b=qNKczJxQh8LHvSqHfSdOeueBfIGQm7fkrk4zExkmHNzCA4uYrTk/M6ACfnqlj0X71VFb80AFxrx0FUoqQG3hkIQ9GNVCSKRuTMluVvg1nOLnXgOdUoXQsp0knPfmT4IdmZZru9hYaAtC0eA3d9Ed4hmtgut8jXKdVLwL/K6D6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzlHrnQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzlHrnQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93BDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749161993;
	bh=fvG4nFt2wt1ZZ9F4Fbbev06HdabS8FGG4YShyv1EqL8=;
	h=To:Subject:From:Date:From;
	b=BzlHrnQSEcrsqblLAbOdMEuwzUrPgtW3XRordJVjsXj/tlZbKh2w+9wzKzAOyx3jD
	 uTRtleVbTaIGALDBgcyw9jtXw82F0777vs+kMCQ/K4e3vaIRwauGgxL3FvBpWU0EMG
	 vYE/tdGUBU8MTx8kDj4ct5eK8AfLaH2IdIPpUQpBaQaxPzFWT7K8usDizcR0Koexkk
	 rJ5ShFZwWBsU7/t2frZVauYrbTJ0Q/1tudo37WzVwyTKdaOIJiXDNzE4e8uHxxB/yG
	 puNiNx4kzfuOTRiUcRb7aupdRx5d3qYt7ttvgF/cx9toFJgt3Pdd2IYClnBwRR1y9M
	 dZJYym8tpXjKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D5FC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916199357.26761.2884482824847296492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b117299e1a010545b45bfe8742d36e2dd6ad83d5e0a8e0de30680ff8800882
Date: Thu, 05 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749161993
