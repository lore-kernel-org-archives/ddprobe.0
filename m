Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7B339099E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774048494; cv=none; b=E4UYWI05SdSh4yfotRB3kIAZeJepOXVNE5Aaj3sRiiid3lN6yXKDPXVdDbQzxNedxiHd73aPrFldWFzMpk9eP1zHM5B7eHDHypiGUrqNy5n2FXrx1JlZhlL/50ukUiNGJb+VAlybi2/eMqrc8pp3txZkKxd7XUqpCYdRcECpcJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774048494; c=relaxed/simple;
	bh=d6XqCnTLTCkTUwTl5EsTC9H+RS2wIVzg6fGIDx8DWFU=;
	h=To:Subject:From:Message-Id:Date; b=sb3LxBTb+cGIBy1Gw/YuRfYKjpomQynmpK/JKHUSqKTkUnKIsDGbVCHN/n2WncARmzXjafsvukjCOt9pAhzL8XXq/K2ZRn0Nbw72LuQYMyR+kxZc2zGwB2nnz76lFTBjNWYoQ1fsvnWhdqBDMAdbdIf5fLqNlphX8Ehy+6EUOEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmLLMfKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmLLMfKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774048493;
	bh=d6XqCnTLTCkTUwTl5EsTC9H+RS2wIVzg6fGIDx8DWFU=;
	h=To:Subject:From:Date:From;
	b=GmLLMfKnp0OIMRAsYaHbg1Rgf6L8SLw2/8pggyJgs1KCla4/6F4s7V3Q/6oj2k5rn
	 ZptHFjVbTKwVogOP+iqhqYk9EvbjHEcGgNHEH4AvlTpVqh43f5FG1iAM4acICsfDnh
	 yR8NVQ6wfZ/QE/rQlj04nh0j0oJYfkmryULGXQfGryXY4AI3SXqS07lNNsmLnCKAPZ
	 T1VsgImZX+zrKUw2Clc5SRoX2RwvJ88QaArY2QWARI5F9nRunkUWoD6HnEEt2KWtqM
	 u1A7dBnF8jY6FusYWoZiVgihFKlZ4OpSzsVzG723bHcByYzQAkd1TWsea2wG6do42r
	 Ijfz6tK5OXmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1A1099B53
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404849357.19408.11659324220803866727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bf042a9deb126c3098022abe5376d11b6e3a884053e99b71d9a974cef488c5
Date: Fri, 20 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774048493
