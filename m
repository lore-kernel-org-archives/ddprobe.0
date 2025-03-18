Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C617482
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742326194; cv=none; b=h88+4D4/uJMbTSeOC2NlEFTTPMXxFTUUpoKD2esSHjgABdSBPL3y3v2ZtJ1XZ7GOw89FnfRa6n0y2VDjP3DONwNTApCE9jK1lYNnR8tib11haFpZeaHduziMQnHHwzH0b9L4CwW1Zl/5otdBy7zRd5x/OzlLusF9phzSn4iGLUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742326194; c=relaxed/simple;
	bh=g4FwF43xrHAyj2FyxxFZE5Gvz7sM47SnBxUHhDKeP2g=;
	h=To:Subject:From:Message-Id:Date; b=B/XK3HOYDCzRlKJhMUAWVQC9/q6LNCWpk4Xkp2K9frOPmto2Gv6Mepvf57tyM2kFSBmgWdi/oTaW3fkAzRZ6pJc9A4bk0cHlmcswCpBkLATguVytB+hFvYZN4p753V25jqOhefSnfpYPZlF4j70wcG4T5DDwnr0fBpk26pnO2RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlt/V5Xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlt/V5Xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C3EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742326193;
	bh=g4FwF43xrHAyj2FyxxFZE5Gvz7sM47SnBxUHhDKeP2g=;
	h=To:Subject:From:Date:From;
	b=hlt/V5Xzef3Iq36RYg2QY5EM20zdhzzX6kEVcawVvn8Pmn6MIX3gZwBgVdZ66JrL1
	 TF9OJzTKKXpQybxumhGrYzFmwdPl4+4lwxnwpIrrMpc8NM1g49UPQGVPxdeCLTEtmD
	 GMTqfh8V4m6TMIzeVtk0mM+IBHEUHg2fjD1gdxyhMbLllGDPs+Po3Ge+92UQPX2rLa
	 G7ySxtebt/yjc+T3rQ0dYJiZHAYt3UdlbhYNXR72lrQmiBJswcGCiA9EWqzZ46CCzC
	 XSjuYMi8ubJxI1DeCVII2KIddvoOxjvjBFec8x9NeBhpJX0GR3ogUr2rcwB1NdapHa
	 9zCnAWLa18gKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1777C35FF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174232619365.19134.9733807677234255425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd39b7391ae019053108e487d51c2b17104cb12df289fa2ee3c8079b72ecab0
Date: Tue, 18 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742326193
