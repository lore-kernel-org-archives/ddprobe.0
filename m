Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037FE2E541E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773407094; cv=none; b=S2sphaP9NnoSA0d3q5mnYUMi7IMq1H6QtvEfdLYzQhNLoqdLvU3Byp1yF4Zww/PzH5xexBTo3DOh8k6B9BTK+a5bbE7/T1i2sUwqFtknJ6sgrxNG1JA6VWTbWqhjwg978b2s8cKRHqE6znTKCnAUGUALHvf1bsgopOZAx4WluGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773407094; c=relaxed/simple;
	bh=dBeCq7vYrmpz432r1QoYu34Zczk9JTc+Q7sjaeqcsKU=;
	h=To:Subject:From:Message-Id:Date; b=TttGFCnmH4MY9pzRfXiJPkSDjQrRhhAotRJbgnkJx74XAYZ3FplnhFxCrbwiLADbdbd1FaC9jWOaFFfNFUJzKbI+74Bow4N3CjzPNljcx+NXy8fNY6hgdC3W2LoCSArxoWi6dsYHxQTQgDzzCEjO3vLsVf1/xKNC3TZdzYfQFMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqkXqXc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqkXqXc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6469C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773407093;
	bh=dBeCq7vYrmpz432r1QoYu34Zczk9JTc+Q7sjaeqcsKU=;
	h=To:Subject:From:Date:From;
	b=bqkXqXc/OReySoH0Ya7ArJ5URFilPMagp+8sCeDXUTcSaGD0bsIJK+tnSPFGzeuRA
	 h6xX8JSWmwPWULIp+XJtUbY6iLrF7Mv0rtE+JciyeivtBSCm/aiItXbnIjJGk2NzOV
	 VXJbya4nUWJbDyudS/Bxv+5IdukoT+v6tzWENvJEqHDp7QOtKq2d6K0N9dBLNdGE/B
	 Ox3x4ISkLvl99UJfgas5QUSdCDzdBtmvZ9f9uWZsT0y9mX9cmzF6mMsvWKH/HdrOKn
	 /bjsm2K5AdkxR8Ls8l711qahDO8Va51h7o1mzXZQ1CfT5Q5Bdzf5VDQQlZosmXtbsm
	 9JT2K9VmKT+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EC105F7A7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177340709358.17459.896397753997912277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0496dc497742f815d74a1f34fff853ea094667b36b92181a0a2864a7a26aaaee
Date: Fri, 13 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773407093
