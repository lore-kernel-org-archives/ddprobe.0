Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684518641
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730007954; cv=none; b=vDWS8mo1UsIXEpQEjySwEzVOV9dga0O8aONto4o0XXgnX0yHNvyiUZdxDt+v4rr/GdNlgbPq7FaU0ppxbqbX62zmEofeSKp6J7J96ZUnEPQiX5wUsy9ewVkTYzI19Na53Ns9NAOQSBHilD77dsCR5TZW3EuJr9tH26XP6kkjZ+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730007954; c=relaxed/simple;
	bh=qpZ7OVOytuytGsZ0aohBi7O+SEZyRSzoj4Jk3TDmfl4=;
	h=To:Subject:From:Message-Id:Date; b=c3/98EJQYmvqGXPfOKLHPuseSu0LuA1b3NqvC7KtKbNMNaGdSKFB275P6sWQM785l4ELxXDnwb3kSE/v/7JUsWqk9sPJz+KMZQtpAjfemRu9VAnXiF4hTrQR5sjFDofgnlWJjRpEFo8ELNU0AcC1IPTo0vPKPSviQeIUYovWJOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZcz1Dce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZcz1Dce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50B3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730007953;
	bh=qpZ7OVOytuytGsZ0aohBi7O+SEZyRSzoj4Jk3TDmfl4=;
	h=To:Subject:From:Date:From;
	b=QZcz1Dce8tSUluV2mY1SON3+5i391Qh98c6GWKm5E42AiEqZsYtRWsJI5LtDDIuI1
	 wq6DKn2gqi3Mh2GL7M5JAXR4hCyD8BZzxC8iGkSRkiP8CDeJWZvTIFhC/dIVKHAIO6
	 nFZjPjFrkmT4uYahW/hoF8EYe4OVlbSFcgbQIK7qWyWSZ8uG4wMl7pcOXzEXM0T4CW
	 6YkNvqKedZ4kaB7IbWJBEcqHHjyzIjQJ6VtdPo1Rihpk1q3kP7XZZ7ssR4HPaIns4Q
	 XF25GGGeu63x6nt4mnIOTjEqAzQzjY2NMOC1U5kG2TPmYybP0HLINWY74mIbc6NfkR
	 hSDo1YMmagisw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FF9D10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000795364.31542.8342881088035151653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05df133f04f8c66342b5fdb7d65a19137f6ceeb75ac73a5310b7874f29f1ebd
Date: Sun, 27 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730007953
