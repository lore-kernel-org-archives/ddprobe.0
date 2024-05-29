Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654831C6893
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717013663; cv=none; b=AFwkHzBXK+FdCVjmz7PIcn9HVY3Txchu9GGPQ+evGU5T61bft7HSwsY2MBySDRMO4MBvYZiZgxec5EuY4NTv4bCkGdjKJXu8ylGZsqOozT1ZfeoWp9Hz8aahFLJnPy/psZziP+lkEel3qGGmnaQ5ex4WdQkaqiY06AkHxDtdbzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717013663; c=relaxed/simple;
	bh=qDjAFwfdpm2EDl8DztgzR4wzn0ZE5VMD4su0qKesYdI=;
	h=To:Subject:From:Message-Id:Date; b=Dbw6N1R51vdGe66ohQgUOsrsgj1qd1FBkctjoCisfIEu0PeSUQNssIRokgZcAIMaCfDjrWTksY1v8i4jbqWuPN3eaH2HPwFm+B6fmLGNdCK+dbsUR5gNKnepiuxvl5g5TbtvQfC2nWY64fFxgpQ6EjPn8GjmGvL+cw+KZLYKmb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNycMBiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNycMBiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3657C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717013662;
	bh=qDjAFwfdpm2EDl8DztgzR4wzn0ZE5VMD4su0qKesYdI=;
	h=To:Subject:From:Date:From;
	b=oNycMBiNVyhOXK3TT/dCAYTZotijS6pl2Qnk/U0VSqBXltbK6LQSE3Z06pxkqtLkw
	 RJeYWZXEj/lITQaw7K3q7uW2gVSN8prYNRsfTjXRBtio7qRr8putzbLJSumDChBCTm
	 8g4vAfQYTURfsPCzz5vvps7VRsaeyW5YamMf+IMZFRxo/Blbe51i+/rEI5L4hPNK7T
	 iaYOF+4bO6j6RRuM0yCBZf9dzuEhftKyAe5W6K8Ec5fdX4+2rguwniECFwONy0Lhq3
	 wSdWr5/+iSAjWYSbV496fX2WI3sLSJnyuaYf/mvWmLON3Y52t0LX9OR3rBMa3tT2qs
	 bv2CKwufQNrXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C519AC25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701366279.5185.115821585608205796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be1edf83b467562f9a55de52dbeef10272c053b728628d3396258e2641f29d7
Date: Wed, 29 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717013662
