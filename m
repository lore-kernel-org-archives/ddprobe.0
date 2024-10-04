Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DB0182B3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728009954; cv=none; b=CuAN7pdu0MDsUn76UyU3oe9wtGb6M33OHYSGxZYcqFpzQg1wq42rJDdPH4qknXK6iVOBCEcZIdY46ROqJpHSMJsE1qlv1+Hl6EH0azSP5R780o1/+ujhtHuWfYkqhaZB3qCO1IBpLZd6MFCBe//tOQH+AxsunCIhR7BDWQBwHco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728009954; c=relaxed/simple;
	bh=c8RFGshJpj3qdFuA3kiskAPiWz1aorIC2/LFCOXMnz4=;
	h=To:Subject:From:Message-Id:Date; b=JN4deGWIIHUJ9fqZziwn7jRUK0usK5Vie48BIXHAlVKouuONEkhbbMbodXFctjqfolbfLQ2MpKY+XRta1/PKAbwWGKJKi9P/Z6mkAP+/+4BNPSFQBlMInqSoP4WBRGGHS4e3E+wAuWWbcUYg8EJh5a3SCD6F2QyOeYLPASc1gbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVP+LYos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVP+LYos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5166C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728009953;
	bh=c8RFGshJpj3qdFuA3kiskAPiWz1aorIC2/LFCOXMnz4=;
	h=To:Subject:From:Date:From;
	b=eVP+LYosWHMaAIiHjm7obm1V69mp2HJobpAtk/HCsH36ZGQO0/9e2NIZblJePZ51v
	 nio11YiMiY0NBIs/73mb69jLL5RaDnHTJXqf75Vq+r4lfGRmm57AWR0BOP7yGBlyza
	 nm89Zeg027cXAvzm7y3HbqRigVbzlZPxzrOHQHf3EKDOIXRAxi+3/jYEkiRwvNvmOo
	 suUuhJcqanRWZMS4hae0pTZRMxxKa/HM/4SEaIszkL7/aRg5/bhE0WJWZ8at3JY6Rm
	 gHT8U6AozDSowPc3q9RKN3/r2PlSob8uwZvdfLluYKrDPp4/476k0pcLlpTHbxioVl
	 w6RJAyki8f9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C528CF856A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800995362.13623.7528828925686812880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dabedd8d0688c9b1e35bc9553241c12acd90414626322741b0f9c9a7ced33f1
Date: Fri, 04 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728009953
