Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3904621FF26
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758083994; cv=none; b=jLM8KiY0wOCEAb+HzFJaxMUleb3Gr+pFBPFrNn9/9fiopItNjsTgaAX+em7oNov0UzlIk4u+4snXUyXp8CYNoZMnmAwj5PwO6AirffPoi97mHXQ+gipUg8iq/AaIihgwTkGtrq071ZSmvvMufR6Q1Zynx/G2xJ6UA+VmL4T1Tys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758083994; c=relaxed/simple;
	bh=1j4cWLh1RbJ/OPYxXEUNy7TsmWOIpFj52seQYX+uPF0=;
	h=To:Subject:From:Message-Id:Date; b=RFMZFIiHa8YiYDsBk1Ocs8qpfBeg00+4NvDeckfawtFhcsriwSpkdG0Dr9nFM7BTc5ZEf5Jrvq5A6Sj2bfC/OcsS2P8ZebydtG0jK3UZA6rSDzdx8LuigrLqdD/sBVrQCIRd8QyW+grgjRus5uD8L/sTnrlYCEz+1dkYbfaV/aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq4G+iu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq4G+iu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A371FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758083993;
	bh=1j4cWLh1RbJ/OPYxXEUNy7TsmWOIpFj52seQYX+uPF0=;
	h=To:Subject:From:Date:From;
	b=Lq4G+iu48wHYxCsWbYO7DHkC3g0d2xOgg8poblkwEhBJWJ1XI0Q0vxqA990UkbTrs
	 qOl3aOvilhbJ5f/hpvkVE4oU0YyzPE2Y0QclxWIq26rMQotghM+8OOOyVXDh6zluB7
	 nmyuf9s+y3dxv9ukIJ2IkYGHG+LNJBJJcmCKDu1dMVU3PwrnoO4chPgqmnE6mvLs0T
	 ooGBpVsTBEElbiqIIzhM0gdmk5HN69mSZDHVQS//t/MArbOJGx9+idFfB9p8+0Bjpm
	 CfGHBD/Ej73J07Noi7tzGL9AybHgYY01PjmhUypeDqCbjDQz4accWm9hRcVPuIOuyT
	 DROlbgTNEiQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D22CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808399358.8300.7354910199758658118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a394acced510925c2fdf7f8ffa974db9cae1c85d43ae0388a7e4e914ec9dcc3e
Date: Wed, 17 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758083993
