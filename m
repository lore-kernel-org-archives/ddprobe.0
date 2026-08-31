Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A083337C11B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788217235; cv=none; b=fCdS5bHoGxrktKGuH6rFTedZtXgGnzEMnN14JBRFKh0Fr4hk4wNZDlC1wuGeBTM4nnNO6d6XgCPQ7dSbG16d+paLLEDAhOW8WFqyv6LpqnYzN+cZ5P1e6Gv+kNcdJD92APwbnuwMciMgoxEvP2bGS4A6JfiAX9YgVDm2myop41A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788217235; c=relaxed/simple;
	bh=U8DZkAokU14ietlgl981zkBDw0t5i71Neja0OJ/JvjU=;
	h=To:Subject:From:Message-Id:Date; b=Z5GyjTR96R9p0BJUhEAT2jhlDRIgtFmBdP7ZlwGeFvp8Cx81MOdvBNF50uMUXSD6MZ47rF+qsRKoNAufsp1E16CSgDtx3Bxp6oYRxSSprJuDOkluYEuVM7yAyXrI61Os98Qgiku0C7QBXbWphu7wRn4qiwz2a4FPq1ZcWqD4jzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDMHlk3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDMHlk3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA2DC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788217233;
	bh=U8DZkAokU14ietlgl981zkBDw0t5i71Neja0OJ/JvjU=;
	h=To:Subject:From:Date:From;
	b=lDMHlk3TGMAFyExTzeEh/xNJNbDcH0lbhgEoMa/5tC+VKEFP8ymQIsLINeS8P47O4
	 oy4C7hMWX66wNw8OkIXMJ58uWMxyl6OS4Va3EDw3LDpAT36lhIYg0dyjIK1Nxueegb
	 X3A3PI0EIEXznPh0K7RPN/J9Hf/DQGkRhFQeb6YTGWesPVyBF29NnHkmk3GU2Qujgy
	 Jklpa+uG1Yw25jMA7qKM3XpJhdCvInxer+zbzxp5jtZji95CZ7mmcDBTa2xu9shR5q
	 /aZr93xfpblfksRdN2EzL/AZ4MQjNduwRP8pkb4bgQPnHTS424iSJejCroWezMh8L7
	 QgUm4kLOJNcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F49C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821723368.25656.2855492889378572394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbc2445ddec14c77c31dfc970a1f38892ea242a15390f024bcf0e9614bc9c36
Date: Mon, 31 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788217233
