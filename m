Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D729413220
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596514; cv=none; b=T5sqThVvNNmWr+5TtEZKZjR3BJ8KhzSD/1qsTP8r/BsN/R/OAi2btwOK03QqhbnoX3RfZnrgfKk/yOmTdkw8IidNhK8qTiyKknOZgLwZxeGv5jBNCpGlnBUEHY2oQUlwuy4ieYwu5NOSvoAmxbt2sotn1jF6Q29wL/ma/vWnaRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596514; c=relaxed/simple;
	bh=wb/3AeqWoe5TPNJkFL41oHyfRLF0ItJrrxGe00tPciQ=;
	h=To:Subject:From:Message-Id:Date; b=bMHd/1xTY13XmkVWaqlfeXkbCMq2RrSeTUcdzXH+FIYEM1JypD3ioCQ7+RABfoZLdn2cpPjAupTH8FoYA9Tz3b9PRxV8bffTCQ2nVzRn7bZH/IkRuGZkluqjeviF4iUCAJyatAch+iDyotOiFawQiR5vga2TQRx5ZtyH1ummEGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZvzPQ3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZvzPQ3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C893EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783596513;
	bh=wb/3AeqWoe5TPNJkFL41oHyfRLF0ItJrrxGe00tPciQ=;
	h=To:Subject:From:Date:From;
	b=FZvzPQ3ZSF7ahzqKWY6mJrJN0pIJ7E7ir6qIgPOBpHf+h3r5RDEe9vrzcMe5zAFN3
	 m1p4EUHgDDizS1GjmE/rJFrIbGcdgE7DqcxLX7aDoDr/HLoLBPt3nVcOcmplHiQP/9
	 o8jxRxc6ECFrdWP8AbjLTEQ/g8jNDE1IDpJphlxvyscHuaznhXpOnA+THXEB7kR7wb
	 LiwboDjRP39jQ5Lt1BJ2j/g8B+VFcqjYfEPQkXmor0clg2vAd9J27quXnEnA178HEm
	 3GtJ9lw/Tcy9/KTfuihAujW6iLLufqHiY1n4IE6V0ro5CKIQ7i9fICoAjxPQ6KWhPE
	 r4+GcH4yxzRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88ECC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359651368.16487.10141222671893277563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d0af1554514ce3e4bad0efe9ca43d9662c2c1a19710664fb077628f6239ee8
Date: Thu, 09 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783596513
