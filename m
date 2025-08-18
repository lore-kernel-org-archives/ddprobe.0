Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F42266B52
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755492594; cv=none; b=rLnWfSrMNU+1kAONPQY+//Xsdc6sdRlMv13O0DxKOtVdPaVXrBhhJDsSWVZyo0qstCrEJQ+vP1XWzRj3iP6cJHbUqBaM72Oq+ObKBESGXHEscsivmKVuKuY8x3FgKSaz8dQESZT0oFFVVdDs3TfF0WWpcCvkv6ZDYDlxNOjHOic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755492594; c=relaxed/simple;
	bh=B/st8VWsLI4+51hlBOzi8lzfajBnO2Rxi3FlwPQy7/4=;
	h=To:Subject:From:Message-Id:Date; b=AG2/fUBAaUeXc6nIxQjVtmJN02KaqXeQUWDgPEDXRlTElMi3pWaP4TV4AbyXRTcYgV6+ErnjF+EuDJ3LIHGQqP7j9h/+uyw71otHB7nE49DIZhUeJtLLYturze6PVZ6APVlqWp6TbM9vWfZg2Li+w1sKgJhW14XHqAooxU42zB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsUz+l0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsUz+l0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D93BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755492593;
	bh=B/st8VWsLI4+51hlBOzi8lzfajBnO2Rxi3FlwPQy7/4=;
	h=To:Subject:From:Date:From;
	b=KsUz+l0d99qMWDb5r9CoSQEWmUzWxa0Pl10RpZkFOh7HtpsuAT40HRJ2YrX8QKKYY
	 QexSF67Mablnks4lT3qxJD2kq2wdAlwVQYXRkz/dRMw7QZNmHf836FDS5XS4Jys7qf
	 JKiuzFaiWN0HR8BnbsL8fvsYBtvgeXO+Y2/So+xyagB3bE2DxQOhKKPPDLM7gXVFv8
	 RTM0L7lxRFB0P2hDM2T/uEK96mTYrHyl0CsP4GMs+gd7OTq3plb7o9U4C/1NJRxKyT
	 4g0/xv6XU92tqZ9nPGmT6Y4bJYdj1JLxTjhgpSVdwJIXlV44l9aOHi3Wzpjxw4HpWs
	 iRR4YrHB+vSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7ECA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549259357.31374.6309039626753559163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9813f84f605d1fbe6111ad49c43a5abf47e163ad92baf6ea166fc0d773b51c8e
Date: Mon, 18 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755492593
