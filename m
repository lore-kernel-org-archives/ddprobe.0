Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174302874FA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767689634; cv=none; b=LRqkCKaIytmklWm8bXfF2KVPq9ae6uySG7HcY2T8tWknBDwSvnAVYQNsBcXEoL3/0vbaizegGOBVJG6txvVzrMPpuVGKg8ZN2RN+k3L9lJ/ra4rXnOkdnLZF0C1TMhr7nim2iVu7Nc5cxvrZOPBBy9WPArhBjx7Ei2U4kg7/kJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767689634; c=relaxed/simple;
	bh=gWdDbqq5uu0eLciKloGDvL8E/6fdQEIOw0oUEDvLMAo=;
	h=To:Subject:From:Message-Id:Date; b=scNCSabgtkkG+penBqwz+Bwlg/BIml2ys8EFXXLnU8T4En6bwKnoxQFwWozohAPMsbLHhODgN07/+CgR3vFXisxUs1+iFjfkd/MmJ0u8G9MN0kvlhBTeZe97x/kjy1z9hzcX8QNGSjFlZ3wPx3QYlmQDeLETr9xWsWTdIFx1Sc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC0PsQQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC0PsQQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E625C19422
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767689633;
	bh=gWdDbqq5uu0eLciKloGDvL8E/6fdQEIOw0oUEDvLMAo=;
	h=To:Subject:From:Date:From;
	b=vC0PsQQ7FXxypMz8BVFpNI6o+Q1OkPyh/cVEgz5NK7uqRWCMSMjeHOA+5KWXS4Y7M
	 buWYtQJ6IU17SCBJqT50W6S+FR8YPXef9/6/i+dIJcD4l2S+FAayx4gVW7UDvoh+nz
	 ll5jPqegSb7vDE6xo8M0IfpLSYbeoYH75uP+z9qgGT/vKVI+z4Jm46L52O35IU8ioA
	 sUUdB3DkSLomq0KB1Q5kQbESh8XOGTwbNHNlmCqN11lxEaUig3+GNb1mlmpIkHlr6J
	 LzYXbWcJp/A6DHAnSRczywyNQ1guyS92eQgwwPrR6ClKYm8QNMT/NjsFE1pAmNyoNd
	 eFpisqUeHg4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B28C47BC9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768963358.16463.17123765021319334292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c9431b202dbc0f03da8f537e2befa5cc4f1b24adc5338959bbb2a389162b71
Date: Tue, 06 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767689633
