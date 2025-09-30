Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1572A27F18C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759213794; cv=none; b=bOyhghy4gK6N3teMfpXL7BG4IL7GTHou4eYgeMPlG4DEKbAL7/bKw0mtUMXQH3AZ+hvc9SSCxfpu9E7x60CDt008WeK0hfAepdNQkTWjUjGLlHx1UkyQnZ7GDbpO6H8OGxA/cNDm/E+Xj/gnhy1rHkRnoc8MSBUawDrDlRo/GGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759213794; c=relaxed/simple;
	bh=qNu9/63oySiGNmv0acplXp1klQcdrt/LZzWx+VxCdgA=;
	h=To:Subject:From:Message-Id:Date; b=UKy32aLFCk+7spbTFAgRZ68mcpNO74JZvf/EW3tIbXfQQSjLWrc6Ek9s2gCLY1+j4syBge3xHXmymkctYgS8t3lc4tO/etFIYKHW28DKDhBL0fseZa4OzVgcuZf/7zCOfanficc7Xa1mXjJT7wipvyh3rfjYrxQMlf7DO9LayNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUrqjdJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUrqjdJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33CDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759213793;
	bh=qNu9/63oySiGNmv0acplXp1klQcdrt/LZzWx+VxCdgA=;
	h=To:Subject:From:Date:From;
	b=fUrqjdJAmCD+cRr/JJ75B/iJEb/QcnFSdQWe7Trs4TbDVqnbpu1TzYWWBGwy3135x
	 LHkVUDs24UqZZQv+hl/HKBQtTsaBD6Tt03rDEarjtSsnxzni8T6hRsFOCRe28M+ew4
	 XgDYH8n+5RkhntspwLNLMwH6p+CZFzNhd+1oMIhHgoBrI4o1ryTlWMyw7EuNlLaFSm
	 vpKQn8IrYnaA3xeomC2O4OwBLvyKGX63OOOLeWXGVLzVE5cfMyuApJ4PqcIiZ2fAqw
	 okwt8HjDZuZMnczx0GuHmVGGKn+hC48FLE9M83G0jFGRuwmV1MovjeM810R1JRel5V
	 BvAfa22E0dK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEAECAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921379357.25913.11604597816569061674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafbaf7f2faa8278b483c886ed51fb5e677221ae62908943cd710cc71343a525
Date: Tue, 30 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759213793
