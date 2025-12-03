Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2442C3AA198
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764779574; cv=none; b=Ojoitq+2H3L9xIO+FnZa4BDs/bq/7kF8kCi5H0lrWFOwoe8b5O6u0lzrXogZb4a8y90riIn+7yq/JHj3cE+HvlnSVC7C0bnjaHsNVSI6LY9BtuZX25COUUoDN2xg8hqaHqk5m6JLsoSQPKJJrY9N6VOIIZ0/FovdQKEm8ufFJ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764779574; c=relaxed/simple;
	bh=BuDe1hZnC6LeGxReKadB4N2/gwYilh7S6NHmKAYtfWw=;
	h=To:Subject:From:Message-Id:Date; b=jGnZSatuwTaNoulGRNGLW4AnejijYywfOKqkjC8iqh/EPt7s22V7+NPcHKq03bSY7hWmniWxUTXGViVck9E+fe08iBASA4g+0LMG3ZWFFGD9huLVFhr/MOWHlaGfcpwd33kYEkyN+PgaRaJ1CUk2ttQixiQP5KNkIxwmWG6Nqvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j73VhBuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j73VhBuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EAAC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764779573;
	bh=BuDe1hZnC6LeGxReKadB4N2/gwYilh7S6NHmKAYtfWw=;
	h=To:Subject:From:Date:From;
	b=j73VhBuY+WfhD297Xg0LY2AjbaXcpRdkecS5DJmTB4Ke0R/XPbx+5aBEMlB8iknz3
	 UJRuozYuhx7JI1+d/Og0XKfvx4igMucQnM374IwyqktW03hgr9nIBcCD1YHPc4dUlE
	 q5JhOO27soW99AqSIL7+ykEmQBo4LIiRYk4/URPAlzRd/QtWqw0uFdVHLdVpp4JgEI
	 3SFtlSopFtvqfGS6/wxZFaUc3xWo7StY5IFE+SvZn/KRlhTPwY5sawcM9L+PWTIS+L
	 +4e75p543MmE30Z1JG01azZoywv6toxNfGAyY7iLvntuKzWletEykMOteOWBnUBjKO
	 oJub46lVHJiRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93466D15DAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477957359.31380.1704240695157768618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a777ba7c120cbd0e0f7093370104783a783718f6ecbf209f4b3307a2cc523aa
Date: Wed, 03 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764779573
