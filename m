Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153E314AD2D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754873994; cv=none; b=KvW/cf5T8U4eiofbGsYzlvSAcV+UA/c9kWNxBei1fFked57ttc13Z9a27jYWguWyOR/02m3WRvipC/px0lxZH5TA2gDaMzUjtgmJL4ZtGBAZCNfcj0kYh5qG45y28u40wwUzLeBN8i8xfPGs1Kx3ePVifJRUV6W9SfvabJP4thk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754873994; c=relaxed/simple;
	bh=XtXzC4G18gfhf0r4URs7fMWezNv6T35BYijFOhb39/4=;
	h=To:Subject:From:Message-Id:Date; b=Pl0T1uhIBAqrGFJxBzaaa7mAHuGJwkazYkV1ftxE9/ZZ7NPBLAWiY0Hc8JzA952NR0K+8F+QclKMGloTSrSQtnAiooBXM08bEjndyZ6N0TckddLKcHeU4ZLCV5sI1endPA/r0ZgSVLix+Ut5ZZtOh1wojch4z91Cc2hqS2zegek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDRSpVAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDRSpVAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B37C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754873993;
	bh=XtXzC4G18gfhf0r4URs7fMWezNv6T35BYijFOhb39/4=;
	h=To:Subject:From:Date:From;
	b=MDRSpVAqai8rjfBdCVw4oXt8S85dOgfGf43PPTJVgAVT6IeWsbeD0XXI5Xo3IF0YZ
	 fN+8IDdI3P8eST3ifOAMOVCz/itomDt6cAoK61dCoQmZh8q0bOJehdXSiB/NzIkIRT
	 iNKIhREy7punb0KtGBDcDRPNRSQfJziVV2ZfJzkuzwHUJ3m04zZqV8bmU5twqh+zht
	 x0bSLoqgPkonr4932FkJkKLiJ7JVIyB14s7umlenN60AoYaHpX9+3g5oKbQi9keunH
	 UWvhQvjGgfJK2K2hu43VZMieSUZJaKI232m2NL1lvsCWpD3Bp1N5ufvTnn5iqNjt/e
	 bgDyOwbVahUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E954C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487399357.14745.6413876950254405367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80625e736606f5af622defb88fa11309ce634ee96c5f3d50aee896bc9d828e5f
Date: Mon, 11 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754873993
