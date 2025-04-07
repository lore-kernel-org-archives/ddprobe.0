Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E48223316
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744003794; cv=none; b=flkAkQQE+F7OLu8/oWd5eDNkpywMjrThoTmtgEUxDjrGoxhX0jWWfG3mbmMCmOtT+fIn9ZSSxHTLH9/Lbj7yr7neE9l0xII6WOl9EVpChnYPdITpOFFoo0sec1VaBT+fg+S7GubJBYSPfDp4dT959S/bO2pC+H/JQGIFuZnkPk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744003794; c=relaxed/simple;
	bh=3vIze0Ug0mgVo+DxR+zY9tvk07Loshm3kDEIEQg9rJI=;
	h=To:Subject:From:Message-Id:Date; b=Wp2CIdhPSuDVvNM1G31sDttDRyQhGM95uIY3KG4FhZARW00HHP0QO14XX1UrOT1PaVHQAdmFxlxC5J6VzhoHPGzeWur4Fkqqv8yUvU3KgdIhaOlwMm1l0i2D+4StxS+cu2lyRxSX0WGZbDphUtiDPof7jlWT8FVjTN6M1m8tBYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6XZljky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6XZljky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D7DC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744003793;
	bh=3vIze0Ug0mgVo+DxR+zY9tvk07Loshm3kDEIEQg9rJI=;
	h=To:Subject:From:Date:From;
	b=M6XZljky9WX6E/DYMzYxuxlgPBb+S/wAcCAXadt+8/tRkSXmbLiE8+Chgs0piwRYV
	 tmTKZcKzWbeTQnUbro6SVsftfa8bKHO2s6JBY6dU8J0nv9gRe1gisTVTicoya1gfZh
	 fe+qK9qokzvJ6hueJO5Te9RNIw2ABI5KBWem4A36Ib6SNESjxmYpyjaI/KloRVHUWi
	 57fE2Yx2jSMZyyrL5w5Sv+UA9A1QZdIDJRlpS0ZzxN7jZYvNeSv9GYte633jvzF0ap
	 F12K4W0tAs2wuNrmWsvbyW2Gwe1W5JWKGDwm1YO2WepJvslHI8mRStqtY7SdZaINK8
	 I/CPy+awI9tdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C180C3601A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400379361.27734.10737057589018910995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe422cedc376074de8206bf8012168242004cfc0014f0255b934368d3c7afa0d
Date: Mon, 07 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744003793
