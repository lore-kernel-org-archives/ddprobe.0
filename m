Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1682DAFD7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777660054; cv=none; b=M+wSiSBwMMygPyA4ZzwYE/z5pdWarTq9gLAhsPlqMHjyNz2tVg4udC9H/j4b38uYKcXWLneCmavxq2xsLW3jHo98iUHm3gVY28CPBTCyhbpg1ofIaIijouaRa6SirMfG/PfRArfNJZ7Ed/bukN7nvScysO7EXQxoKCrqXpFM1Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777660054; c=relaxed/simple;
	bh=IoDb+z0+Ar6NFV+iFI1X0PxJT8wk3o0D3+gefWOzwXA=;
	h=To:Subject:From:Message-Id:Date; b=cF70YRwWkJ/Oe96ogHSphWbTz9V7j56dJt0wehqT2Kb+zZXJ7MdRHIT7aeDxDZhpnI+OBfznXwAyLV4wQICtpzdHn17u1egjnNiw7/KSMvddOIShDpDWqQRG5xH805p9BhL+osuHURGZr5JCnouJa52yzAhNDWWpoGfHpRHwBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0XLbo1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0XLbo1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8636C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777660053;
	bh=IoDb+z0+Ar6NFV+iFI1X0PxJT8wk3o0D3+gefWOzwXA=;
	h=To:Subject:From:Date:From;
	b=F0XLbo1FYl98c9f2EV4t78l2XBl20Pcg//KaFnplXfz76fHBbAonWiGu+Etsy6kv3
	 RHfWfzbMFn9DtqgJ+12oof9utQZ15n+TStB68RY16a7ouTQtPcbLONVkQoU9gvMrD0
	 9pg/qgP+O8mDa8sn/fyOVcLMm4eJDBKErxfpnvxJ6QMTEg3pmKIIBnKaYaA08VTEuS
	 DTcCt8agpeocGK/k+DUbTGzzgN0uK5BY6btNsayhrDZxLERuLONR1kDyA6gRCM691B
	 Dl4WRBsebs3pKjvKnE5aCovfzQkNO3cz8LSiB3dYr08K7iTDDDsPYbw+FMw7iuEGdq
	 9KfqVIyYVpHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958BCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766005368.21166.9639104176622502760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9b5b86e520ca5c434c34eca69e014d22019c7f4275391e1c79b8ac6db80ff2
Date: Fri, 01 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777660053
