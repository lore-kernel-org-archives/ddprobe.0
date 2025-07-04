Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182F134CF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751629194; cv=none; b=VaG1H1s36io6SMHvFyQHPVaqj8Fscs9GUCRaiBA4pUy0rNVilG7sv1F5VvkBYlTEMCk1i0kqTYjAX+K0YMI0NFszYAsMolzbVD/H0E65xCBTyTpWiBvyqsOLonsVmD72DwHPa1vbaqBQ1kJ2gKxiQ+19GHd20ombnC/CBs/RfVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751629194; c=relaxed/simple;
	bh=WXI1lIYd7oEsX+M9SNh83Ie1Pn4cw1xGhm2B2BmgQBY=;
	h=To:Subject:From:Message-Id:Date; b=JHWQpVbWKAbKHSPyMANHHaHVk19VUfQdMzCKsyjeY3VhI1DtAJ9sYsUXl/MneECwbnHeFkDsrikq/p9ptGohNEatf7/5g6ErEhKX1IAY1uZwfEr2tFwzZcwnUzXEezhdKyK7tU/lVRfugrffpkZn0anJdFUXnZbWapHm9rPnapI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjTgIt39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjTgIt39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A614C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751629193;
	bh=WXI1lIYd7oEsX+M9SNh83Ie1Pn4cw1xGhm2B2BmgQBY=;
	h=To:Subject:From:Date:From;
	b=qjTgIt39LBTKb2bJyxGaAJ6UDYhzEfkatfQaVTa+J80xMP+AND2s9phia5/TbyVb4
	 iDhpKyr9gIFI+N/AwxZPTeYJw/SDkEX2zoizjo+dNRkY6rZQeT6PnrKwE7NLB7yb/c
	 QaKIfm9v2ErdVGfgyA2oZfnlMgs6BylYuB8BilHqe8TVVrJeIMp9IDTNzsPsIm7F8V
	 Zeaf/9ROKzGsiUnKaFcAzBe8bFuC8G34hcXZqx/ArsVFf1popIXE7gWoO14PoDMvdA
	 qL3PCrOIP9TckGAbJG1VudLA1XT5o1X/K5mHW9AeDC+58vjCn9gjCLvvnjCEHO55WY
	 7orypQNPZhH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2DBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162919357.20231.6634897974587339442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d45840cd00e4c11752b124fbbbf2a732bfd316eed3730a5c9d37b536ab0c77
Date: Fri, 04 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751629193
