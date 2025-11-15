Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3CE209F43
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763208594; cv=none; b=DSUI10A7kDaQEuzlkx6SrhFrTlxWJVMium3Uzq51KfHuh4Xi9TT//83e3T9YsrsPyLYxBKtddQS8wpv1227Lj5tQc2/Cy+KN1e+fsKv1PlNmOg0AJoSvSv5XVbii+homwqNfrXWx9Q5JFCtbksM45xmf924ctJuMBe+M3vp4ieE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763208594; c=relaxed/simple;
	bh=ATyBElq1XaVtcTkto6dSIiiCUTf8EjGdI/5E/Y56WNU=;
	h=To:Subject:From:Message-Id:Date; b=Zmn/1i/7xwrXFZyeqi/HOrc/HkaZgk9oGO9Nl0obq4QA8OoBruoj1Q+g7u+5Bqh9/48vLXfBUTU8LViXMEMGIkZBqppFVdQg8Jq6bp25Lzu9pfqTkcN2Zx/bLzaQJWCfooS+BhIK5843zcC9hJ10cECbM4dKmyorfPs9BElr0PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX+QQYd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX+QQYd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AA4C19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763208593;
	bh=ATyBElq1XaVtcTkto6dSIiiCUTf8EjGdI/5E/Y56WNU=;
	h=To:Subject:From:Date:From;
	b=VX+QQYd09m++ZwWT1jFfKnw7Q8LI0BqhHPDq0p+Z3bRr/RoFUf3m6jDo6zPw8gug4
	 vcjxuY8zHxFMEu8VcXBflgCuvHmWFJJ/IDGcNSDfM8uuesXcrqbRD8dyAaARDG/S+4
	 rxk80FrMG03VR2ioc1srb76VapAGJHs/rPoczz2SswGKz7yCdccn3by2Hj3JpjbRXY
	 7RoJ0IS/EFivPQTMAPIrvkMUocvXQZcMNhFx9fI8EKcIIDkPhOhCJH6Bov15KdtRTa
	 PCAFsUZ6ztXJzaal623nO5RhARPhbzpeZAv+cjTp/lQMtGuhGAjV9YIRfAlxe4rJGX
	 irXsFKXwjfVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6654CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320859370.7372.12547299309660844218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24de89270f2945e7efb86e1cf757aaf5670627fd0f4b71fa6967e3c39db015f
Date: Sat, 15 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763208593
