Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E020CCF7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728417954; cv=none; b=G0e0QXQdwN5Ho/Ux5HRzcQ5ECHICRoqKAgQcF1jfGq8laFDaBxn7cgRfh9ED+vFToOYoDO48/YqoQE0IsH1N+Tf247a9q8xjCPAC2ptUxme57bsaD5EN2xPSLsvcBfeK7p6BMYehvdW8GDT9POpp1/oJPD/KwWDOcziYPHSfk30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728417954; c=relaxed/simple;
	bh=2FmW8fp34Sv8Z0drNjEuUyOTenTw93cqA8dn3iGk1hk=;
	h=To:Subject:From:Message-Id:Date; b=Yrv4y3JNilJTK2H1FbeszYzsvMVtNZGgpi5cmtAApvAA6XxMBm9iDV+TlMM8xjSIY8NmpO7Ks4GaJRNt5a3PaUgHKXKfpC65KB7sn5KSxzSHLQTO1DmLV6LmbPXZvc5y1gGLxZV+FqXSiu9UoOzmgM74HruoBA12AgnOJGnaTx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAqn6L+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAqn6L+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E3FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728417953;
	bh=2FmW8fp34Sv8Z0drNjEuUyOTenTw93cqA8dn3iGk1hk=;
	h=To:Subject:From:Date:From;
	b=JAqn6L+Dh/saqcVvyKwfeB5jWkCbMmxJmvI91W0pad6wBJSilmtTv6U4y7diTsg26
	 uqUqRqjRqVAd9np3BWGRyHA99z+wtY7cciwRWLwwDBCN340nMoXjCooXshjf+6Yj4N
	 CqbyewRyqFWqzMED6iOCPjj8IC5hmJpN8iJav4TEIH2yHP0Xfpk5qm+35HuWeZYdB0
	 EPiiCyBU40S7pndH7wg2kJSp2wnCfesshhFmLFYYfbHWPZmXV2Y5X3XcUVpI9zLz62
	 4psnmyw1n8KAnRImjdG9SBKQqiZIj9/NG9YF6HQw3LvDVrmOZiDauh4ibg4FLzWaz5
	 b2O3OsK2JFV+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A504CEFC54
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841795362.8345.18302963591822883407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fee897b1a16ca6d38c2eee6abda24c0b81e98b57d6a411a1004a89f3d5ef5f2
Date: Tue, 08 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728417953
