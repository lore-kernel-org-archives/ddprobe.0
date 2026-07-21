Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46047403E9E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784608114; cv=none; b=g0nKIWDPFDDfyt2+4tmDdZWyOMr6kE4Az1j/vds1xepz/oKhgM6Fun2h3tfbbS58mtrDJFyS89Qn3bImbgbkRKpCeN6rSnGuunNYltkvCMi6B/JPVDxJRZp/vIW06frv6SZfCNsA+OlM8sRw3Rlo6UHY7YVonqxdUpBgemDgOCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784608114; c=relaxed/simple;
	bh=/Q+YqTpqcPxSe1i3ZARBbobBWervn4O3DfKa+whOKxw=;
	h=To:Subject:From:Message-Id:Date; b=LhBbP3Cfma9F2ablZ5jFWL6/7WPpEg1eRH5HG0Jiap20/LCJ3LxyZSC+wWS9GQyt9U84zdXGVpXrsqND5xZ+GI4TP9+mt23IzZ4qQwGCewsmC5BuF/PvXjH9LDDJhZdjX14LQCfpkutVNHWTXQC2LdXd1vgDaH4ibJ9sQ4qK6FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiPhQvkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiPhQvkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AF8C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784608113;
	bh=/Q+YqTpqcPxSe1i3ZARBbobBWervn4O3DfKa+whOKxw=;
	h=To:Subject:From:Date:From;
	b=JiPhQvkCjBIGmshFqCJQ3CmMQreV2dS82bbwDJ9fgvwlS2QcL6BK7t4DWoAKqy3RA
	 ndntD3Bx+JO3+6Ki/RqEeqoo5VHKgVksTD6SEsj6TkcTWVhspApLkdEmrJbOifaO6r
	 msrYNCD/Xf58U8f38Ex8lIP1z1Bmd4n75fRw3JNCGpCLcG169GuO1RJdIKsfJWFTLg
	 OsOZz188v3DfsmJK4KuOBu+9+Wd7N9tnU1kt6DpMI/qZ/+tF0j7t8k1FFRk6Vm5XKF
	 l8eHtXxZ8GEdf7WztfQ0sa9XSLkUleZBZjydoLi3fUIjHSzzPGztphsyWJl0JS/i8c
	 6FYcar11E7fXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD3CC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460811377.20013.13603171344648887034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f849e944ac7a58a72d07ff4eb39b4a7b37a02876a7a766cc4697ebd3ded9bb9c
Date: Tue, 21 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784608113
