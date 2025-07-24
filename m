Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCA0610B
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753347594; cv=none; b=t8rYYrDMfFIcUSD5Ptrv7dYM4Yyo6Yuo6/Yqd8JRRicsrD52FavIwJep8ph1gTww6aJsIKREWjaLS/Qfy6usPdSqwSgTFuQSmB12nSIKZVVnHFzepkTB4+OZN+ZtjANoBNFChK/ZCgf6coqq6s6yzG66u+3oe4O0yFVM0oPSE4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753347594; c=relaxed/simple;
	bh=KWppfnda4fKJ4HBlryzDWfFYgUL1sZfHEzO1qbNapZA=;
	h=To:Subject:From:Message-Id:Date; b=NaEunWlrUA1I0HbChte4Yb85g/b6GccxeR8k3FWuSpD5uhK/t6Fym9R4ozjtwK1BByECNJ0vl1XwiC76y5LnQxsnq3Y5K4W6Qw8qs4BBjLA42AM6ttnza+HNscmuOS9T3KKR3XajwtjqX/rTl7K16W82BNQVSGVcvf9Bg1yAUfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcXfPC+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcXfPC+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A265BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753347593;
	bh=KWppfnda4fKJ4HBlryzDWfFYgUL1sZfHEzO1qbNapZA=;
	h=To:Subject:From:Date:From;
	b=CcXfPC+sm4n+l99ssDBHZdcNXloWaDSCP9gFf+1xxJ+l2iAPFOM6Vkzekq52aZ6En
	 KipbIoQbpHWh5tmcAB027bRpJOA0eebkhka6WbNPQJwuz5EvmqysnxW7EI7rsmG3dU
	 zZiNsKwIgFto81rhkDHTIxlRvQizyk1vQbDS0VWACflPej7k3UzvNgw2SoTHUwmdqs
	 iMkVi4k45Wn2tI9qGmr0rdI33WAeawuCeOkwGf4DR4HaJCMMHle+WJslmvFieG/HtZ
	 lbgr3n6SiOVu4hlQvnymFZfoqaQh6Hrx4aLu2hLqXdqSw+l453mCBfOBLt7CoTqv29
	 6TUyTS/X/Ye2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91135C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334759358.8267.11497791336007031776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e651edca9beb492373ee8cb52d3f75c29fae3f16c1b11c99a952036aeaa054f
Date: Thu, 24 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753347593
