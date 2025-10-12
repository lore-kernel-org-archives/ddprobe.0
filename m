Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAFD2AD32
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760244594; cv=none; b=rIBLhQ4E6TU3zARyQaijk7uosDpHzKQNeJVohBdWMRZT10hmIvxV+Y7rNt2oF2j6C/N0XpnolTUTjXgq6l3rq9C+cUp5gxXvWLcx5jWSg+aG0wnw8JkroimdW5nJBuEP7qTWhSgaF7s86ceJgtdtpMI8ebckz+WJDH/u0ghcmG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760244594; c=relaxed/simple;
	bh=VxP5U1B4mANYZgI9PfwRNwegdXmb82zDc4emaFeEQqk=;
	h=To:Subject:From:Message-Id:Date; b=ib8aYILszUXdU3pEvLEUd9GkNqOXTjkJoWWkhfsVScVCmUse2pkGu5oVJUsXHNWs62huZjcQced/QYVpsjmVAypWJHVK8Vjt+Zqr1AJdUVe4ZZKPl8/U3iYWds9K35I3UMW+lpikAYAmK1H8fUAl3xYpzD34Y03wx5YmUSd3yrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv9PFDWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv9PFDWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760244593;
	bh=VxP5U1B4mANYZgI9PfwRNwegdXmb82zDc4emaFeEQqk=;
	h=To:Subject:From:Date:From;
	b=uv9PFDWtXXMuYmXKFPauQ0AMFkDdMjD5dlXxCHl62Wuk+V6iAAOvYcGx5S5tss9fj
	 W7tqobClwoeAIjsHY3cww7fF6/i0Iy2EmMuL8k3VIOLGmKn46appr6iMQgVic3Iloh
	 W0JMvWzZuskZBw5WUeqqHT1takqLrVzpqyamGtjTin9u8RZT1Wd+HSF/cS0fh5fdgW
	 ufg5zwLoEvZgDZsRi3/f/g5Frs4/DSn5X5xXis6LJsx1fTK9YJk1xsYIQhG02+n0iV
	 GV2gGxE/skgX98AiLqSp452l6gCRuKjDSHY+9oOeIm6xaIhkLqNE++zw7UAcFwu0yJ
	 c/qxnyKLKfG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9321DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024459358.25352.4898776897727730999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fd8ee3643d35b495ee2124ee41f02c505d136893cc527c845f50ff5663f5c1
Date: Sun, 12 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760244593
