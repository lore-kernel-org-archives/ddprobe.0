Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D84D329E6C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787680234; cv=none; b=lrvutzy634d7jIBRrn1LhQmR6dFuW7XEtp+F/w+KpkjFp3LU8f9YUMNaewVXPu1NRcAQFHAMZ45Uu5oQqt2Dq6Bz0bcSq2b6vcofZ/uUjVHpooSkUMjqjK3dthFSN1JHPHmoZr9cS8J8IEraqQAPgXn5V4hR2XgxqCDIoVPb+DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787680234; c=relaxed/simple;
	bh=n06DstPFLpMg3DL+upzW9a2WKAtLqXHTJaRz12IZh7k=;
	h=To:Subject:From:Message-Id:Date; b=QMUiyFSteLMhk25LPy2Zf/TBGI8ThvdMWdrrig0X5XK0G89RkrTV8OKiUNP17l5PQ9reE+VZ0Ph3Rh+iMxiiYG5j5IKqvqNZM2qXrk0mCwglWSrkDulmbQkW4ZmYEpmI6P1AZnpGuDsp8PwSp47/YilO8tLwizPxWThTMfRdvMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd2BAq/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd2BAq/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4450C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787680233;
	bh=n06DstPFLpMg3DL+upzW9a2WKAtLqXHTJaRz12IZh7k=;
	h=To:Subject:From:Date:From;
	b=Zd2BAq/HeBQIPuJBR9Liwx2iDDsTFW/RHkJFZQenUFihEM6sMI3vzjJ2HAV+BuIgb
	 Rcyn0Az9vO6IOAEjftfmLSfT1xCZAejmVo+KteGQJNfgacKrlcEcKXveaNaDKkm7pE
	 XRa1477GkbKFGT5kL3AjEfdcJO5DgTZjaZt7fBGQmblcD9OshLhbtlZBnw05OWIQx7
	 s5Yr1o5r8vyXcmO6EvhcHCwxQtnliHgV4BQ4k04NCz770qHAaZY8EHsJOae2wzBs79
	 /69UGNsluLVoi5VRA9RVXPPtPtnlQ/xRUmv91NpWWMkFLkYh+RR+imJBVKphNYtUNw
	 NlM4rapCBrAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1FEC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768023369.11591.1075363004533636973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83606050e1ebd2cf6e43fa8ce101d0bd38856508005539c576aa165e2a2c3562
Date: Tue, 25 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787680233
