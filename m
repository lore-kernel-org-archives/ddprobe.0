Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D4B242D69
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763490714; cv=none; b=N6xm+aECZag30Z4v+k2HlFAaZsK42zSwQ+gn7cmrrCYZ1pEs03Ap2PnpLQMPKn3oThJ5Ndq3vHn6YFBREkNjscEAhbW4oPe2DgDPVFrL+tO89k/BNbutYKYTQTysUZQi0iGFh/fgmGxjQZfzXRphqLsScYX2r45mslIw3ru7Gs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763490714; c=relaxed/simple;
	bh=ijOd4oAyjsKURIyTCjVguoJgq2BaJxSYi2yO4Ox+NTo=;
	h=To:Subject:From:Message-Id:Date; b=OcgRqea7H+7jbElPl9MocGC6i2KuOlhsjWZ3aNaNYsaoZy5qtRs9zEiA6W/9ofH+DEApQgHgX/KNKgAPEGgRcl/67ubNd7hsjL9qyzxSWYclunu4ilNsuwYdEJufUIGCwFuJG1u69QDcG1as6apF3d43EHeemoGVtEakUPVftzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXJdvU/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXJdvU/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82E6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763490713;
	bh=ijOd4oAyjsKURIyTCjVguoJgq2BaJxSYi2yO4Ox+NTo=;
	h=To:Subject:From:Date:From;
	b=JXJdvU/e0kywTmZNjlypa84XRPOJtTuvJQwAsVVoGdoPbySbvGoLzN1KfWNtHaLKa
	 6CubXE1I2BZKXQ0GvHbzEmOxLXRAIO3H4f88NfulNESzHnxrJbSG5hPAin0yixJc9C
	 lONGFN6+raRSNummQN3IgH70+JcyMlL7xO1Ie3pe3z+XWOFzWrXUEAsuE1Wa0MLPl6
	 WbouJoSMWjDSSj05HvmIQbhKiRElqTw9bcJquCR0W279DfrlhPlI0767xWyjpG97J8
	 FONX0N3cyv+emPJQk/kxT1KrnFmiAQEb7EM4Nnk3DxIqqWP/pc7fFc80qxycMfulFh
	 a9jKXtz3bdBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFECEE343
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349071358.3800.14581357166886335524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aadd4409b02ecc79e67937a931f203b44056e80dcc263d8c9dac8790678e8dd
Date: Tue, 18 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763490713
