Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47069227BB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791126634; cv=none; b=W+P9cl0sF5yIBkc7RAHCcGX07g96ju2F0IQCu/nwp3KQRWD/pTqeOewc1heSUm5VGno6wxhnmuwhYomfW1ClGFD9QCCBrdOg7/VP09gvUMAkpXBudZhd+xcXuHJPNQL/+aYnB7+ZCCfxPso22pUsA5zru7XgJ0ERxC3qesIq0gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791126634; c=relaxed/simple;
	bh=y7wXAIzxp1d1yf3Gad934eCIG/bvykVzql6jSZ9E2kQ=;
	h=To:Subject:From:Message-Id:Date; b=frPePN8G/SKKucrbJXXy1CMlVnLKcLqg8pth39M/6WKcdEuGbURYUkuJn5ENcZrfjToI1QIe4a2jlo4Hxl7qIMin9416xZQLv4N/aXQ82DFYJDAGm7n4ci35eKUljoIK03Q6CciIDlAaq/Z7DV9RHvYkCVkrTzg7Q8mBqZSeW8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAylUJEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAylUJEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDC3C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791126633;
	bh=y7wXAIzxp1d1yf3Gad934eCIG/bvykVzql6jSZ9E2kQ=;
	h=To:Subject:From:Date:From;
	b=HAylUJEBYYdgAEUUb2QtJkzR0LglL06RLBDhYx1bO/KF0mSWKdWBZKRT3UsAV3YAv
	 S2NvqvdcPHU+370SGriL8hIj+GIQVBpWfY8blWXpARAOqUwqhQxAANe4RNpvS/D5X+
	 ZauyZtHt9v4felf1QsDcAnPOtVHTcM5oGaY/lPyaywecpb+lcoY2D3DCtgXRpXICCz
	 RK30blt40f24914E43LWn3ObXo8UwwzRwhI9gLTL9kOLPuZpXCpLWlJcfFsyTyGZu9
	 JL7PzY/li4Uh0LX0lCdmzrP9648wA5xTu308zoPz30oA+sTg0ZvlkchhFAKnXMZVVC
	 9FY4g1JbwAbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943FCA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112663368.1814.3811822846814096801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086772263c8e2cd92ea1769cdfe11e7d893f2a0fe44077e3b1949991f472cb08
Date: Sun, 04 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791126633
