Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F5137E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729428954; cv=none; b=GWA4tFvpouv+y42SA39xHAdaGroftjYiBg8DfJn75mUmHdwXtSAt+/cFnoAI94b2sKuE0iKcee5jDHWPdWnVOo+yLaExCh/OaMZehEC2UBvxAmn1qro14u0qYF6pLDpRXRU6JlfiBZ8xTHXcguwX7FsK40GgDnK2r40hW3n9aYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729428954; c=relaxed/simple;
	bh=QqzEm8II/DJ4rGSgBHsgJ5ryjtRLIYGgt69ELeadW98=;
	h=To:Subject:From:Message-Id:Date; b=TcwQxzDBem7I35UhIJKwOb0ZZ04ZSPVJyXCRnioekK9fbaMS3baV7IRLNDRym4xc6O/n+UL9oITId1/5gtFReZPTb66+YZmgtEj5yE4xc9HJnEN3VZ1LfzLex+5W6T8h/npoyfz8XuXxz4x3KfmaSfFHGI3Mp8e4Pasb/UxVm6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+vGomYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+vGomYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DEAC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729428953;
	bh=QqzEm8II/DJ4rGSgBHsgJ5ryjtRLIYGgt69ELeadW98=;
	h=To:Subject:From:Date:From;
	b=c+vGomYaRM1jEqS21jyQa/qBK6+EeUg5lVZNNOqhoSfCeFpll4ViO2JKdwPb7hb7Q
	 TQs7RTInCPQx8MgorRaEe5yLazpK8SIdNt8zu4q+/XlkSUNUTxfEvgQjjGARA/gcUo
	 Y8Fj8naPkUlmO5S1GhiTTO/bPSGNyyUL7JG+GGX5Rc5Vt2K07b6lojzbon7LBy2Lp4
	 WJfTypYUIvbPnb/5/vzsKEaSgbSR7b+IxlcUHVup6WRlhAZtv3oyWeu44xOu7YFN3e
	 K2cYGlB25f66VehNZRkNNNJ+KnYqIHMOQuo8TMprlwiR2CyrKdAqvWpwxiUDwHPCDK
	 NRtMlFpTAdAOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADEDD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942895360.8479.1498828582379075853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc86716938f23c2af032575679ba1fde4d50c8946583527ad76a34441776adc
Date: Sun, 20 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729428953
