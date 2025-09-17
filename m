Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA6434134B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758124194; cv=none; b=hlC2X9H6AnO5u2JY/2e/yNJExHASaicpRFZxYw1nd9W/3ETebyP0nYRsoeEoZBaIcpozTwphu9V1bng8SboUzW1Kd7MOTuxjSRhj6DOxHEW7SerGpIg7Ds+rltwAXFGTdf6XCEJZIlCuPHELSQF0F7NZCLqGrsVeKIzFI9h+I/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758124194; c=relaxed/simple;
	bh=suAfkRo3ikj+g844S9LE4R2jxC7b/M8TI1KxtfZ8MxQ=;
	h=To:Subject:From:Message-Id:Date; b=QG6WAnXTbk4Ol5CMVcolis9g7jJf33/CiY2W+c6GQijXgNjA9Fi3oGrW2zJc9SB4wB7woUZ3AK130rYeFw4t3TreBO2qTLkeq8xo6M/9eUKK9alZw/3AHUmXuDItduAWxZxjMDZ+fWx3cRH/pvjLWzZzUqYALuWScsy5sPALnWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfYG3hpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfYG3hpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95F68C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758124193;
	bh=suAfkRo3ikj+g844S9LE4R2jxC7b/M8TI1KxtfZ8MxQ=;
	h=To:Subject:From:Date:From;
	b=jfYG3hpKEvIdGRWhcJXGhfdevfpsZH87BwdZj6x8mBhADfo8MMHOoLAeWHFV/7xys
	 0wJ2QdZ8aN+A3KYgh2CocjJWC4S4pdx9uk8KQB3NFKPqwE0r/EsINtmE1ZfvR+AAmb
	 kPisfwNXi0hZhoi6t5DGlosRzEeBxh6vmTwxWaTWTF4BYVZsj+1o036E1aKgCRRkE6
	 B45ArJciMHTk6xxNuWqrZm0kdOUFv1Z87CrJL4v/5VVVX01DRc1dWjkACq2X4yGrIz
	 VwUHNo71UQ0ueRV9rC1tJa4f6QD0AF3LhCbpfyaIhYcsfxMjycl+adfNKYpcZu1fMM
	 xGfhGSGyXEKpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEBCAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812419358.25215.8368938810800337947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7a32f216573027274420521b45ac5785d817ee45c6545c4fb4aeabcfc1fe13
Date: Wed, 17 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758124193
