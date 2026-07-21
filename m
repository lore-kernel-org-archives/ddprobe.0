Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4C137B030
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784630314; cv=none; b=TpugMtrU3zu89yN46ixNEXW9vb9ctFvGg7d3Rm1xjYAM+M5lihXRhDwh3BM7UOMyz8OP80HSd4BGfYLuR0IlCmrx0Waf2LOhhqZBfLwwp7RAWknF5Sv9ybFEQQ85wpIfHrQD3sH9f/xMXSAPN4oqd+0fXak+sfvFDXAuMNhr5Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784630314; c=relaxed/simple;
	bh=aesAZOHLzIvHOxsuUGpJiHBjvaui6xLpl91jrXA6Q78=;
	h=To:Subject:From:Message-Id:Date; b=fCUjpFFZEFgI+BqzJ6arAlEx79CcYizG/ZvJl6PvjNtyVOxoSCX/RQRJNTg5UvL2OahcLnwHrtVFLr3UunMIcGw7RfOZsIjlelCrS4qvHWSQbnVLJ2Ud3PhxrjDqvY4q5QSdhr5ZVkFbqEQAX7gu2qJWAxPq/KBXP6bHkYCVjo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi/2qLN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi/2qLN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86EEC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784630313;
	bh=aesAZOHLzIvHOxsuUGpJiHBjvaui6xLpl91jrXA6Q78=;
	h=To:Subject:From:Date:From;
	b=Zi/2qLN3hMZWCzKnSv5bIhG2vrJ2LvpKDjEp4LycG+S32Z6hmbxLAnDbG5B0O5Q0I
	 3Qp6toilYuiWUlTwA+xP1Ovw5YM7K52G2NzgYJ3oS/EhIYSbHzr4OYw7PellLHp68h
	 F36h4huLbhRryS7oUFJhBQ+yD2lca7ZnR2Xzd0rJ8PfrpNzJ6uKOlSaOSalW+sETwG
	 z6KdXMpy/ZPPqr06GZy1o/KJanQ5kQQPRM7DalEpbwPn5tJu14G2wxNDBJsC8hMiYp
	 HawWQKvqJtG4Bv/t662mgD/FCcIpqDI10MaG/FaBRv/MWIJyNl0LzOYvzVq3QbVtzl
	 ajJw/x4NQ4izA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25CC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463031368.20060.4540414540359628072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bbb2eeb26bb5f26c666c9440fb4fa99515c761c599b05dcac696c4a029830d
Date: Tue, 21 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784630313
