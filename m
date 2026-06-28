Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538DBC2EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782643714; cv=none; b=QaxSgr2hKXKUTBJT8ohPnxe4lPPIZJeLceJt2E8e/lMbRTZrkbUwNpHpiNrYQMEryWRgut4hgOxKY+dFCWGwIyZowVoam1PCeb4wbexxWQRB7WeZ8MVNpQYatfikvxBM/BZoYp4lEhI76+z0HjGI1RCC9tejvw3696OQOde4e1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782643714; c=relaxed/simple;
	bh=YInrO9EBe5ZuLxe8Rq1uoFp+uqljbbkQbTLYis+C7ig=;
	h=To:Subject:From:Message-Id:Date; b=OtzjfWPS7yKMBBciQPSXPHsrM0M0iseoHoJFoqGhezKMcAqt3LdPfjy/Carcu4nNRgCJzb1jAIiOyykyS6x85Rjj4MczUtY40DYh+CBspD+mQg66uhSTnbuKCFZePLiiVAP7vKO9g/3vylt+yh51PjKrjSeuc+UM9Jo0ytsQTKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urLK8c3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urLK8c3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782643713;
	bh=YInrO9EBe5ZuLxe8Rq1uoFp+uqljbbkQbTLYis+C7ig=;
	h=To:Subject:From:Date:From;
	b=urLK8c3/gcnZ/ijtRjMbvd+WJCBGp9qmsQ7vO6xAVMQ+iYADNoLT3IsU1OBz+J44h
	 SvZCQTtgEbsGv0nW1qOxJK9GAVTERO1N0oaC29O0Y6g6sjZLHEN2czV2wuKOD+ND8q
	 Mgwytz8A+/2EHTQct93AfZmDudsoES+AucHhwIAaCNDTkKDvnRyHR+HjRAd34+I0Lq
	 KKdKCvc780TxxW9YxZRkoh6/xAFqLyyXIJYJ0VLQ1zE1dSbEi1dP6qPyA3k4tOF9Ce
	 NMWSy0PI7PVMnc7QlZnQlrBaLF8JV2hqlrTEEDQexb3UGhiHGm781eB37n/Qve3cfV
	 GTMaMFjLJjH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF786C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264371368.15357.12629909395506455986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af545635524c0b6b1b6dbca32f48406075d45ff1d01634ad20d176ba6d899a8
Date: Sun, 28 Jun 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782643713
