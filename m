Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1692F283FCF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771010694; cv=none; b=UOLcxsczzh1qFPpUk1S8mdjELvTzPpnS8W0IFmtOxzuaLaLtvlJBtQM0YaEzLz2mDHSq73tdFQSigDLmGq6C7APEGyKqXW7wv+f22Be4B7WNLMy5cd2dfqZw3eYfdrd1z9pm8MBsHOuBDc7R7wpiVk6cLSmYVAF8faRIoMZbOks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771010694; c=relaxed/simple;
	bh=mM8XWzc9ar9gpCxjoy+kntutNSPP4cZlHG6CHvpbT8k=;
	h=To:Subject:From:Message-Id:Date; b=TZoXmvzpOqOCtCsjgQTXKJCjEBIIF0bx2NUD4dtzpckP1DceN5T0jJRLP81g0pLsTU+u9awpl9tM/GroahmQaZVyBcTRG2mq4dVcbVHd3f98z6+UXiDUr5YYI8YL0H12dTz45ltzhYqpP/A8R/qfmD02JsEGLUrrZnkAgOCEBq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQjjpfgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQjjpfgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A766FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771010693;
	bh=mM8XWzc9ar9gpCxjoy+kntutNSPP4cZlHG6CHvpbT8k=;
	h=To:Subject:From:Date:From;
	b=dQjjpfgrfJOXEWEsvnr5AcHenzrMLIBUnMJKpKM6/ffc7iG9nv84e95VMgXL4Wb61
	 Dwy1u+cxH86oVLlUr0YtiH7JIpS7KZE0ignUc1Yqv3rw9WhOHHJ7P82GosZ0xCBcEz
	 Qr0cPcidkl8S/XY1XS83rJd+N88WyUuuSxzu9TExEXSYbIjgA29vTCb6oJv95j4NZV
	 hP3SJPsnlqQ1LIIoPjBCcBjPyzJirTVGE6MD8JWo3Obe6ntGUYTq6LVsRizdqDiMw+
	 1VarNnw063Gu9idhdKuYu9E0EX9W5XNdXRmI189fAGqT9zDetWc+KNkfxGwhKjp7cc
	 4ePLbngPyQLhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91941EF99CF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101069358.4016.2759336233355318798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf6ad54ebb83c00ccdf4cb9f4b6268cd1381168e8e30bd9e0e13f0ad8ef52ca
Date: Fri, 13 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771010693
