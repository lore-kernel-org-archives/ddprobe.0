Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E5257D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724480154; cv=none; b=lys74L/WqX9/VmxJq3zz5xcyFZCl3fE1MMJdx/PY3W5Qtbyzo8KvO6HJPNqKbQaqe/UYENGaOsQnzlBOQwuNCVP67mdZAKlm04OQ9OIE9KiMD2jUkuZsOJS1uPjsUETO7irFI9ttHJ0WJa6KJl/wWDaFdUrehswtS/fhh4r0tso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724480154; c=relaxed/simple;
	bh=wQVdRFb5yOHyWXFA6okJZSaaGxkOifSSI6ZwlS/HITw=;
	h=To:Subject:From:Message-Id:Date; b=i4p2hjqHOjnQyfyq7JOLBtPAQnfOxsS1dsm7sSpCiIZ27b2H4zd/+opkUoZFPR3V4X3VwS4dUHxrxEEAY/whMFWg0HnAx8ueBaNzlAT9DMJlaEV11+oy5CTUcmynZ9QJ1oA/ok3jKB4DnfgK2+/Ui2AODOrqa33IP8KcqEPbvuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZrcdH0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZrcdH0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF44C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724480153;
	bh=wQVdRFb5yOHyWXFA6okJZSaaGxkOifSSI6ZwlS/HITw=;
	h=To:Subject:From:Date:From;
	b=lZrcdH0ONb+dW3gcuyjR1JQ9NzrLr1AhptxkdA+9dyTWsuwG/HqXzqy2sAkYRAFzJ
	 QW9mtRZSwidQ/J2wTvHfpQvwI7Hxk39wXi9cuJsQTGp7KCBIWJrwoN6BAwEpN4F3En
	 PbbSeVAfOfljUWTIduk4nu6SjgApGfq5KZq8yJEgqxpbWbKWpIDEu0fZkdwfeunKag
	 bgvywZLjJ1qUwguph6xy2tbGyzzFRzI8eVC8Yv12w3mH2rLbwsdL41O+QmSFKtG5J5
	 e9ZMPvbLTVnU28NFUyDuzJ6WwxR00NqBHq/fA+nq/VWP7nTphM7o1Guu5w0msjYbfL
	 glTNjPfMgEJqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5E5C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448015361.11003.6025125998559741102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31aa2931ed3579c5c1924316fd7d7cce8703191ce58708586e630f15be8264c8
Date: Sat, 24 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724480153
