Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473E2874E5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753121394; cv=none; b=jDCMICkwpxMbryKiQt3ky7n4y0YYCCngmVuXAYCtkiBjXP58LYliZ31K0okfY86TBSmQtat9V55G9AHdQTOl54ayGb4iRWlnR4SARtN45W+jTzI395FlbjIu1oRKZvubO1qjmOKLI6l7mIhfAXJxXT2eJMad7akpY/nX20r60d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753121394; c=relaxed/simple;
	bh=ye/DCo+b6uozaBhd/l1fh+2bq6VeeKN72lPotocrHpk=;
	h=To:Subject:From:Message-Id:Date; b=s/WTOs40gZ4xBAxUturPCaM1LYAGHpBjlVzWflGM5cC71HQm4dPXtNJIxX3PwTHBGYnov0T2mH+vIvYH6P/sgHNGMVT68suL+kv6Dz7jhg3JmOZk98+Ro22UnqKGdvcnDQYNDqt9HKrtkJQqbbk1SFvfGCVN4UVIRQxr698XSOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRzi+p+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRzi+p+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6342C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753121393;
	bh=ye/DCo+b6uozaBhd/l1fh+2bq6VeeKN72lPotocrHpk=;
	h=To:Subject:From:Date:From;
	b=QRzi+p+SaLtPjm2AiQrsBCw2BT8XQLyhM+1IGnVTzQZt8OjGLdB8afuIZ+36E+ugl
	 cah6OGk3hga/OBtDjFnHhY3wzEN/IRl4bVQcWxm5YXthXVD4h2p9KbxL7eiDKuGqO3
	 1Ge8cA5/vHd+uFut1N7udY23DRwllJqGdpFpUj3H4bGsRHzNX3lFH/7eL15ERL4qUz
	 Nqgf46LAj3pNl14kutdraxGXb0ZBF8xrv0J8SCaTle2EWfBEd+jzMk9sGL5Esr9SB8
	 tpOH0b5aJQityt34Ru4FPHRnyOPWcC5bEUJxkanjByKJvl0wjaQiwi50Sqxy6TEFuq
	 cqBlDdX5UJKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5FC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312139357.10204.10407629042138098026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db46810ced04bdb1e71828277dd46bfaff32447df978b7f1f1656fa427435423
Date: Mon, 21 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753121393
