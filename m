Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B32199E94
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761515994; cv=none; b=mDKWEzq6u5FF+1REgOAuSPVa8vyWrpb41kXcblc0ChOmkE1j94qCDAfDPRXWaEnRilC3GA8CKLrUlzDC5s5rlVHMV4DftlHSk2/SA6StvtxnN/qzpmBG0aVBybR3ICQRDlNhAnrs1xf+1B25WXp2uCuRCfgH3RFvw8uZXh8+F5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761515994; c=relaxed/simple;
	bh=js3z2XW+v9VxtMpBrz4+DSevu9rGEwnJqdA6oFnjGAY=;
	h=To:Subject:From:Message-Id:Date; b=fhgTkfy1eWpgsjB2tKwYDfy5dUCiirLOn+tFHwVKjhExcuFuDMrjcNI36O9JFX8rjEKGsP6Avq+x2igG8EOfGgK4LJif0vS8S+Q5OPff8LT0QHk6zuQKZ2IMjlWX+rkay1wGa5F1MKVdkQTz6O6hqJn6v+Cohg2qY1beotl/9m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTDdzFem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTDdzFem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D15C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761515993;
	bh=js3z2XW+v9VxtMpBrz4+DSevu9rGEwnJqdA6oFnjGAY=;
	h=To:Subject:From:Date:From;
	b=UTDdzFemGu8kDJhzVGVNTh8aijafaWy+0S8WVKMJon2U/H5KsxNDv86pbxJYV8EH7
	 NmUksrczOcGDR1sYx5gRbAg/Cjx5Ha89AgRqCLtTDf72WObWXvkBdq5WpptjfukjYd
	 1CfOgU0toOLSl8ND2aTS965rezWRRe1rcB1S9FMr9MLHhANWtLwB292O+BihbhB6Oe
	 jfTngoTsaEraxLsQMAucNswr+6I4KUbFFK8rrQlWtCptDeKFiQnpYMwfW4+ERaphwz
	 PyXvgO8ZmWQlqOFk7gnh4UgoqdCuH4GE1Mhc7AwQXplEpyEc4G3vG7yEZqjlOT99H5
	 +6AYX8zi3dnQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E236CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151599363.25778.1900436869496850890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7ac1857a3e079cee4a265d3d065932916836ff00c9afb327d9f7e63cdd80f3
Date: Sun, 26 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761515993
