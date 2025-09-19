Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3630C2C1786
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758310796; cv=none; b=GGb6KUhCwZWbZfe5fX+NI0VTeph0i4nEnQktnqX1pejE0iTnlh1dsgAZzFZfNunxTVq4tg7x5fgwupIpOZ3QiqO3EO7MSwmLeDAiQpyKBo3nUJ+bqvqrBc7zN//VT/brG04hDD+gP4fx3kb0bMSrYKRgxV4KTv2S4o0SfMRY4RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758310796; c=relaxed/simple;
	bh=sWQi34ubIwkFNe+SXteAOZN9CNJDczupKm7eUCCRYKw=;
	h=To:Subject:From:Message-Id:Date; b=CBr1MUdGm24P5Grmf4uSeRRVo8414liIEg1rnlaTW6oJH3/sUbLN6exlA0jDU/w9/MvIlHjo1K2J8Tnv08kmuhE21NUyNOkfS4ZRR5a353TaQf9pGYlGEtVAGj6bQVbq6mLETu1KD+FaKsqShpJSyD79T0uPi7ug2OC8oSt4agE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcFi5NLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcFi5NLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B39C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758310793;
	bh=sWQi34ubIwkFNe+SXteAOZN9CNJDczupKm7eUCCRYKw=;
	h=To:Subject:From:Date:From;
	b=TcFi5NLWcwyT9j7DfdXy74YyIt6Kg3lBxFVuvnYGPBJaWIkJEw55e0R9wm1ajTJUB
	 YjK7IdP1Rt2RQRylLaejNzZRY0N7qWjrjkk69zivkfmy2vRwrblShadSgQCMZ4rVOA
	 4qfTSP26F1KCxPwiNODti9bGBy0S8xySKvxmFDDPXeg0pPgpcwN0Tnu5O4y52qw0YE
	 RyNnxejzvSV9zOb1rEvWS7I2CT/krI/JHa4U/yqnquwL09gFG/wMDMdQuf0MMYzN4l
	 TlqdIT8IZ1mxNPHJhi38ExnR490QiwAk9Te0DfHZwVizECCp+Ukq3+w6VqUAKHiRmx
	 waW6nUx7oM8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91297CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831079358.15756.549372049085052571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81769effcdc9f3ef5e643fd0a0023739cc74a17ee0cd7e526901311880bf2e7a
Date: Fri, 19 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758310793
