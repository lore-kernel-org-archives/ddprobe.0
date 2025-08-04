Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644E24DCEC
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754305794; cv=none; b=hbP9aEhln7mss1CM+ljO3jWJsk4n46aQXd3YRL7U4DUJA4+R8gHutiudw9vk5ldyYFqHm84YbKJ/enyzXP0ImNQ4RH1eYKpEyD9/MYM8lDbhVVqoHh6CiLkbEKvi2ZZdlodLmjEJ7ILqB10UjlkxEl0ZHeqoQSxIsdqkrxAGKoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754305794; c=relaxed/simple;
	bh=rGrKH12x/EH2L5tLIfOEJQDJhZpYtz2pPj/07Di82wg=;
	h=To:Subject:From:Message-Id:Date; b=UnTCuRGoOaoSwwbgYWOPLH48B0HanzWG6mQATEMmy20Luo3+OwEn+sTBKEPoYIFgLqm3C9p0NvitqsDNBmuJDRsma8ngVrPqezWWUUJcPvQHiWsE8Gl0GgnssG8W1+PFnwHPDDy/+I6zlIg8XPb/SB0D0Yc6EhDMu+6rgurUGoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9S9KcGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9S9KcGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754305793;
	bh=rGrKH12x/EH2L5tLIfOEJQDJhZpYtz2pPj/07Di82wg=;
	h=To:Subject:From:Date:From;
	b=J9S9KcGMj+PsSntuTfMWPd3/rxRPTZcG+I4gBpGk3czfEAZYhIJ734LJb/vSi96bD
	 2VOaxU/ZQwYwyhSO8FaRvfJqq7vwifyTm9OxTUHbPB2A+88psQHBtAlHZa+frcVmTn
	 0sGLufQZadSGziPqam4Y3Vnq3dQf/xSlBRRXHCq6yycbFswEWmYeJG2Wt/AU06XXk2
	 iBPsnHt8m9uzTNNyAmsEGIodkyLI1s+1IIEMBUJsDrEppHhBuaMddsRqhTXCK2ONw9
	 go9MTTqgdHYchICD78eJTip2j1MIC1j65Tx0i7G+U8gcoXRXirXgcId0fk48u9VePP
	 DEtr7BZUyBInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E2C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430579358.5215.1274119581040193723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1fe2e9586bdaabe54b91be942b68edcd0c72971f77c12fa93e8bf2251d92ae
Date: Mon, 04 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754305793
