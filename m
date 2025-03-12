Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CAB165F13
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741747734; cv=none; b=BXGtS5R8xf7+XiOwaN+tdL5Fxg+73IUgX/LJQyhS5U+1pxu3maO6LBJGVoGitw00cputqtbYBJ/6ovkIDQIt71rwDVK8WCpE4RczqCYghUKZNrdfDHvmI1MxHTlUqExxDTtO8vRfk36ljk5DuRoI6mIvJYVKEckSIxiHhQ4OPiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741747734; c=relaxed/simple;
	bh=oj7UwpsY7d0e0G90vOKOZ5/ePkXUd4W8YIwCZI3vXKw=;
	h=To:Subject:From:Message-Id:Date; b=B6pdlYFgubd0VRyCzzolhuP3zp/30woG11xj0BQdMo6Vf896p+dgSAaGg99OGIoTiu5po/81cYFn9eiUVnCovNE045geI9v0RiPINI9guQH8/yuHS9MNVhQ5BC1os5NoYc/rF3YGh5asHPAJ03kGFzAC+bBWoMfKCZoPBJ/V/VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbDYEb4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbDYEb4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A1C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741747733;
	bh=oj7UwpsY7d0e0G90vOKOZ5/ePkXUd4W8YIwCZI3vXKw=;
	h=To:Subject:From:Date:From;
	b=LbDYEb4IU8v5kJI5ikYQ9RtHJCCLshLIPmlpWdnpEunqKwNyuuADt2fGpihmbefmd
	 vPUqvi+1rG61iT1KWzDXF/ESKE0Ima3jqeOuFP2EiRvNnurrtIxr2oT8ay/ayXqXTN
	 Wl0uaqV30AzIVbIq0WtaKjMTm1MnQFoOocwdQoCuPlriVw7LkBhZ/w1DXfrDmtGjBz
	 yfXTYmhG4LECCHN7mY7r2j5Pc+1Rv9jHLfDC9hCsWcHxNXiaDxv3lalpxEqnE2t1cr
	 6VdHxysyRhvNsvx+Mua5GWcujdgBiIvWXXD50GiyupAximAdQTEtHwe1Wp/qwJOim+
	 vjdPwKuS/ZBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96557C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174773360.5709.15745598759037465786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2e55327bd2014cba6e13a9498cecbd96e0b62785c9f81d132cc083fe6aa917
Date: Wed, 12 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741747733
