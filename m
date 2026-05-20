Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6368239F182
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779312634; cv=none; b=rWYA2COgYBMYPAC/DfkMnVtR8dnSibVUswj7vegAf2p7cAiIHzdU8uzp4Rr41+FrOpVN8UbZ9ruz5kUO1liAEEiExBMxqd/Ch7ohaB3knQ8G/u2XtuS4eHKGOERDScecG3/UkDuF8R7l7fmKlcSxs4HHCVbLSSZ072ZR5RTdBKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779312634; c=relaxed/simple;
	bh=lRgSSuDNcurBkX6nXhuVYRAkO+bsu4SbC5OijLTAdx4=;
	h=To:Subject:From:Message-Id:Date; b=OMjDPmijUtA27iyNXbjWbcTQjHUx8EDodXyhhm4lcRAtny06F/6Q75sh340WCu9j9TQJojZsWV0hdAcM0pd0x/7FPk7217VobDwACNlzTrq2/RfL6ijuwljh/q7FK/YA7yIXysAGCESLdVHBwXEmbiXyTEVDkt+zy/IHxH7qKW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZH/9vov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZH/9vov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4921C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779312633;
	bh=lRgSSuDNcurBkX6nXhuVYRAkO+bsu4SbC5OijLTAdx4=;
	h=To:Subject:From:Date:From;
	b=rZH/9vov2VjWxsskv6GWV4ByEajPPQtVqVewvagYYlBj8aBz6rvY9JZC7UkxKuy9o
	 sWQ6qRFNJmyJ8zdQWVPRAmPzVxUjLdGL+QLtO1aCuYuAGH4l9r1qe7/oa9alg0jOPs
	 NGB+xpj7rSulZ6hvLVZhwm8AL8LfXB/AKW8Xs3/Te5bJH7nkBWlxApG3yGvCjtZihi
	 +uaNBXslTlhZ/6dVBNqZQ4kAjui8JU15Kf4Y6wqac+A60vmHrYEe4AeL0wmEWSfvRz
	 KnLVfqsEc0fG3hYoSsxblFFNR2pDSWYhRg+EwzUY0+7R3MGc+/oqeS+wXeVgDkLYoX
	 lDjIKmVl37Jpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6B1CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931263376.27006.10708986225810668999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dab269f764fd98cdc0291d478870706ba7bac081256f93f3657e2843511de1b
Date: Wed, 20 May 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779312633
