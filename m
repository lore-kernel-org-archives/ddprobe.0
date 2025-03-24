Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C4B63D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821194; cv=none; b=ua39Oi0jHK8PYJgoPdoxLW92A2jFCHwyAxo3SLAFjAdrvhsLaXoYaOCfB9xLlO1Va/83rviC4RwgneRiVpmjo9JpI3aBcPm1b55NKCyZvIKnBzI2SbZic7SNjLCwg/ItVNSn1Xw47q/LpJUCmabc5dMGyA2xKkPZ2hWI47Gw0+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821194; c=relaxed/simple;
	bh=0m44d4329Ts6B9d1Ob0zV383wtjVHZFmKKrhPhSWiWI=;
	h=To:Subject:From:Message-Id:Date; b=tU8+7ZyhWl09KKZqF0r+U50agOdX5v17XUOvXsQUi6bQNWL3rAk3wQ0V/pr1agPSkKZ8nEfOAnyj+SxNYdRregXmPFwiQ/KMkaca/l+HRqqrq9KxL1DJInwIht1erZv2w32el9dreUO/wnQDoG8c1btQNOezvQXysgpDgiWKUjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1+SBNa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1+SBNa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5093C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742821193;
	bh=0m44d4329Ts6B9d1Ob0zV383wtjVHZFmKKrhPhSWiWI=;
	h=To:Subject:From:Date:From;
	b=B1+SBNa6Hqyy2OwVBOwJVORP2jzpvrvTwSIDFF3/ttz+Js2oXCtjpUZWLa8gkCBLc
	 WTXZmThA1f98GgNBspfQu28eW/fk4oF6JuLsFfkPfYSHVwH54mAsc9Ds0Zwl0G9j0M
	 e84qfmpl7xZ5SJ4rXxiHeVYTs7/gLhCk2x3+rHUcyWErtQYi84Ryf//6VaS/c7upFy
	 RBaBFlM6TfMsk/Xho4yuEAlg4jwRsPwTS+RR4efrmTEdJkoEyB94tquuhqbTbtZGah
	 Ex1OscPZRwd5ZL/PoPtMg/7c1CHPQVc7O48YmovKC2rxtBbRg9HL8M9kTkgJ2G9cOb
	 hJZtzTwalwKOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F02C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282119358.25471.2709269485367736718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8021179116472c3edcfbf470cb9075dc591ac0c23cf8bad8f9631beb24ad2809
Date: Mon, 24 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742821193
