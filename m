Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1518C2192FA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786234834; cv=none; b=oO62w7h3orYo/BVSO8C1uOuCBO/l7SQp1qjrIO5QvTolyy1c4KDkhkCTNvNJApQ17izou0HI7IwBUKXT3vC65BV4dKePqnj4ATA5Bag+MCVw0ntX06vP2ElqbTu5zwEzxbSqNWvucCfC56dGCh6TiwourJzI/XTipjQjpKgwnO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786234834; c=relaxed/simple;
	bh=LRv7CePmvDQpOWX+c4R9Wbpj0SNFEJ3eQkDuMdhJbj8=;
	h=To:Subject:From:Message-Id:Date; b=X91E+nNNlFaGbzkNtFb5YvdC1v24zUfqYbe8TFGBdZ+v9Y6VSNmv8BK8/dRSf/OSUMALGVYSzp0HS0cG8yPsvGPFm1z7cLaiQPsTvBnrkHy94alaiFiqEi81r7QBFFJDFbvE6kp49hKM7U+10YFVpJ2gVQ7zfEHiuccFmY0xgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX2d6CA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX2d6CA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85A1C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786234833;
	bh=LRv7CePmvDQpOWX+c4R9Wbpj0SNFEJ3eQkDuMdhJbj8=;
	h=To:Subject:From:Date:From;
	b=AX2d6CA/7tJCVj9DcZq6o9FxVJey60hzARVhJu3yjbyo5bHTfdJ5tYym/VBSYCYUA
	 uprJWKSc0ylnevot4OgfVYwfrNLv0yvvlKmad6GA3BR/OQs58Y2RhIcy+VTUY8WmsY
	 5m3hV2tuUdQSOwsVGEDieFPQN/QYJtOb2T5vSfcirkQ5qaiVa41TF694Kkt/1gtLYh
	 pNBrbWSWOFnMSEC1ER2ig5P5gIBbJQ/KzFiTdG0O+G4B4fWLNLO1pfCbSQtZmHXpOI
	 VFiNo3pxY3aWlipasC5Jafl9ofohArEcQfiAxYCplxMt2rgxn2YcQ2rG/+P4QDlkN/
	 tZ5n1QnAbriPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B422DC5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623483371.4052.5666196765426884319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f637dac10ede316c8d77f6e389ef1ad71ab73e82922dc0278bf09f97961dd3f1
Date: Sun, 09 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786234833
