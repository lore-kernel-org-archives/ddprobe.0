Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E2E1C68F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782530914; cv=none; b=n2mDotZwGPVwK10WyOZDWBiWfkjHunXzB8NzieTQ5m9YO4LJROZHtoNtyvY2wTtbzb4u1CDTGa8KpYPEAkkhGN682OeB5SWepFEP1mc93dEuLWdATrK/O9HHnePUMsv1ZGC2zoGLRMVxxSiwcM+spvrdwfJ/3QLsWvFYektZwtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782530914; c=relaxed/simple;
	bh=0ZZ1lYQqs9mHMPx//SPOtoSeS4tjqDFUjyG1OtIdOXM=;
	h=To:Subject:From:Message-Id:Date; b=JMm2V1ZxVsR4Ixzff5ixP1o5nupXsbjQRrrpQoILttLal6pt2lPlLXQiZAmt/4Bv+6Dj+3pHxldd5/9y9LAf2VhFv3jzKExcSfbCMKJaN96FZmlAXa0bhS9hW53joWT1tZJ9j13t7Xzc7XNcD7pHih6Vj7k/gu7o21HjZMsbwRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGF4T1CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGF4T1CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD3CC19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782530913;
	bh=0ZZ1lYQqs9mHMPx//SPOtoSeS4tjqDFUjyG1OtIdOXM=;
	h=To:Subject:From:Date:From;
	b=JGF4T1CRHC7rRTB7nfGyPHo5pw/ivHXpsOONaXGRwxs3Q0S58IbPRkpMTL3PSdOBp
	 nCwXZCOr17+0nBibsmFuTH656NNavhdb6jocLaN5x8JEOcWZ+Pupr27Xx5FxRDL1/o
	 QgyZYHfVgVd3d1ZJOReiXb9/2plCb7H1pOlO6IMmeNL1tEgT+V9TgYuN9qatl+3zzp
	 3uWetd39/hLjVMluu8bK5p4qeQJzbzC1rLs5wqSmi0L2qSD0BF/vWou2ZD7TV6+iZ9
	 MLxJL1o/zK0Te8zuaP8QHqtaDTPtkVHICPm/nagkbN1E3KX4EUrcyHHwjiXJW/lCmO
	 Q21N+GJsvIP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE4C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253091369.18369.17460845229709224141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e1ab1e8d13accbedb2df93b152910c5a31dcc5789b93d46c4315e85d2d9e00
Date: Sat, 27 Jun 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782530913
