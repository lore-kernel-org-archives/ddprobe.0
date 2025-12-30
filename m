Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677BE29B8EF
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767075234; cv=none; b=NzAIJ31IBkpo9JvUJWmn3d5svxdX1LHA5q1/lqWUgVfGKAMYi8cAQRHSupUsWLkddKkXmI3AFtn5LZfYmFpCp/Pr7IdBybdiIFyi6gzUVD4EEoLctANTOnABS2T5+D0MiRIjGHV/Sl/Z5OFV363Q2YsUAHSeTRRkOfbYzikPjAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767075234; c=relaxed/simple;
	bh=a2/T9hhE7CV1HmxPszFJ21jy06G+KCwJXQyk6Q8cIJ0=;
	h=To:Subject:From:Message-Id:Date; b=Gf3Z38w/GVF9Gfh5UfUBBW8u26A7W19ni4ehe+2BMr+p9Ux7S8I0rQShk1Kx4bscRitrenFbB6wHDTGiTp9hinQfd+iDWJwcRDi/TL6d1ts60frr7DakpZ0aMktpj+QPk0jDjt0J9sRMu4CQkRr+aSJfPnmC10rDR1QS7RgHq7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys+DSNao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys+DSNao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D19C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767075233;
	bh=a2/T9hhE7CV1HmxPszFJ21jy06G+KCwJXQyk6Q8cIJ0=;
	h=To:Subject:From:Date:From;
	b=Ys+DSNaobRzmeJubiEMEdWREe6L+/miu62hUuLvHsVacSfHs6s38QwqFfyhTzO4uo
	 +ejFJHuUr6pOGrkYfCtdCsAMLee7sx4GvSbTciP53P30O4hKAVNQrhqf0Oc1tpdcG4
	 +c0vTKIYpw4iNncMjMnT8CV8YhYsJbbZ6ay+JPjKfb87ROB+LhHbrAOFvjZqmSs4Bu
	 XXRf+gJgqoBfoMuCaiHdE+RD0shSWlLCNof0gkHHAX5J28zer58cQttkCDmi55VvVc
	 0Tt9Ak8Q+n/eJkmdMhYeSeYU+BCD2ED4h+QGmmzWvH7ZAp6p3ucG26RyvQ57Ygb/Qs
	 VCUgNHJ85xUGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91886E94116
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707523358.27027.1582340481126008955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0468ed279ad600e320256df8f056f4251089f2bd79dd0da65b914921f4ff27f4
Date: Tue, 30 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767075233
