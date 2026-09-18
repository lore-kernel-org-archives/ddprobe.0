Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DD125B30D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789701634; cv=none; b=lBzOkOmg/zNPxdJ+b0DdsYCs+QdMpSaIIrMnD+cqJUSblT7Vq7FumsJg9EOK2PchjRHlL3cKYVWUKgPEVecdh7F5o6Cl3NO/KmO8CnIRIsG5e9XgTJL+xe+M2nruI6XJ4EfBLmQRKANOXG2vl7SEVKgytqGezzC8gGPVQVhSLjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789701634; c=relaxed/simple;
	bh=P22er8ofHxHmJzZdaKgqnxNVlJF30UJXhZe/lWGVrdQ=;
	h=To:Subject:From:Message-Id:Date; b=rjWCz7oeF4Qaoq0DMBk0cqZFiHAqgnmAGT6sgLxp+f7AUFY8Fg/jOV9ONYJ0s72fRdgItvBjJ05As/5F3Pa/QCRBO06pQaX+msdMRDks0lT4HIhH7IA2FiQBWbkZkdPyQGcKy4QxMX9+hBBWtBOM0J2ksuyPimjVzOvfBzORigE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehbnVK1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehbnVK1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF98C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789701633;
	bh=P22er8ofHxHmJzZdaKgqnxNVlJF30UJXhZe/lWGVrdQ=;
	h=To:Subject:From:Date:From;
	b=ehbnVK1G2CNj3oJnX30202WlLyw1Odo+qbYybHVBcPrs6ujWuH9OcgrSo0nbwcGzT
	 3AVFHxqVXvPHAxqeP9hSeXJZKKUxcdV64bXFD60fjnlv7o7LLobN1AFgK61N1ORj0L
	 BE1G0mSUyxiviczOaTBwaNZQeGbCjPTbnWIkys0eZrtCft+y4z49Ho1r8LKOseQxaq
	 6fsYj737ymw8p2Vbn0mu4wBzyIkB5Mp2IalSA0ulVAatfY2g1q/9FmOs/j3342m8VW
	 oOpZccVQX9FkSxPIj8AYZ2TBUA/0g5K1lQiSN/iO+80/cC4d2IDdGaenqGCyrFeSTv
	 pMXnjSMRc6oCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E71C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970163368.2808.8422027791055784451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81b3eeedc41615cf050a0414dd9ba650e281aceda45b7e94d55ec3ab31d8f19
Date: Fri, 18 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789701633
