Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446BE200B0
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742540994; cv=none; b=fnQAY4wViKAKNC/2EXwQUY9tWlwyLTjLk3+/M1q2jic0z1CG2AvIiwxkVQ+gIDAQzSZOkxsZUarODsnZ+B45FmfLj5XcfmpAcg3WZxDEPL7jKn4ojiXCRDOQVgK8seQCD4y0Qh/NtlBaZceLcmnKu6748JFH0/tzhSR/w/a4frc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742540994; c=relaxed/simple;
	bh=J0u7jPNrydzNasLkZ8aFvn7e2vCCM38gJrDMocu1AC0=;
	h=To:Subject:From:Message-Id:Date; b=fGO7wKacivMEOEufFJWDuXBj0MoPIO/ER4704jfCGF6pzuD4cUM/Wo+oRmDgVmGk9qrT6roAQ+sICJCLwfola+/AI6LXfUa4JjBbL2r12v+A0qkI+l0ZIrU7qlpXj2ap72NUPUTd4e6bIixyuhw3deCtnCMXdGJQMySsUuKuuNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDKNb9W6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDKNb9W6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B487FC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742540993;
	bh=J0u7jPNrydzNasLkZ8aFvn7e2vCCM38gJrDMocu1AC0=;
	h=To:Subject:From:Date:From;
	b=DDKNb9W6TuFNiPvNNhUdnOfmS9A2yHIyeP7roL9E+ou08DAlyUYo/kPQWjTNZ7WXC
	 3LQtA0yoeGNiVrddQdVTAhkgItiikA6xEG/F8x/MEGmikLU2eDcaJoe5s2SIe45JcH
	 yCfwCYBsLLuPS+WrKBi39RnesxtOX3O9Dd9+NYh98NQN2flQP+R9raiPJ+gPh/VFYH
	 LAHLoE6ckw1oH2GjiM/4Ava4RsvMHIc/nGl/t0NurkMvpOD//yDwqQl8SOLv8vRuM+
	 sbA40S83vFEQzWxFLLIEh4+g2bc7cvxIiQvZA7YkF+e7YdM2vPbcQA9u9eCMnGIIcj
	 yw/K181YUWOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95534C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254099358.32474.17877036989425396982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335c58c9ea7c8d960bd8cb0b4fc998fb19b8e824345524738525bcba32837b38
Date: Fri, 21 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742540993
