Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1812C266581
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756378194; cv=none; b=gSS/8rJprMwDwfaN58wjc/CwRdBHIIcvdgzBB6+56zNolgI0lfIG5Bevv49lWuxj9T7VUEIWAZ0k96DBqjc+1aUpnX+xl/i22uv38zejlPnSzU6V7owQH6Eo1e440LJyKSxmQZGWh0BQ92fdIhzPCXybLc8eMRWDR8vWB3PrP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756378194; c=relaxed/simple;
	bh=L0V2DmUjp+sfu/3qNZG0KBJiI1Hw5XBbdi2QwDNvQVE=;
	h=To:Subject:From:Message-Id:Date; b=G/aHlpc/UxdZuGkwzkYlzLT/b7v5FMb6a598wW82RCf10Fcvk5oRIIoflIk87ZL5nQVy+o3n7azywxsgVW3HWpdQ8cBafzkpP5yNv8y0LUJ/T0KQF2CcCywoPk7aNIJX7/L475UmE8y95j42bceEUINKVZ+Ry1hVvbg5HicF3qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elCGirXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elCGirXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756378193;
	bh=L0V2DmUjp+sfu/3qNZG0KBJiI1Hw5XBbdi2QwDNvQVE=;
	h=To:Subject:From:Date:From;
	b=elCGirXUubCSdhSaNNtnILnLzmJKY0M2seTzEdN6bYtPkrW3YujkfEY/nEIOsJIL0
	 abmGcBXQT/gPYeV9XwrcsdQXRNtULgwVzZEIFweU5X6G2GNx/82oHsq1cItaM7yeb5
	 skCVou0DucEvAR79BupQgV3LuQMYMYY5pRSlLAT8/TpvwMFuX8tNHkvGG+9bOZp/hR
	 24WImBxrPvDROY9RY+60q3gHIBDEpBmmaRWww1M5Z4jRvq0A5a7vMP6BGH4gSwdjBA
	 v6qgc50Rqz1FLn2pnS0GA7TPj7X7mjCBevi1cFU0YjBgiZv/EFdRk5qpmJg0wu1Jie
	 dHgchARWf8EEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E04C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637819360.10565.11452592380348186257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc9b8ff9e64165f272f470620ca8c55b0dae8b0de349761e2b89512b3bd9d36
Date: Thu, 28 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756378193
