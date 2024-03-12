Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D064B657
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710229097; cv=none; b=fdZhtgXd3bOAqjZJllXp8xP/oucZBGZ6x3g+Hlxcv+ddY+u01DUh+/FdvYzMX/fhLHzAvI8PCIbROQadvuS5I9X2WlAchzhFZMsJ6Gwj11WOtRZ5yEjXAyDjXNJSh1mzTNQTdK1+O/sLnbkeuaQB6TjwgMJq7xpeIBTEEBdVTTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710229097; c=relaxed/simple;
	bh=IssFdbBBaFR6VAQrTyxt0BCW7easjNjAIuLhfnM8Dzo=;
	h=To:Subject:From:Message-Id:Date; b=aOx8csY9EWRCE2ecahE1PV+AFiI9qNANpLnqJ38Z+0SWjK6cvia8LaAU57UPvE14K5W1A299X3lFHL45ot4Elxs2ppZG+yqPd+7KU+9rR/t/sAt7eHk2XRU/DkcvkIG+9lkKdLip5pUC9d+lIbLPYNWF/qjeXla+cQ0JF9W7NRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMHw4AC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMHw4AC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E23C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710229096;
	bh=IssFdbBBaFR6VAQrTyxt0BCW7easjNjAIuLhfnM8Dzo=;
	h=To:Subject:From:Date:From;
	b=uMHw4AC2y+tcdon5fGIRzVJ839bEEOsCEn6cc8OXdOPLeCoJEnGyL45zmqo2RbDnR
	 BhJBuHRGEOy/W5SPWbpmdt7xqUP2CLE093fNX+iggDuAp64uSQL2dYJl2+iVCozGX4
	 DfasyGmhwJF08njtyCqZt69MQQPpe+maoRs0F/SYLX/QG5hTO3nGJY7cRB5mdsI11t
	 JnljUqOUp732cUB4Vj94RuSFoJC82E7emSkv4ySZ+R5PVDldOeTK9ZzYNIAv7Y91QW
	 hmmzgylvEiQkQqi+e6+QjZVGSJOP69XbBD3WaZy37f10zmf65u4Xzodnq0nmog85wN
	 gOl2bnwrPP1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9EAC54E66
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171022909637.4176.6388615706418347654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdc06ee3a7b7479dbbd2a8ae121d84ed8b6a45c27242b1f45e850d0454bb7a0
Date: Tue, 12 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710229096
