Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090F62D3A69
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777094254; cv=none; b=cnIpJjiASBc8Xa34u0W8rJd/dw5zPjl168WdBc8lNzhHHlqsuzl/RRGFpoZkQHz+nEmNAsSxSTNpVMYinxZPzpCb4Qslq+PJvGfOW+Ol3LuFa2F3TpTm1NNLTCpyAy5dCxnniOcGLOALWU5cH7s13FQO3s0WYBU6/W9X1PDrPw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777094254; c=relaxed/simple;
	bh=Bd1DxBcfyxRuIKJVzJRqsRaekMPbtQZnyRG88q65C54=;
	h=To:Subject:From:Message-Id:Date; b=egyvloIFEGbae8PhLtjd+2Nl0FdELjs+XL+gJ/yAwSOWDMtUe0Ep3BFxeLuBJegrO05am6qvi6uRqNcq9E+e0csKSVQpFg1uFngw7aIQj/jO00i59IlnTMnpsv3pfNazbtrRySwRZ0EADLjAlaB2ZPhZyE2SL/qnJgP2lAtqLo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbFG+cCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbFG+cCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3B6C2BCB5
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777094253;
	bh=Bd1DxBcfyxRuIKJVzJRqsRaekMPbtQZnyRG88q65C54=;
	h=To:Subject:From:Date:From;
	b=cbFG+cCsNCsXQNAnLYK9UEg0xfXr12661ILl6yGIJYZoOOXhcU5imX3RI+byLJEZ2
	 zWVfs5i3iFRK587OcR3OdLoANJ+yf5VJw3YhpCDOZv8cQyz+IO6FOfRTGzq/mVmWjm
	 M/uE4FiAkwE1omu3CbUKI4xN2x43n9xbq1YPmHjI6MxOX4OAtndsQsu1h/ugE2OCsD
	 +BwHuutYY7IG+Ym19gmocZy7vsIpmd2E9VCJkQr3s21/kf7E15Uyz3ztTAilpCS/sz
	 TGqk43IkOju1l9Tl4Dw9bRy5d/sbEEpN+kfhFfKWKXkKbV1JEC2ec+9LGDeCTmYLzF
	 /9PJxqsuUNqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF92DFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709425368.1496.15430379482607805475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15c8f8f68807d422e24c9389b09e02a3bf64bbedd6398a0ce4a1fc6a9e872ab
Date: Sat, 25 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777094253
