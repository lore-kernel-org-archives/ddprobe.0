Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3F1EE03D
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729263354; cv=none; b=puxuA1N6ZjpWyrdMyu/kx+J617F12lmW44bK5EJZjEljFzvpcN4bHLPK9jReo8/B4hupyz775CFVoGHq0Sswsaqsm1JRHss23clBnY17G70xUUEhlFtqat1k07VRLGaYSexNvViXl3aYCxbl0s5nOAPV0jcL8xBTkh7od78HL8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729263354; c=relaxed/simple;
	bh=fJ+N7R68RvdvwqmY/bqvIjQBqSuTpPj3nBprVMqTY+Y=;
	h=To:Subject:From:Message-Id:Date; b=PLtzImFjnXNSvTPGlpryiUn+d0911jKNb0m7utoPcNtam4PvKh9OdolNeGXRELLfhXXhUtefLULxtyicsBj+89sYz3vHCifQ2ITVVZs2mtXSNpZiN/q+u5dFNgXEdov/XfJOCM7w1Uadb7hzBnReBCpge2nXOB2lrl5nOzgzTAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDRaAUz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDRaAUz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA093C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729263353;
	bh=fJ+N7R68RvdvwqmY/bqvIjQBqSuTpPj3nBprVMqTY+Y=;
	h=To:Subject:From:Date:From;
	b=TDRaAUz95q0YUhfzJdbNBgcuOVUBj1KlWPRY5DWcHWmhaukunWUEFinnZ980925od
	 dqp9SVZk9LX1Xzwr2XyUyTn6O0JSxB0lhodcgZTwmLSHPwqf57PZK7PyF9hj3oRw+U
	 KKY4in4T3YHahRFFj/QtpfSRSTLGualNtG6YlAWGaaWnjLgDmtYJsKqfz/72majvjw
	 UHsKPeP9iStQ+atmA84+vX6jZUrqExB3eziLBIPm4NI/7VrSxwof7cOLET/msVgZp+
	 Yb4Rsh2EO3LjsxAe7WHum87YxwRMF2wPXI1zkevTEvdlYOJhrgpD9lxYooxHp1JSkR
	 kuHsL1cmwxGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E5D30017
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926335360.6270.9027846138209634218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efd56835074e22504db6347b1e3c66be625ab2af42cd93b7d37c4b4f9136489
Date: Fri, 18 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729263353
