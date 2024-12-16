Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B6145A11
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734328554; cv=none; b=rOl0F3nArqNv6iHY9AQZqpbfdH59an1HMWd2GxhEct2tO4BTBtLGE8Sq1o9IFBujYlF8ZUaFvLDt5re/itxDrBzqrFnFFY4cl9tDLSHyWdyNvU598hM/yyXtsez2e5dfHUGwVE+ohLQa0sAca8nv/quQrx8veavtrbHiY2E+j7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734328554; c=relaxed/simple;
	bh=+j2zCFdnY2o4rjFzVKbwWwcSOak9pPAQ8ar8R5h5SM4=;
	h=To:Subject:From:Message-Id:Date; b=QVtcGky1JyYQaRQQls5ExLStbmKtiN6Qntogpcmiw3GjfROC98jIeiPanWW9AjRLU5qPCnmwJ+VUxWbG0sn/swody22jFfsng/g9gobtGEmw+G78bQXEA2HINzdvmM0ANoVA+Bpytsc0jgIfAdN1XjItzjRWvfLHUPk/3i6vQ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/GZ5WEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/GZ5WEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA104C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734328553;
	bh=+j2zCFdnY2o4rjFzVKbwWwcSOak9pPAQ8ar8R5h5SM4=;
	h=To:Subject:From:Date:From;
	b=Y/GZ5WExKEn9BrKs8UhTyKdjwG+/ZXpsGdAtw1liZvWvrVFk0EFTrMYXSV4o1dBuj
	 WYwBv8WdwaGyXh8f7EthSMooKHoG0D0rYjSmSEq2303wl4/u5Xl4qSCtBEheH9N4G+
	 vFm5utxx3tID2ncEXgeZsdIEX7fv8tXLYIOT77iEhWqw7BA5r3f7LxLGqLGQOC6+ka
	 Gr6SOdF5qH/LGPGuvNrxXS/44IzsHaZFrEfab2H/AWQ14HRyt8Oh/vhtH2zCUe6vZQ
	 qmKp7F3FbVb0tgiTn9X1wt6KablNBh3wabehU/e6QCVZthV2VpKfT4HGhMJbuKEfBS
	 dLnnwUel1JiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB18E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432855362.21034.4899893259392248154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9293586707f0de894497a87ef643c047049adaff379868e59408c92b735f2f00
Date: Mon, 16 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734328553
