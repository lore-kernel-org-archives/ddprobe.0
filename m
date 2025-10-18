Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE69E13AD26
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760749793; cv=none; b=lFIJ99L5eKc/Dmo0I8VWoPja3IOYfTHrgGRBzYVzOU37k+4Q/75WAzX7TRnAhsjT8I/NVgJw3x988AYHtN2ehgUxVbUUeFYc5SAGAkVNfxGRp3zwopMkwBTzgJ4C7RGQxxZvysJxmZd/RaVNYmPxYHh+69RO29ZdPQyKQezQIW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760749793; c=relaxed/simple;
	bh=DS0miQ0d3sXDUlT9wFkyyI/ZH8JFWh4KOf+D5Xl9BAg=;
	h=To:Subject:From:Message-Id:Date; b=upb4HwCrrcF4aTmDbkA+/HPz7Tt/HtaOsCr5jWU4q6a5Z+mnfPbZf34x01u9h8pl6+MlkZsiF6H1sLAV2oYu+I701OTELqjkA8xZxo7n3Ya1mntLjVv3czY/tV4hsBJzVfNwkdSTzEq2XPW63hJRlX2XXq/7vawYjYpOLPBM2Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdTbpOSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdTbpOSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA239C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760749793;
	bh=DS0miQ0d3sXDUlT9wFkyyI/ZH8JFWh4KOf+D5Xl9BAg=;
	h=To:Subject:From:Date:From;
	b=OdTbpOSLjkJLk7Eva2nEoJlFFN5fO9yLLSLHjC4COrhXgrqLJwlDFG3EjawXPPtKR
	 vw1Y2qndA+GQExOldHI5x1CXSTIxUCEKBC4RUzG2BpHcw1sfMCZ9eixeXhqAt9XmcE
	 ql7SXf+JDavfDWOmZIGYLHGa7Il2x54d1TR3pNOQ8Ozrha/kBK6dTaDsMluR9Ne8Rp
	 PSkkUh0PX0/a0ur4p2SDpM8QNr+k4zuwqV0VqQw0PmsMa2YOLE1yKRlzkw+YrIdFcD
	 dkFkByePyDKjgpxE4QUlM/r6HG4bxyAHc3oX10LXqJ6/GLMr5m69N9Uaaogq3eYrFV
	 CLRpEB4kcMhZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9693FCCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074979358.16944.15454667159626888117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01181e745c1eb0cadf0db482b324e180b7945e980ebe3fca315177c75fd0e75c
Date: Sat, 18 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760749793
