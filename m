Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFEF30E0FB
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778441434; cv=none; b=ip365HylNOJtGJwxrKjMI9opDeJTvovzhKL00QjAPPDYar3aodFoVW4DSsVPS0kqdz4f+CtvTQHFOXGvDbvisAGPFHcbiuKeHfT1dBlsZUcUaKsGuYKIvDzmbBVJKsH+WXJKXD8+OfbakOHiqnNP2RX/JaoKGOmykzctWj6ESbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778441434; c=relaxed/simple;
	bh=udzRgBdBgy6nrJWDZ3Bl4RBL9GXz9cEDDJJHBafIySM=;
	h=To:Subject:From:Message-Id:Date; b=QuZLMSv5y5syZrqTEoVdCiIleKX76dFj1Kb9jTsorU+bstJa58nlg4fV+SLRi5EGCaLr38vVWUF5/WHSow+PiQ+ulGd7HFZ2dOORwiPX/1moNMYVLk3cXelD0j1gcrLnBJqncVkdmZ+BWdmCKNz7n7gvmUhaNHlxaXvSwvdS11c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqvvQksx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqvvQksx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C823DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778441433;
	bh=udzRgBdBgy6nrJWDZ3Bl4RBL9GXz9cEDDJJHBafIySM=;
	h=To:Subject:From:Date:From;
	b=eqvvQksxGt47Qmy7GHtUnleEKxwbKjZqohsEb/hcE/Ey+ZZ5iadFO/oa6HmXuRBb9
	 FUC9HR8kW6MgfaT7MA5L32bRBtuBDoqAfbsxnpVmrewl/+W+JQyJTWsdunewC88TwY
	 G8xUF673vILi6zH+lJJV1HDUr5ClcLp0BKAJO042Twqw4rZ523x6QhyDciBmyE4yd4
	 sGNJXkBea/zkJyx/6eXkm7v/NM+CXuA+7NIlEMml0UxYqqL14uSZkotHvXM+s8TIsX
	 Kf+jUfTZujUtxGeH1ASrC9b72vV/W9U5xhHp6FJsIiTf0VTBTQ6egyU4F0kvbMnbMG
	 B3oSTqoPnD7dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BE3CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844143370.22548.17534370201768879379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3214cc84c0a34a8ea3218f6e2af2d5dc54a06edb2e9c3ed8440f0357ee15ff1b
Date: Sun, 10 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778441433
