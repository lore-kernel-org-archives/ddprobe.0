Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B58921CC59
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766028834; cv=none; b=bRvqMPf9kg7j6rZHSgOSstT6QLZzjnSIfdxqpl4Un0ZHFut+H6NpeR0fgP3ttIMmwIK3Ib9wn+HFzm2eJd9xpmbITreq1FzLAHvm64g05+AaBgoSRnhFCFzb5wGU7Jk6JSVCt46wBEl4DhFGu0Xi8V03eZUhTOBz8gk76XcriZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766028834; c=relaxed/simple;
	bh=m9rrUsZLQ8EWm+BPN0rG73qxdD2r4K+il8+MeE0cpTQ=;
	h=To:Subject:From:Message-Id:Date; b=SZGRG86dfRH8rvhfh+Rz4guT9HZkVseThANbLWUIAUdRAhamT9c8Xz/hCPUPW/IKF7TrxSkPAzP7xXfrX0vdwAdgvuiX0AAbk8J6M3TMiqIeU0mvIOUBBA3fNUw8jvwUXDjl1UA0LMWQNh8KA4rlvoQUeLvUp69F/GIlBAR32ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IekmqE3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IekmqE3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C53C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766028833;
	bh=m9rrUsZLQ8EWm+BPN0rG73qxdD2r4K+il8+MeE0cpTQ=;
	h=To:Subject:From:Date:From;
	b=IekmqE3zB+QsKQK1RCftCCnAsaOSj5njYr3fZCUX4PJyWTXfHI7moaFTovlJBD/g6
	 vAfAWEIi8OxuASVJ8JtndPqE4XQPc/D8Z1mYsuUiIEM+FMSyNcgVTMkpGkN1Dxe5+P
	 GgDrz5kt0UwsVGBoEHIZ0PKgkK3kuA1KDFeSvt4rRIbmqYBkTjS3I4hrMKKtc3PvaA
	 nwjX6v7Fv6M7DLtoi3YfwQHTrvi4GDXgcuYU060vLd5ew7q1+RDWel66mndDjuwDBF
	 hCnhHb5JWWrr+FCmUlFa2qn+5/mlgXo0x0DS+w6dc/OuAosSihZmCYWIcKGGK69puw
	 23gvf9upEjMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C25D68BD4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602883358.13006.2852251720309363671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff3aad24df0198afbde858c29cb682993774b01e4f53c1e5e7567cc76c933fd
Date: Thu, 18 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766028833
