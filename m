Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB63FD1
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753921194; cv=none; b=ENUc2gaBH8fWhzv+iqOsGlGfFr2on8muBNLmzdpkSmHSUILDQVazmFqTIVpnMZC5ZxrFh8HEPK+XjwxGp4Y+z7m6zdOeNPpsLM0SNh99vQXbiLtnvxJSju9GkXwObSOwTl+jjIGQxB3ILdBpQdF0GVhcDtStDAVxCxbKrTSW4A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753921194; c=relaxed/simple;
	bh=UmGu0kKjonuDtlQdFfcQB9YOUMfW7np0SPQ1ugtZEro=;
	h=To:Subject:From:Message-Id:Date; b=eT6oxBSy8QXI9GC7I1nBezM0tlwsIAr6HsLylRCm2eJr8IBkT6J4ClbF5Tqb83nLSGsoaSuqrpPtohHvfd23kr2G0/lVAu872Gg5Ak/vIbUh2/JzCrSLf8wOcll2KeYNI5l9Cr2dNwHWaar6flHRcU7WBEyy25X+Bzs1/iLW+UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ycdh52ZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ycdh52ZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E93C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753921193;
	bh=UmGu0kKjonuDtlQdFfcQB9YOUMfW7np0SPQ1ugtZEro=;
	h=To:Subject:From:Date:From;
	b=Ycdh52ZA/PEQrQpwH2nmFOLsl6P75QFcAOQniz8aKA48Pcmz9fcSPNMezW+Nq+oLp
	 h86o9kB/0FqHghUAsbRhApJvvKoj/kEJzPUpCO9G3YOEFJ9Y4F18JvY8QSyLV4whYo
	 5tSjrrkKT3rJTH7AlFZsZMEyBxaINrgEDw9K+xVHpusafAE+axBpkFvb+9KWhCGNKI
	 +kglmbkB6QH5Klt8T5dJD4h5nDABFIFCFWlyW1G7v8NnLABBMORkJnU2ZIFeYYUGmM
	 empGltHf0+noVYdFHLG2OvlVp0kLt8EAkz6iaEfFqOI0iVR86n4c/OWRcJdO3VATF4
	 YdZ07LGs4tH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EFC87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392119357.15937.18437535119749155478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2408592b8d0b62e872aecb039a19b688d3d73eed7d88c7e1eb65dd615be885f9
Date: Thu, 31 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753921193
