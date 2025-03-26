Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329817A2E1
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742994594; cv=none; b=sUwxn6MpRMf7+K1Js+qwUqKV7n9rMZdFiBBxIFLI/LgAtCVzD3OoJOX45DWjwnrxgNuje7L/QSQtwny2IJSm0cqx4xrrbXosm/YE8OQfisZSnJOszkuKy13OtR0AraFijh9g7Zc69w/s8/clF8MM0/gYhvLHvTCpPKj5wowsD/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742994594; c=relaxed/simple;
	bh=2ShX/aL8SqWb8fl+CLZ+OhyoJeW0dwlrZkitmVcf1Pc=;
	h=To:Subject:From:Message-Id:Date; b=ZXpItO+rRPVO0P3Wi8pqNHu1oEBKnJtebWbSxBuF36Nreh6HhwCSJf1Hp9mzGaHtNmiTwWFaTWLarDJhUFf6yIVIT9hLcC4jfdA+aHkTC+aKhiS+NIHIb0Hy8sUCqCDvK/1xjabfntaN6RerNN0InZOxr/5D10L78Cco3eitGpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKB/gDBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKB/gDBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AF8C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742994593;
	bh=2ShX/aL8SqWb8fl+CLZ+OhyoJeW0dwlrZkitmVcf1Pc=;
	h=To:Subject:From:Date:From;
	b=CKB/gDBZM7U/mjPMFA96Q3iPb9fsD3IL07cOjOn9FSMZPLQq95Eg1h4qXJmdiDBad
	 MEMMOEZ2hadW610fpUQr7cK42faJcvL24Z6HHSvOue5u7aZD9lDKJfd21r6lsG2Oud
	 8nwd0yr4XK0bhEMZf9p1MMA1giJxbeFbNXhSAyZwxC9T+QoK8gPeqwTFSE5cTqbZyD
	 jMc870R3p43gfMm0f3bsQ8VUNLAFL5gBtNuNGArWGZoX1NyyrY2sgynC6PS/8p1SaL
	 4tlu0vZonFDZIwfXOlCtTrz/KaCUDEvDfR2OGnaWW0TWVP4aZc/2V/SJdmORpMVGU6
	 IlR6d1U6It8hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD2CC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299459369.29308.17386298622907989825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45611c20fbba7af20af67a74103fdeed3a913a796c53c727c5447e24a0088316
Date: Wed, 26 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742994593
