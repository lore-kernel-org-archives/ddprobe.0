Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6E2171CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782366454; cv=none; b=WAh1BaS/3mXFwJhDUXSOMZXNwDuJxq3u542huxqlOZT00Pp2PQBDIWVnPeCxbkhvbmGKW7So+FTJhsNkP+aeEQFvp0YoF+9CNE3AsrgeAyMEqK8j2tpfbyM1a28BFVsYN/XmOSVJeOJMDtEyLO3awCUEkn1ynUa28mI9+T4+VV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782366454; c=relaxed/simple;
	bh=ylLeXM6W/UnUjTfCoUAwCKSMoZ3MvGkSPJeUX7Oz/wY=;
	h=To:Subject:From:Message-Id:Date; b=tdU3tVi8mwSWQ6tdBnO2UqhDfH6sc8AWExmuXTD9NT9TeIKZ+EwsgOYxNq+1kj3FVoBQoQC99QFK5TptIkHT16PGvPPVBDy1zDmJBzK+mnyPRb3pzXisluAEmUglAKvGvvlMb45jINUaMBr5nuJYcTVfaOuMkx6UcldXTzrgtGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkvGHTAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkvGHTAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6481C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782366453;
	bh=ylLeXM6W/UnUjTfCoUAwCKSMoZ3MvGkSPJeUX7Oz/wY=;
	h=To:Subject:From:Date:From;
	b=GkvGHTAAvaWW3u41BEynTwb3i9aEc3qMJzowsEe0JYX973v2LUZQOcyxzsHr8qGQq
	 XjHmhOMfIt/yjlx/fUUb277UfvxxqZHWYvg6mcRyUxyNvPIgnjfhnCB49AIG96itau
	 jYF3y5FXIvqktaYqr7LTakT2ESHAaRi6rkbUoLPph40COSPjD0HDgywuDd764pEV38
	 LkykuVHB9o+wgkU0kShvgL7H8384JhXIgldsvBlRhVueNg+CVy8AMnHPCOt7PlMJjd
	 eR1Md70YBLTTS5rHCDTfkboEADvBBubYr6q7PNY4GvDBnFt9g6vdeHrfd/u7LvPJzE
	 KEvW9A7dPQmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA627CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236645368.20905.6703145891564854395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486d4f0f7446979c13258b17bbcb7b6951aff3bbc12473de65a9beff32342b2a
Date: Thu, 25 Jun 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782366453
