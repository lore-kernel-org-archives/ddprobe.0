Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4643D369208
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785435634; cv=none; b=cKDgaQhpG8os2lRRDu3EdNs1y+TM1SlpfUeLZPeSaZsI/5sS0Bq2t8z2LJIDxWvEwKOj1j5kQ7zgcFbYM+tLnr8hVgncamRDxhhzfAA40BDm/hK5aX+oSZaLgg/gCavn904r6EZ3agvNMql+fAs/UYWlt1X+p19xnAe2fPyw0Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785435634; c=relaxed/simple;
	bh=0s9d30XiZklRjZikAbprsGPL/87PZcM8B1YYRW9XeC0=;
	h=To:Subject:From:Message-Id:Date; b=J3TOX8pgZh4y8SzqDYIQ3DsfP+bN4QtXao1io9v3e6kEymTRVlToDSeGLGAHcQIPlekyg6gcpdlUT7tpf3Mtscidl7fPlyLfuJTy5gV7n4eu4AUIMwrD8SLCgCR2yeAlR7ROI2EH+fcr3ey5bUcmob6NpFQyIMt2hdVQUgAiElk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLenW1KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLenW1KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9665C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785435633;
	bh=0s9d30XiZklRjZikAbprsGPL/87PZcM8B1YYRW9XeC0=;
	h=To:Subject:From:Date:From;
	b=ZLenW1KY42VSduRfav91NgXc9S+O/tADUX1JuJt8WTKkMDuRZ+0q2hvD7zg4J+n15
	 pRwkLT6CWEAoQKDZ2MGXwHC5w+jZH5RU2LQdoPzg1BxjFKSD9qbmKNMabrElfvEZ7Z
	 QyY4G66VbxPelkJEFGVBdQRvTLAb730WjmQwokmtzaMz9uOHIlsWSR1FRZxLFXhdqd
	 JCl4simTZ+tr/ePqpUPNP/MVgHZ0AdNEPUZP8+sY5e8wxSwGs7jqiM5QhEiBU3L/Cv
	 /EAxs6o48/LJvHFHStxFz8dj4oVm/EBMGTru9Do+L3g+Q45YODGANHSXPs6awHXpa/
	 OhueEdPRD8gGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A22C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543563371.11696.17821151278094951538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae09459afb38a983595d6f7fdc43e84685e2ad2b56b8140c9aae704c83c1386c
Date: Thu, 30 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785435633
