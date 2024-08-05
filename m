Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1613A143C69
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722887754; cv=none; b=QXSShpat6vdVC2Xe4g5lZlMArqy9MiH5bN2GuoxBNKdrqh6U69NNqClj1Sp0ysJTam03dMdYVlQbIjfgqrn6DMewpz+wiEu1DrGtjMvlPD25x/XmBmo5J3NNDWzjPchrlNNxz36qTDRHKcUsB9qDKS9GJNNSymvI9A6G34ajZBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722887754; c=relaxed/simple;
	bh=iq5xX0MQZWH4DuHa6pJgs+YBUiJRU35YyZprytEIpt0=;
	h=To:Subject:From:Message-Id:Date; b=M5Xn7wSZY4Yf4LjbVsoYT4o9Y4oBbJyiUXzuptkXPAof3R3zFCs5vHhwzEUyULsEBwRNrUiAwm+1NGZjgwGzpHlSi5PoOnwsTeaBPNSU3fB0xysmHoLrT1kkSMGhJ8lXecr2q+qD/cfVew7n6jt/4k63+lqoDV72ZIPgNlQk5sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye2oKbxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye2oKbxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E0C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722887753;
	bh=iq5xX0MQZWH4DuHa6pJgs+YBUiJRU35YyZprytEIpt0=;
	h=To:Subject:From:Date:From;
	b=Ye2oKbxi8Vf0bS1E1QcvH+/6ZjUNiCn+3raQyk9H9l4AVJR8tREapTEAQF57okfjU
	 s40eS4Jh9TGMoMp+iU2fr8XEEC8Mw2gR3RqpSHUpUYqdu9H7N5fBxzvT5rYH/7r26o
	 Dl6KzCxV4uHLXRvIo23Txrs0zLY5k5qKfy7xsjhetOqWeECsB4M6HlAQ/BZMxA5Dfd
	 l0e1WWhzcaGyaqz0NZSZ97xltdHhOq9hm89c07QJ4r5h4xkKe2AsABYTcut56UlFLA
	 ulQLbZKdU1ZSmq3Yb/0u1G438x+M1O/T6kcZfgUK54wja8QOZW7YCPwxcQqbPxGOLu
	 //x1/f+tNv3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95715C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288775360.14512.16488316057085163377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9ebe83289ed93807216e7c4e9f5dc6a8f3a2762ef8b1fb0d1b93eee34aa0bd
Date: Mon, 05 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722887753
