Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538E53BB50
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721279723; cv=none; b=e5JJen5YOKf9uuCaiUqP6QLjgp2Lfb2cCw4cENeD7CuK813jhgEWm1oXyEtNuUlP747X1I0R8d7CkXJJDFnBJ06juBaWI6phSX8BN3PgTPY99Ngh6lv2CAomqtxvZl1yWL3rJM/Y9LVduAaWtmzLMgSHeE6Vb4spiI3w3oCsZYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721279723; c=relaxed/simple;
	bh=ufjxL1/l6Ss0buLr0AOcrGaTt3qJbMi4fQVJayMvmhc=;
	h=To:Subject:From:Message-Id:Date; b=ObfLVUHEwThfTPgprKF0GajPSX1eeHYSr59WAjCqGxA0AKc5ysrXjPMFrKXEx7ao54mXLX0+bmBjbyjpjJ2aw+YZsKu+bjCOCmejWRekTkGBmNrvTUEqwq+fvZbGwIWRWgo97GV5ShiFNbOQ+yMgwrFoO4IMSgUCce+/6XjxtAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9Jpnd+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9Jpnd+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA909C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721279722;
	bh=ufjxL1/l6Ss0buLr0AOcrGaTt3qJbMi4fQVJayMvmhc=;
	h=To:Subject:From:Date:From;
	b=s9Jpnd+eGb2n1r4OkaKZ+2mHg+xfTO4gccHEKS5L8YBVwFuryv1LkJud33GgtRKu9
	 Hw1iQV44ETcZ86Rsf6zkwbO8mshqz2B72lgrBb4se9JfPhaOqAm6u9lYeAal+AevHZ
	 +XTmcFwM32iNEWuyCypV6fZT6tdqwrGZTWhm+kXMlBU5cOaPEN9QVkFAC01+LT5xFc
	 0Jamy4IabwIrTyiEMSDLo2TH3l3pP3hxdkU4zsiyLk2Y4EoIVE5UPlOh5durjh0B5x
	 xQQZy0nX8CRczsTzIEUpGCUF+00f2SxnvVLaBXFzswm30+61jlP9gLiQ8S/I0DIUCT
	 POGFzQXfPA/1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA3CC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172127972276.7404.9085125060960777791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a1cc452ea380291a1bdd55fc20071f80748a9f254b62d344662ba7e3c0ecc1
Date: Thu, 18 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721279722
