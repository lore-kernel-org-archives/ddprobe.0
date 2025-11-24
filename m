Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23007298CC4
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959314; cv=none; b=kXXUvQMbfvZtJLw89zRorTDLpClNCbyCKIlZECJfhaPjMJkq7+zamsvtTtujGvmqcEB4ZA2Q31CcCJMhfhy1muFoOazwufxLHfnxjH4mAY+I1vxu1bMkEom+ErYXckmB0bb4f7lIWY1EYIlAWtUJr1RWSzV4xUpQkKBmtOD3DzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959314; c=relaxed/simple;
	bh=L8QTIT4kXeB6PwIqvqwwSGJOcKGiV7Bv4SpqnEoqbv0=;
	h=To:Subject:From:Message-Id:Date; b=OhEMv++bO3L3UbL9QJMvFFS1N0LobB6rdcEvRraMf20utII7CMgyxz7V7+o6ZicCFV9sOy4ydSqGn6/meM5fDpTpC+ABbCeYiUkDD3jmK8UF2M8SKfpivcjcXvsG6+HytVhxJoM+Wkz/kJIrx0PXNUCcarzTRbHmrpr3BgPP4ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MycgWfDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MycgWfDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B84C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763959313;
	bh=L8QTIT4kXeB6PwIqvqwwSGJOcKGiV7Bv4SpqnEoqbv0=;
	h=To:Subject:From:Date:From;
	b=MycgWfDZwe6LPi8JhWVtScinPg1Y+qZAezNDB3/pInbC5R58Q/bAJnVBeCTiiCIwn
	 AlqY6kVxHEttSAxb/BMK6A7GRNf4qUxgjyKpXZpvDyhnWUYc8FgIbnHeY6p13a2yYL
	 yK/WpOuYm2ca5DE0z1SIS4DcpbBUjN4a0iRj+yd3mvuTjjzO1NpP1VqZ2unpM3m4h9
	 QJfGsuNF7fqhJ0DKFYgxaX3NijKj+b/oPprfuMNPAp/xfsSNGr0Ckrahv6jC5AhDCo
	 XprLyPRqTSlpLSxp9xvb1e0dN/NGUkwwy9JF6zgHz3G7027ng7i4VvgQpyMGR6Q1xE
	 jwmkWCQEEsBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D6CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395931358.25154.12211855211352471588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2441ae440a628707e9de439355d3d96f3cd11887f701dfb1b095344edaed9fa1
Date: Mon, 24 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763959313
