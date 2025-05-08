Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA8518DB29
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746680394; cv=none; b=luwPIQaucuDamBEziEViFG1SFK11XM1eRwXm0LTazm1zzx3EKL/c/qQgfIcDtLZXJcNMo2EP3QpJmnwFlgkbO7LZZxIvbohipUbozSCalGNajTU/B/MU5PJBw4OAtbLNozEMOVcGvRBxuYloF38VG9aM/I00x6IojOAyhAyzPSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746680394; c=relaxed/simple;
	bh=dQm3t/X/FqDq5gRokwtA9+aUeOuKk3lO75zusK1hp6c=;
	h=To:Subject:From:Message-Id:Date; b=orRWXJlGOZA6MvA98etLFC/H7Q+NkPPK2r40l7GETj9KCyAMsx6f8QnrLYgy1B9X2CTetj7x8VNOYsgpfK30t4Ph02+2+Huy2Nt15msgklZagMuDRXx8vFQHXHD88aU2CZQkAwuAIj1QpcFnz2T8EzEWdxgIxl9GCLM9sXv2obY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A84reT1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A84reT1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746680393;
	bh=dQm3t/X/FqDq5gRokwtA9+aUeOuKk3lO75zusK1hp6c=;
	h=To:Subject:From:Date:From;
	b=A84reT1+3NY5I9nrRnoT4Dl8/wixuFOh/Jzv4ptHDGQ4qRLJxi30BvXDWIbxjyhc4
	 rz36y5LtUZ8fSZpvgtXhZLJyhdAvusOllrgDaZ+JJLoEjz79/z7fUpGp4hzj8ib4lm
	 6BrSmm4qby5zwPoEMOjWmb4EyaCNkpN1pOQbJwQ355FAiSXV8N7IpPSYVBSUhV5uLi
	 Koowt6TNBi8cJews0b66+zDJM2hX9YHr/KRNBwgN6tNaHfroVfTNw6cruVD2fTcY+5
	 l3rmAo8zBrrRKVEg+ss5+fz4RHwqIgJAHYRWTF4ZsJGlkRT9qwalz7RFmvG9k5eazC
	 q1G5R9iG9BVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E513C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668039357.23338.13074820688693464313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92615f2433068b8d84b951488886f80a6c6cc0d3c72f151d529cae820102c74d
Date: Thu, 08 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746680393
