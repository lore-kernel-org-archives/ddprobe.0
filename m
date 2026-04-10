Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37303E555
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775779654; cv=none; b=gwVNjGFhX8NoiEraECddGLPBRboPV9abv+oIx0cSEHTJG2he2QMrP5x94TklIQDgwfZyR6khc1tK+OPZwVY8QUZyjVp0iR/LRp7BqDfJamrR9JivZgDD7nFu2HVQXIMVNtDli7E9hqSQN120jN4VrDn7RKSDvqARWcESVB8+p6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775779654; c=relaxed/simple;
	bh=enW/5ZY7tWIvQoEVpSwk4M4lpRqDb7Acfcm0Xl/Idlg=;
	h=To:Subject:From:Message-Id:Date; b=ECvzxDYLtHqYiDJVczrzdmKu3KgfVMwT7RliWsPv/IQVfadZUmANzJ9m4HDhHnjqmV+erb48dw8SG90b41QhRdOODJFzSXd2H3jGkCmNlFpi30nm8qQTf6zTQTK8VdmLZbm1AoeJemFaBj/oRAfywb6ZxJ4SHgV4d6DFmGKKePI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTxSgNzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTxSgNzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25CBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775779653;
	bh=enW/5ZY7tWIvQoEVpSwk4M4lpRqDb7Acfcm0Xl/Idlg=;
	h=To:Subject:From:Date:From;
	b=hTxSgNzRBopQcvUQ9f+c+WkwAVFJSZ+PLM3y6UmJIJVzdJ+JA3ncdjXWTVhUkLx5p
	 u0e/EYm3XWZikd/IBG9Vi7OQA5cT60P14b/0tJKxFUNjs2btUW1VBKe2iFoBKkACAz
	 BvArL1NLDrtHblD6liHC+cwYeOHFcH/N8bT8x6OAX8xtUhNmiptXTyDCO3IbVnMPDG
	 nC99bFwzL2muEAMnv4H/1vGNHlnnfoYJMjYhKps4+0YV+pK69fFrzt1rYOtxv/aGyT
	 QOkSXvUalJRi56LCBr23bvvNU22JAY9b/8i+QJVhIZ1Urgp9cdM/HwturaxIyRDzB+
	 fm0monfXQBVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB9AF36B96
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577965368.27493.3515365268716821130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391927324fa378504b873e37c08f3a156dc535a8559e255b9fb4c00bbe6cc642
Date: Fri, 10 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775779653
