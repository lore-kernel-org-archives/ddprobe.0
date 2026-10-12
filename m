Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499A4B0E57
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791825634; cv=none; b=mIrYARMmlAgMn/CFc1IiB+h5Fwbw209n+YrS8p1gY0IUbfGBb/NTQAER1kgi5i2oe39zyEHtOGHoJsjo0jqwoXLuLfq9RhCii3BFXV4zh91bSpIfGMfmUUnqT4OQxrt5Yn+aB0zC82NT6NlLZJkDT+BnUi45o0X5C0Kp0l22Rao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791825634; c=relaxed/simple;
	bh=/cC2r+7XJ7kx2ZCtYyMirCvHOPYtHZUsX+17T+fL+fk=;
	h=To:Subject:From:Message-Id:Date; b=lJoNeTKPZvkNZYL87RCHNDNo9nKQ3CInJkY3inM/AtDT5ReUw2paBBiRvy2RUs3U5cDiU5AiJPfCIfWQvHDYu5NAaq2Z+32WLMsrA/D0dK3dudvn+eIVq1mroOJ3J2EsiEXyiaKIAdU0vsNTsBik8VIbeTGYVpc6X69SBtme67k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eexpzoDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eexpzoDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2C1C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791825633;
	bh=/cC2r+7XJ7kx2ZCtYyMirCvHOPYtHZUsX+17T+fL+fk=;
	h=To:Subject:From:Date:From;
	b=eexpzoDc11oSlWwsj09CfyecTEXYebQ5GDkRmR6XDIHMkeyY3WVa/WS7zHfb+7X/5
	 x6bmSyQ5ysLrKzk70+JnAQkUQ85WgB3v++YKeU77RdEQCinnTSiPh7D94Oissn1TZA
	 QtOskrZtQSjROn7JbCpz0SHZlu3c3kf4IMQ69Up5drfaJpU6yeN59K9MDxXdo84NTS
	 ntQBbn4fxBQePu58dnSWeqaLEocG7qwJtPdWH7foUdx+l/5kaZHiARQQ/n9oIJleOu
	 1s19VBrqbVfRUnR6Wt0+e0j5NsgWhox3DtwOXndUWc91HtS1goXKG+WOgs2qOhq/ZY
	 xPAw0miuNQbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30E0CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182563372.11913.9411633018707803269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8890e0ecab873e1eea49ed2f28a5aabf37ead3c2cf7b315617af49c3ef574c
Date: Mon, 12 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791825633
