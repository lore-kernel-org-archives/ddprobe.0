Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9A323956E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759313395; cv=none; b=CBdtjrjQSqxtE9KHkf73+78EtRIbec6DVc/BdWs7J70uiCmjxbVcKPyX4QxQ865/bQVYhNdPvwI5oerjMemuUKxvAe+Rp6y6cLbfsrAo2ko1p4p6mwGLql74aZy2KAjeIHmnOlQLOc3oc/SbRwmQNf1MBIEaLEqS7EjBew/GVSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759313395; c=relaxed/simple;
	bh=xLWauvpR8FWin6b/W4AG+fziPAFUEpbtOi4D5zhn2u4=;
	h=To:Subject:From:Message-Id:Date; b=CCMabp7hUWS1gWIis3hjEIRSf3DkLmJrm+xrgG9SBmRRDHXZk5YS/dOI6w14/++qqKMoEhvlgM/a1BNFH8fnU3wauC/qO5rS1X60ZbZ/uz7FPxZRNNmu3jMaWtJoTp6S51QmGXdKNf6Qctxh1qS0FOhaV3iVGWpJfhXeDdSJixo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZqkIadr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZqkIadr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759313394;
	bh=xLWauvpR8FWin6b/W4AG+fziPAFUEpbtOi4D5zhn2u4=;
	h=To:Subject:From:Date:From;
	b=XZqkIadrnjo6G0b8/cbrq0F6I+JLAFy2wLASA0CH59nhyG/KXG5TF1yzPa9jcF5GG
	 ezCkfx2a34IeW5HO1iYtHtlRWaUV8dwy7DYQckJZ5Ksal6fh+Q6QCOu3UsrOJG/x6E
	 CkMdUxuaBuXDiEKpgwXzpIB/4UILET/YmPvaLRIPI8L97Yx7BRjzPDrKHSK0WqMhns
	 lXofSYyTuTCuBTiMXY1+2T1R2enQKDQGVbL/+ZKfOmFkGRQjVDg1/iIqH3DuvH4VvZ
	 +uGFqL3SeMkurvRwwzxQYnv5DM6DWeURDBZMG/pnKrFHXhntO+hvDWb9jVZQtd5ysc
	 fL/KipNY4l82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931339358.27962.6940169643336378771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca47730c18193feec7cc2e9d9924ceff6a1a063e4040d6db0394afc2c5678065
Date: Wed, 01 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759313393
