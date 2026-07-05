Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36860171CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783268314; cv=none; b=nXgQCLLG6E0deZNwBZXjScVMFhxJiQyHYEUUv/AYQtU0Vta2uo/ic1dd/jpsWIl30L5mMyk5LtzNRws8cSLTf+FIjIgdRJBtIqqL0V6yUwrnfCddU0neKK6w977R7OmS3e0p1AOKAVckof+DhuXE6BB8Yfc6ntnnAAFkFdMMCuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783268314; c=relaxed/simple;
	bh=2/dyj4DPu3YKD4do6KleTe5PPNZzaXm+Qvh64SlaXwI=;
	h=To:Subject:From:Message-Id:Date; b=K1WDr24MHk5laJXUxCL6VjwZjAoQRdWKaNiU//T4+WMrvSRvTWgNoMmAFosjlPAmFIq7C8KNE19bdelzUG2lDGqApGJDFmZ4eQnl2SeYzNmfh4DmxpUziGDY/KzCLIUsDKnt4dhTwC+a4C5BSbcVmD31662IELUgboInIAe3ySM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjSB49rO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjSB49rO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DA5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783268313;
	bh=2/dyj4DPu3YKD4do6KleTe5PPNZzaXm+Qvh64SlaXwI=;
	h=To:Subject:From:Date:From;
	b=cjSB49rOUm11RK0wM132fZ5RLmBlHIUAdVs7RQP88OzWgCylJJSwUkOxK9bk9tqA/
	 COTFEtXsGGMpn6hIs+3jjY8TFcJnnTOikvUv479HrIT0W55LN4iqNUrnyJr3jERL9m
	 SePgKFpcc/WhC7DJaZRkkDet93I2hBNdJNNvcgnzEQqT9Dxz+KkZgZGtrunFgBRsfl
	 a4Js3NNmD0otg//Vo48Ggj6oFXjZSI9BgFHTIDrwDwjmYVWHOH2n94ml93ztJ3JC3i
	 h8d0e/thS4MebjNDWZ4TFUGgTew+YzERy6uCSCSHMqa4/heW9MLnX56pulLWbu/d7m
	 VuKxx1GnrAK3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBE3C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326831368.15053.11695560298843633470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c12cc823090402842a0306767b70bb8b8c1ba5f9e210a470ad7f3c2f396064
Date: Sun, 05 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783268313
