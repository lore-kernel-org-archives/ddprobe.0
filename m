Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B825A326
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760914794; cv=none; b=UFKtg5vJ6E9mHh7dfoMBLPhpltmb1pqqPumuFECdfjo8YMyVvhe2cVlZtXtpNNgXhc15dZ6e0CTwdymD/PCoDxdTB38tAyr5cHZ6rCF8p8PLl0ZSKnozybvkI5yo1+jjui1MHRWQ8CgclXGSfIbysurzdoyOqlv+xZRWqopB39I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760914794; c=relaxed/simple;
	bh=Y0i5MbZ5xpneUssdEGfub7VMIbJLG5gfyJxY7/uuPD4=;
	h=To:Subject:From:Message-Id:Date; b=RiIS8sbf8hy8AnG7ke2xGK8IqQtPs8q5FDW36oMbN8KZTsUt1dsSmQnRiOZWrDoEiyzMktNA6H98Hn3kW+vd+csNhKB15KAtqACmSYYyxUcLJFtIXSknxz+AkBVJI0PQa+i3ABUrekSMU3N9hVBnGKaIq2rQiH6uiGJ+KzQJT2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQ7Y3OV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQ7Y3OV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AF8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760914793;
	bh=Y0i5MbZ5xpneUssdEGfub7VMIbJLG5gfyJxY7/uuPD4=;
	h=To:Subject:From:Date:From;
	b=CQ7Y3OV9ll+fmA+GE22SakzYPGo4DDW5JETLsoOA4ymByz2U3BXDQVuGy+rUsTCpx
	 wYV1O4zRFwk0/ft+94KapIxZKzsiGy9Hi3mvZH/VbHRQ5d3Qtwlq0gcm4hWu+yF65j
	 C8tIyfmw1672GfN9J1vMNwdxlLFeI8mtfStXoHnliu2w0/aidaY2dRDMd1k9LASitL
	 Nanis4rHENDaz5igQZ1UjhlmvEY4TszJwyiEiv/W38VmtUXsqsfKLgqW0qz/41BIip
	 aIb3WOAzYXLYzbOnju/cfqfXZyftqWR5+a6pWXaqPG7qvba30ZkBXFNMIpkw8JSXv6
	 ABD17aZPSOGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6FCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091479357.30877.10088236329362916825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84d13e0597904117e0219bb414302e3b796886f3daa78ad9183c046ddaf168c
Date: Sun, 19 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760914793
