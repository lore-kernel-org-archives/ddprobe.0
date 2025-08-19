Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13470230BE1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755635394; cv=none; b=VX6GO5kKq9u4X9wcCfOUS8MWosrGh0Y8DOUYvNViyhmlDDRJnHOGQcPoU60PjvLeRXn/8IW8NpyxmKDPlyy1A1XfSB5HUD4cDVp2+VEk9jiYbhUXLggdOR2HJFxi/CClt7PoAxVyY3kN2T8YmAQ5JIRkSz/SMf/29voucWPK8ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755635394; c=relaxed/simple;
	bh=DeGuFjtHhVgyMqA5jJsCFOsvFNd6YDmwzJ8QS4SfU4g=;
	h=To:Subject:From:Message-Id:Date; b=qCH5Jx6QRkBOLdYFJ6g2PwXmI+07rXl5nBiqDymNnJUXqpfNH7+sXMz8FNNhPMSIlNgLdhUUvFBqk1qJnJNthTmoVsMAUwrVyTByfZ3kjvM09bzzAXeOfAt5AbRVBvAec6ejXX8heUwII2MjQc4ZnNrJpelthZQe1YP/ClMgVes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6KPofcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6KPofcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755635393;
	bh=DeGuFjtHhVgyMqA5jJsCFOsvFNd6YDmwzJ8QS4SfU4g=;
	h=To:Subject:From:Date:From;
	b=S6KPofcR78JUlJIWkE+RAjU33aQoOm9sCZKS6Q88wCUbLWChLdenXO1hUajEY3MAH
	 9uZeV/MCmaJ0v+CGyIsBDz11eR5TKBbAqj+IHbyu1Vvv8cQsXf12PswHMwX8DheJrP
	 y5UFltwCstck2MLWjNvt9sG1telmFKGtzIMZZ2mzFZi7FwS3F5uvSfH+7BtnKMRVB7
	 DFmfjGct88M6hA6ELpGVvkuGkeYIx5HBXQ/NJ5s5ZyTbjNUsrwifdDzEv1V39NJNe8
	 7ipW8uk6bzeZ8RaaMrV3Vq6BkD+CH2a7xUmjmlFeDN1pabyRHk5WEGoeeX/hRY1IRs
	 Zt6e9l6lMdzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F382CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563539357.16404.4231738770272507828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d53e018f79e007b1992cbab930d7430899701e74e7b5de703565f547060784c
Date: Tue, 19 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755635393
