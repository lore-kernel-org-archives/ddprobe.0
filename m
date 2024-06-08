Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E96725740
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717835843; cv=none; b=EuvXMhfdqDOqrV3qal+XxepVyKhX9LDv4W1yjkFLodNOQg/H5zRD2Cu7z76j5sTGdgvrG+zmYUR0qzEp3qL5kkwVRGaS7dsPOueVAB0eDbJbwZSCB1d5zoO1izmqjEqZLrT/s3VGJiIDhHwx7/VbtnvQWqjW1uqHntM6AJjr//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717835843; c=relaxed/simple;
	bh=3/R1I4hplGNaCy6uJJIpoGyLb2imw1E9A6sh+xny2mY=;
	h=To:Subject:From:Message-Id:Date; b=SGbAgUaQ8FRDi/qN3TgkOaLYHCbZu2qSveF/FolvXsnCLxQYUwRw03C+uudUOcEr+lrTE8l6aGLU+mI+ABcZmOb5boMtdUt26msjQVuJInpjxiyCvqZMiYiMn41ZYihiRC7+zOuU6z/cKDaGAajE9Nf9kCcjO+5IvqiS40NdMjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWhCnsD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWhCnsD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC585C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717835843;
	bh=3/R1I4hplGNaCy6uJJIpoGyLb2imw1E9A6sh+xny2mY=;
	h=To:Subject:From:Date:From;
	b=bWhCnsD/aWOKpK/c+402fg84KSgw5irxkBYy+uSl8mNJss3oEudwKdPtfXavTViOW
	 hyzkkI08+ucYoPs+6nNk0Fs4ooao9PECMkag6A9F7GrrD/qomojWSwJlK4ovtKY8D4
	 UBej1WdA9Mw3wQPbah5/sqeOb94WXlJxo1y69NPtE4tBE1vF1Al5SrYeZ0TPJo18Ej
	 2w8zzsJqsALwAkQQfTAMyNXInM2r1xdLsIe0kOLNq7YbwwJA2+q/3z7aQcqPl1Z1Rr
	 sTkzQhkmZHyS0EFtGWQegj9ZaRTk47QHZ3go3cakfI0IoYpMbG9z5mZYVujkYZb6Vf
	 Zi1hk2xlA65eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6F4C27C55
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783584283.16498.5319700684975270342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d04550b25fefc8a3df6f8d7c9ff3c1b7cd4ffab504d02b34aa8a68f6f27f243
Date: Sat, 08 Jun 2024 08:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717835842
