Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D93E22B594
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784465914; cv=none; b=OmI2EjI9UpcnKwqXkKPnfVdNjBSUQYpqW0CC6lAqJEuDD5Kf3ZFGcbjfMu0RKvcw38oEJfE0J8MNdmUXmAvpwUD/CDOn4xmqanWhx+uN5/UQdyui5T7dcT4h9JUA+hiLk4C+vDpJ4mJ3UuodKeBS92DSy0LOOB/1s0ovPQpiOtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784465914; c=relaxed/simple;
	bh=kPg+3XymdbC3lIlyKdQhJTCFYAXUr/hM3AcHT2iksYk=;
	h=To:Subject:From:Message-Id:Date; b=IDQhO7sPTwpud0y9hqZZ0MkwqUqoA2GXKe+2CptYYTYq03S36WY9W/cemDQkD3B31LvpjAuK/dtOK1IlPdIZuLHPRTpKCeKcTWe5CgnJ4pjhdiykt+CNQDziBaTRKN5ONtJoLsDPxhsyM1xZlXmvugiou3EfdlMzLp4l7Rgizpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9GvPP6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9GvPP6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B15C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784465913;
	bh=kPg+3XymdbC3lIlyKdQhJTCFYAXUr/hM3AcHT2iksYk=;
	h=To:Subject:From:Date:From;
	b=i9GvPP6z3wEHD5yf4tv7ATbyRUW53m9kyvSUS1djKKzYrlsE+COEKHEYTZ4LxVjG6
	 YKE+iw4copNXc26vfjtzICMuXPZZ4rMtMXe9g0GspgtbA4/YrQTkHEKarsjIdVibuV
	 y1FnB2ZJUVBEodgZepw06ant5o2KDnqMBWOVGig9+ZyCHCuM3OlpGucXDWX1V0lE+3
	 9KlkdCX014sv3QSyM1SfFo0FjZLSaoFz+1NVlulflXA8u/pGFXwGPZR74O3oiDMlDi
	 nzleee/E/o7tR4LNX9Pd49+40tPkeB7oD7svDX3LCqKDVi+mnni57XSOpxAzcTYDZU
	 A5qcaTDz8RDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAF3C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446591368.906.16574790547289695043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d608177d6cc3a9ff0499eb62f108cf567dc09509e4ab3e505f7053e9473a4c2
Date: Sun, 19 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784465913
