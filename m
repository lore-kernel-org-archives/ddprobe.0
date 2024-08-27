Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AB91D12E5
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724778954; cv=none; b=thVvx7FNx8XnaDxmrMSbml51tsMfpF6Xj6/gyhH7PyF1uJ+XXvmzAOJdlRnPoXaJI3eP+VeN38O74DCKZ3L3Bh4lD4fO/1PSH1GtLB20KE1FSiIgP3mV8QYLpE451qBuov5jvsfBo/qb0ehwKmBgllFh6HsJob3Va9NUUkYwSQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724778954; c=relaxed/simple;
	bh=abHG3Jo3NM7Dg0JiP3dN2wM6N04Wpsy59QL+pWL1PTw=;
	h=To:Subject:From:Message-Id:Date; b=EyfuTOmj6NAqycBIF1OUMOaq6AmzhpGlenIlLR3fPY2bw7+R1WK/YeFmkjguf2SiuEjsGmLwOuJFFxgOYrVgUUX4jooLYmgz+P93mtnrcY7mbNkA899l+Uh6DnlxQxog2/aAFwMWnhpB+8ZWUWD199XfhaqkzvESi16HlsJYZeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkIFnKpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkIFnKpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95C3C4FEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724778953;
	bh=abHG3Jo3NM7Dg0JiP3dN2wM6N04Wpsy59QL+pWL1PTw=;
	h=To:Subject:From:Date:From;
	b=ZkIFnKpA9eav1utf+VoWVxbGrezpXhk92PwGaChEhMrd3NIz+jaDSoQR2YN4oX6i9
	 wr3W+YOggFHRTgq3jJm0pTwB/dlHMSN3yST5gcv7OhQfZkVK8nuWFcUHmolYYrUeYr
	 xBaBbtxnvk3YR4l6jIcuPfLsiu4RixwkzJXplnZuoVfnBTUTTLncbE06ikLX84c/iF
	 xpS+TaGt0blfgdVnyQdfeP58GKTN3T6HQtFngOOHRapaBtg0focxML/4kNqK7f+Se6
	 E1uy3wdUSqZTKbywM0mSrNfvFvSHjexXyJVzYF5240oVeLbvkajF08eLxH20GfofeD
	 221zuAibn957Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7098C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477895367.19720.4864971085961346976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebba1b0704a889a625bf8a2e20934229856b5cd4ddff6b4671557e63b742af9
Date: Tue, 27 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724778953
