Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F603474258
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791806434; cv=none; b=jbENXOeqcaTqG+aiVQut9eReoAJqzI0bLKvG/YLWi1LRY5AJ4m9rx80OIr/gaVydUxHYK4SVcQt5k+DqKnCADqrM9tiabadQ4OcrYsRBHkp2j9AT3xyFU4pbQM+EuTInn6hFplj2oTJ8roXM6RKdMZAfObU37dDvXhZaZX7nGfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791806434; c=relaxed/simple;
	bh=LaOWyePI1dq/1LIVtwCruplKKYCPwMRlRHSbrEIj3lM=;
	h=To:Subject:From:Message-Id:Date; b=W0YcC+HY8HQLi+GMVCeiW9tjtFgyCzxbQn9BhkMXjjMuoJIZQv6q+RcKWTAbpMnPPmL/b2r3CL21QWKGg3vf40m6dPjQLRIoqZ2ItKRPbDcluXBoTVni2MZWxwpTeh+pQBzn/YoDXNVmaCDHGyOO/ITKxlWS5AsOwCBXHcUNxNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx1SoneU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx1SoneU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554EC2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791806433;
	bh=LaOWyePI1dq/1LIVtwCruplKKYCPwMRlRHSbrEIj3lM=;
	h=To:Subject:From:Date:From;
	b=Nx1SoneUuT0J5GpMBzFojx/B6AsCq6GG/jvBU/8UGwfJAa6Plf28zZPtOO0rupOKB
	 5z2BsIoep7BYWqQhiqO4zSbAV/82WgpXApKVrPVhh3qGyyH2cCxk5xZ8AGauFKDRXK
	 LY5gR6uMUSpadFoifWTQktq/eeaAsc+6OeZ8OZ5SrHZqfExXX4CqzjR5MsxmDoc329
	 PRcmK+NL2Wa5F+G3qedNj5gNyzetXnlyTjh/A+Fz34rLFn3YnKRhA9zQS7TLNOxJ5q
	 eULQlTCsYjXVWTfEisJi7C0t2r/H46R/BzFJ7TwR6g9j/2SUsghWFPMyeI/wpk3crH
	 klcQertlUQZhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC686CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180643369.20790.7781257399270114176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70036f5fa8b6b356e8a2ddf00d221373b1005de09424cdbc1ac16767b79fc86e
Date: Mon, 12 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791806433
