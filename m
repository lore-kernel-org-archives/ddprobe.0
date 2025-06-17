Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186982DBF44
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750159194; cv=none; b=bLUZ3+2YMOM8JcNQMUvB84df8zDrZS9vcLgDdUbUi4BuNFFLqWvh2hHeIC/ZwQIbmvkAabww8NcZwDRBVMMDdFDpH6LxmXaSpKOJZBmy25X/2NreReF08Hmxe4/+a7hipMCVs//pBd4i5Ny4lBUnkWpEDq48ImCY4F6i2OS/fuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750159194; c=relaxed/simple;
	bh=dYLXTwm4T6uQunaLoFR2AfMp1/qAjmtXT+7VcKpRliw=;
	h=To:Subject:From:Message-Id:Date; b=mHCFSrr78RxMbtAPjs+/p5qDBwST9S+Q19CCLCtXr2pqAXgKCupvf7NTk7jm9v6X8xoZtGshLRg3JvNwddxPF9XJjubrlMFRjcfEzd6wjA9o7Bvac4O074pO48HMmhmjKXuL+heSSnDSXV8NhBbDU2c+Mx3mGceY8tOq8Kq7XFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDgC+3iH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDgC+3iH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750159193;
	bh=dYLXTwm4T6uQunaLoFR2AfMp1/qAjmtXT+7VcKpRliw=;
	h=To:Subject:From:Date:From;
	b=UDgC+3iHslaoZn7i42N8g8hPjn4vAObHUgkHS8NGF7qTdo40ChwGAiH3W7mcNYLz1
	 TJVEZ1WR8kgj+0LOEajv5Jh+SPe/GA5Skm1tjMeDZOr/m3qi9m2NBaQK1FTzd36VAj
	 NvsexZvygndblRRxZsfeuxnckS/Xa69W2xJqoPhh960+sXs6zBDxaz61hc3yeFqqCz
	 EzMF4AzPOkHG4Af/XOyaOHvDYMueex9EUSGA7eYitG8DglPgl8cqngoHOLddZyJH62
	 X6J2cpxUP5P/AMLR42DjJFivwr8w+ogttJZ8o/z3mXxx2gLdY19YbAfxf/2VZlBcN8
	 NaQFiQLQZZ/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AAC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015919358.27377.12603758918305052137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087353c8d4266c5fe419a70965f5c57918c17302c4a19392ff378225334dbaf2
Date: Tue, 17 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750159193
