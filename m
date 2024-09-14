Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2544C179BF
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726327554; cv=none; b=W8P5Jes4T6qKs0uxxwpYWCNAGmkpjdquE0DEYKAFT632KJWQ26umSnGCSxQT9pSkBmlRWv1ZB+MXCeYAG0PEJ9fIM5kGRcqnhhNP7Ux4pgUCPidlW/CUqrdlEozt/5Ph34ayD+VAHIQALysbFsPW8WwR+UY77Nysz/YS33eeNgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726327554; c=relaxed/simple;
	bh=/dw7Gdre9bJMdygPWR7M+Z/HOOsDZmzuBDqgE8Xy/BQ=;
	h=To:Subject:From:Message-Id:Date; b=VKmi5NQIMy7CTBYC5IEUYwvjgrDOBC54B8b5vtW9VC11+sahaYZsINwrSsiSDBi+857YnTIlZs0tEdWy86Wa1+9WNpF+mZyhOJ9IPi2gSwQqK1bmMY+AMfhmKpVuJDpjccRxfgeBypStDhCeX2OAamU0gn/0xwitU0eRdNdNoPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kytAIF8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kytAIF8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7B8C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726327553;
	bh=/dw7Gdre9bJMdygPWR7M+Z/HOOsDZmzuBDqgE8Xy/BQ=;
	h=To:Subject:From:Date:From;
	b=kytAIF8vYCeyc+AK22HhWKXFQzyspR87gXagENlwPZ+6W16K1X1iDNwXkQGX/bTaX
	 eXumXYI2V3GHUzqWTokkEeLtXQ3vaAbLpctYai5tu/CqBwPcrvAVs+JD3tk3AkWAbq
	 a14J4SFWWaVJYc11GW8OSDc3AeSC5VllbdGyxNo5MZHuMZ7IRTT7CiAlp1C9S9FSjl
	 7xtWZtHkcy2fzr1XpgshHybLwdCqo0Sk7LA7Rb3HtxTZlXxyd517O1PBVZDB1tPOSZ
	 6wYKdYteo26zR8/4SKQvLMP+jO9HR5nYBMMKuqh2So8y64JzESu3k4HVHTarLi6BJZ
	 KwoSOzLkIljOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CFC021A1
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632755358.23921.16490237581006089897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df7c4206bfefa3d8411511697ef47a35169847f57d558397cda61b665723c7f
Date: Sat, 14 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726327553
