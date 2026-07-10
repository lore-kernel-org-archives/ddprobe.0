Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FAB3EEACA
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783672714; cv=none; b=phQjY5GifjaJRTs2ZtzdTWdNdgDlNCH8ct2yC5mDX7Q1QYkUwg4hQyoGvp0837iEmDLuG/NRUiwxEemmRPec5zo3P21GPNAlM2rU9tbbMt9lWNrsSqCsYAoL+kovIuphPYDQ1d1RjkOsiCuixlEUi6zsSdVhX8oyx7iGBRSVIxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783672714; c=relaxed/simple;
	bh=y3VmYsPo1Ud2y7K0g0bXPFVFZisMtGfSUmhocGdCRCw=;
	h=To:Subject:From:Message-Id:Date; b=UehyW7s/QRXhWZ5XMyrVSEmWbqpOltPhiinR96ycR4n1pDQ+L+V7UJf7sJ2/6WENm/j9oxpYGsrfOJvJnFrcMDxl8oBhRUGdAfDQZWiwoMWPb5hosFAPpTrUuBvoGTm4uGYzD2tP+u+noeF7z9hL3o0UMqixC10nlllrqh/2WUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocnWU1Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocnWU1Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9345C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783672713;
	bh=y3VmYsPo1Ud2y7K0g0bXPFVFZisMtGfSUmhocGdCRCw=;
	h=To:Subject:From:Date:From;
	b=ocnWU1VedNXm1PQJW1eC9+hJrlLHowPkKwBBQZLgZLqzralDzhYcwD2sRUodqYOx3
	 tCj6DIcWXrCJJt919OYwNxcnED4Mv+5oQxYBMCNakKWJTJOuoXLJV8GnEXgRKHvnwC
	 O+MItJAdyAnB4sRHllxVN1LsnWBfXA9WJMHSyRnxFXSLpawVw8T8ZzSKNB2aOOcOzh
	 dE+ux4XFudW6Mv9zWye8WNjpRkmWSr346VOeuaP6LVzJOFSIG2OgF0EZnpUG4G0SKS
	 WCFOo04lzHrIG6BqZfSzLh5KBu7MlnYegTwhSge8ut63+kq1U9Zt/7gcQBpEUqMy3R
	 jTcPuPNe8M53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C65C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367271368.21082.4829613548372943708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e2ca9e5b71868f88fb8bb528e29a0e5dc1ac01e83f07ef4e0d5f3679c236ec
Date: Fri, 10 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783672713
