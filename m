Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200192F7F06
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782859714; cv=none; b=GrB1nXbzrTfCu7H5ZLRuhGfuFahIUiZ2B1PdElqFUhULuH+qmJXJfc4mkczjgr4RG57Cyh0UcSRz9AsIrFtQJVA7oQZceOYpgQavELW8YkdHZt5t8kaleMM9NxQ8mkDJtWB4GChfVO1iajvODoHb2pxwZxwsJ9qDV7mpgZWKAyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782859714; c=relaxed/simple;
	bh=JgEoUAqH0ytWPjvos7iPD+BCN46RyCn+uQZGgi7HspY=;
	h=To:Subject:From:Message-Id:Date; b=oeQXkjOV4of2Pt/ZxepH6yXnSxTZtZBSwnha44JmSQNouqtaDTVVEyZ8kSfthRJkJ08nhz72wX76ipaFlztyZQ3lxQF4kpnwYlfXHG1Kbs8+aocf6QrgTKOjFzTivs3YGxvhwkBP0r3Mb88DQcxmXbXQxv7Ie8V5oz6vQFQdG80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltOsjiu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltOsjiu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C78C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782859713;
	bh=JgEoUAqH0ytWPjvos7iPD+BCN46RyCn+uQZGgi7HspY=;
	h=To:Subject:From:Date:From;
	b=ltOsjiu8zPGHCtaZM+en+3SyDc3tNMQw8lBY7LuDLrhru1PIxngRzN3OTblZHjdk5
	 fUDrkhiZAK4PN/3Ft+o1D9IE3ZbxYIi3lPDmxqZ73YwksJI2xB31xUxrOmq5quNlEB
	 jNePoI1dpbE1AWr1qiw8odetwpX6Nqmyz4OgoTgk8WZfDXi7hTH8OYxfVN0MzVa22o
	 NmbixY52Q9k8E8tvoQmnGcK9y8CT9v/53lHHnpYiRMDDIvI6XfG52JWCe1Ay7Oe3ro
	 xSl+E/ummPMsgueVZzNyQunIlcy0pJ1umWW32E1MFsGXZ2YX89W3ikvJTMGetvOX18
	 8UsuVe/X/4PVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A52C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285971368.25692.17972467905110944167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bea40c05c27a9df7c27fa8362acc792ffcfb733d41046e4b771e81e732c234
Date: Tue, 30 Jun 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782859713
