Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6614B04BE
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786070434; cv=none; b=X76VdcNu4se4lT3uivR0FwluU4xnfg7wA6Vr8voaG2j60lf2DKfGtFn3AVo1BS+0+iUlzBJgEbU9nbC22oSTnjk5kisbN2z4PqGETs2XFI8aFMWwaSHv3kzNnPUqEFWbto/+Crck+x6HU98nWgky6xetnGHSIzkTRJ60iZ8WKEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786070434; c=relaxed/simple;
	bh=SUl9aPwi04GOWIOzYH7DjH3v8ccXwWUMvKct/3vsPVo=;
	h=To:Subject:From:Message-Id:Date; b=E74f6y3PpC6oYufmS/JCy7dqpnu6CIcVkcc0SdgmpTF7rWuztP8tyu+EbvqCBGUKLhEgqwwDGEpX46SYuRVHmXoL42/wS0F7kXWMefbYh3nuUJ8TaX2zkTGUvNDlVuCouRVWRgZpXwQAJFqaUD8gE7g1iNjooqXelOEsUzykqGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlgTLJkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlgTLJkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32E3C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786070433;
	bh=SUl9aPwi04GOWIOzYH7DjH3v8ccXwWUMvKct/3vsPVo=;
	h=To:Subject:From:Date:From;
	b=PlgTLJkJzgh9WbkkGJGBBZgM5Zv6C7iJZ8wUM6uAZL2bSNqtsQU6/8x+MrzJweqAb
	 apCVrWZePgpNpxh+S6q3wWrZVHQcLTsulWmX+t1anM4/jvHgukWQ1tWWnZnc9X0KyN
	 O6GsoKgCcAI3RpJv4s1Su+rU77/Yn8V89iJlYohIhUy+Pm4E5IInP3+DdbybujQcDW
	 wJDuehR4ZeDpxksEdBP3+lP57oPThWdqLF7OiPcJI+MmzYph7bNjv7tDjJkwiTzRa/
	 irW/NMDwUbforMHCMtNLp0jY6mVmKYWtDBKebfEwmy1AsfCymDqqR51360ICBReCUr
	 qDUSBcmG9swiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9DCC5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607043369.7198.17705729272143329697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdee270a4883e40a9c7a1ecaf7bb4bb382c815b4939a2631b352a75c4a50fbb
Date: Fri, 07 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786070433
