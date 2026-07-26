Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF06E3314C4
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785049834; cv=none; b=GjLvNEIsXyyGi2tYHEoY0Kv5OEP0YdCxKvADvM/Ah0EgC2b+rkbF8agUnlrYD11x0PLuwjsTpChlQs3JPVjkbsPns0czsuUogZ0KSKpDl7NH+9uby5+DEcP1Oubid+jwdS9uNTnhFViB7GmgPT+e069awUfvvg/YExnddTY3bQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785049834; c=relaxed/simple;
	bh=KFgsLvz8QJO9vgoGzchHG43uBhVTWkChrI1CV7uA6VI=;
	h=To:Subject:From:Message-Id:Date; b=ElrUhwr/W7pqC1hSBxDFc5l9R/BjIzXVEp3xWnr7ScQV061Qtc6lvnJaqcT75O2cKMSC4XbAX18yzVuQ7V1jFmdQ/c+14XC3BFvJ1p/D4d38QuMRKYEfU4fNuGzxqhdmPolyZXIELb7mETkm7nWNaddmUJEiCe04PlJijWs4CPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPuXEgob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPuXEgob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23AAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785049833;
	bh=KFgsLvz8QJO9vgoGzchHG43uBhVTWkChrI1CV7uA6VI=;
	h=To:Subject:From:Date:From;
	b=bPuXEgobkgnpO+qsJKT6HZXlAbP329v3R4eLipfeuYRnyemxNvQwGm8WwoLhxo/HS
	 qm1kLQ7A1HFjpzJjGK3OU8Cf8J7mAGVJclVqTz3jFm7mfVDpfnzQJBd0AdP6BNe1kO
	 r2EFw6ENOnirIu+UQqdQKBQS4JkKlahFgEfBx0txVofx/UH1LoGTRNEuKXpAf84+/F
	 idneg3Da8k+Wu9lgDr1HEeHn+XnUWGgzAlzxXzknQvRZn0B8EtGDewgHktsgwBz3gb
	 gLQhFSQ9nl0919r612ZZvwbIqZ/cuEtnb76WBZwMLYADQ1/2Y76NRe478RqCaWps7K
	 t+21Gn77Nnenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB46EC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504983368.8764.204666813868600360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f55e59e2cc45c400ed54c9a0bfcd760b4426821fb313fcdd1364c3d5c3bc915
Date: Sun, 26 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785049833
