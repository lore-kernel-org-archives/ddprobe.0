Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434081C84BD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740552534; cv=none; b=KnQh99YodiwykYdjOeLOED6hdlsLYV7RSPbFyRRtRHs512MQqbNXMvCspEe6fhxstoiuOjakUt5GPI1Fl+oEYPZVT1Gdw2+egwTr3vBGjHeAcU21r+YRaEOSG7NPzdPaGWYihDNuboyib9j55zVWwx/4B6NRci2aPDQ0vPOCMoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740552534; c=relaxed/simple;
	bh=L6h9DprhZnEL4vrKvpvOTsTHhzHpX+b3jUpb39dEj/w=;
	h=To:Subject:From:Message-Id:Date; b=qOpuQ6SxGBFl1Qc/7UlguSx2coOBcukcPt+Imvk45Hm9cyFay3WHVqOBae07b3J+0V+zeen5TVFuL5VAqggUV1YR6KGurgf4dpOVomh/ZV3lKh4VS/iGWgx24aV+esO0mPgodwUKSnH0jkDWvp8OkJDL6IZEuXUECcjEAG2NjrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHWJhrGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHWJhrGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4B5C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740552533;
	bh=L6h9DprhZnEL4vrKvpvOTsTHhzHpX+b3jUpb39dEj/w=;
	h=To:Subject:From:Date:From;
	b=CHWJhrGJ7ehRiF9RzuB1ZEP+Wf/ppk3qgvVeqb6FmdBFAhHtgnjZSgTN/8thy0SB2
	 Nv8FreR7FW95Ga4K8LUlA54nY4sQYK3O5PGiEU0UT98+1rHAFbPWc9CfqshiJFi/tT
	 yLBHXQDnJa4cZHijpYdl9otqoz+wQ6N44zAbcsBVE44Zt2JFW6g476PQyV0OJLGFS5
	 ZFIpZPYfhgmhs7BoBENxgAtmwHr+Ri0Ab5CIgIFkfT4svqqqdJxv9p9MSU+VymbLL4
	 O0PfA9ECE9hmToS3CkU7BWHy/BagPIZmDAi06Y7BHEqusfVLW7OD/OtpT32A5KSD6n
	 tpXPDa48JJUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DFAC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174055253364.12607.16821705375375906272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0842247953a79b2e96f155461490f38811d4622a99b489e7728e7a9f2f4760
Date: Wed, 26 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740552533
