Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9604CB23
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720729043; cv=none; b=bsynu2eHWPAjtttDWNQ+QQ3sx+cl1nQgGgo2aacUSUch7d5/CoATvDvaA19n/AlIi2z7Jb2I2W/f6XnfyE+Xv0HyvgH4QyMqq14Lnf18joFJdICP7g2QU/innhcg2RJqadirsMEe3OXn9mTcibBey8aD+5X/qW6+NbhXmtQFkYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720729043; c=relaxed/simple;
	bh=QmBxYqh9IoLHK5Ke0JTc98u/1Anj5NJh5F2mrb6EteY=;
	h=To:Subject:From:Message-Id:Date; b=nCP9OFq+fn2464CTMSLMcUQ2ck4RpoCI9IrV2Sw9Piocxmn9FX1GRyFcnXILbD+inuaum/DpVbOJci8SHydX84cXObEmJKzAaLMV4A5wbQp7cBZOe+Dd5a6yHtkXDXGz+tEkfgc+2eIQXdSeR0LAsglHJxh+6f4RpmyWfRGYeHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmX6g0b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmX6g0b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0149C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720729042;
	bh=QmBxYqh9IoLHK5Ke0JTc98u/1Anj5NJh5F2mrb6EteY=;
	h=To:Subject:From:Date:From;
	b=WmX6g0b2HkE7WlkUb28nZyUrbIDDtu029HTrEWzZhIm9MBU13gF03s6TClkgNBZIu
	 GNaNOnk7STjXqa/VbfE/5TXTovaad7f2WO9IMMM3KVxcBFXCOY/gUqfllIHsxhctpa
	 1R2AypFxRveENXg2n9rWX/OJ0jN7i6SPpcP/iJMIo34JzNlegKCVZOkaC/g4QzuLYc
	 AGZYTV5AozWwqLo8hs85Ic9V4MubA1yu9ZHm+BwvZ09+UERLu7TAqT7x1LhaL1c7kQ
	 HnJjDoy9pUU1QY+/TJOQdE6rb1B413sA5J3wij7jwF1YRlyEkKN1U07LgtVnY84SfD
	 FTA1cVJJ6W6zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53ABC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072904277.2985.4035321929586389007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a32f407368592164eb4b5fa60c7509458e8410beb30e69b690d676e3a8970d
Date: Thu, 11 Jul 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720729042
