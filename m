Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00338D3F7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790714434; cv=none; b=n0sC2yxZ4EShICQxnlwgqfzDGcA1oiX8kVJid8bb9+gJtbIWiVH3Hr4grGonEQp+9fAi+HxC7EYfIt+53/afhMoIy58FetrEjbPFdLqt4SQ+tTZAgM7J2uYbeewo21hMcl43a9/M320Uo6fbrTNmjJC0c1U/mVGFRsQ+bmfW9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790714434; c=relaxed/simple;
	bh=cjOtGJjz5KUZDgRjS/BUotLGEWZo/fnASYMwmDRcL2A=;
	h=To:Subject:From:Message-Id:Date; b=Oez1dlSCgNl0C6Xyl6xtZ6G5EuZZVTknM7ZSUIlPr/q5GNu8PIo3EP3ukiOGEWhUBIxPJhpOdd1EyeTW2lMeSV+O4znk3X6IAukRUELjsf3Ht0NWrqDhmpRUsgkZGFmo9lCouq0bDuhtYznzK0jqkUbFXYvL2v8aaJYoxG1x42Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugs2i45B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugs2i45B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E43C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790714433;
	bh=cjOtGJjz5KUZDgRjS/BUotLGEWZo/fnASYMwmDRcL2A=;
	h=To:Subject:From:Date:From;
	b=Ugs2i45B6LmbaTvIh4zRwOR2AT4dhGupZDhkzBeTy0vp73I8DFIYe+jdCmodhT4K9
	 b1rN2bExZxq/l/qcTj1CAAxsbMcIS7aI0VhSJQwzS6twlDGyxIXkmCNsIHa2cjKTxc
	 QTegoMgQaYGZJi8NG6CzBBpwKx+9JFGnyiXfK8TVlvURp6WJu0nn1eXkqeOwyJLU/s
	 NCOgoUZdwXFU4HF1wi0+3hop80olr6uY8bdOXMqOUvH8MD97oeMe6ngT9Z5Pzz/Qi0
	 396GBrSSjUSFMRaxkrW06Bn16yf7omb8OIRLP+77Ue9MgWKOwvm/jTPuPsaptBpeso
	 1Mg9uf9uHfmKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA3FCA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071443368.20165.12624221002556721526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c947ad84bf4f1455723e6bf3e87385644158d7ba917635c3872fc44b73cbd10
Date: Tue, 29 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790714433
