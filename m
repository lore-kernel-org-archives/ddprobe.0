Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F83C2DCBE0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747963794; cv=none; b=s4CJdSAU2LsS6tiaSgIQhZUDOa/XGg4CPKEmWVGckBJtsRT8DUI+9GX4BJmntLf0ChQLl7v8l2IWqZj1yyNiwyoPIvumY2+oicZlBmDwcVbiRNegTbJd4v5SQDdJaP3MNBsjuFlpMWkjdoOIj5cCiCBqPzxyKX1v2Qa7QZv/9S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747963794; c=relaxed/simple;
	bh=exeodu9TeiQ60xW14iVyLQoyNozbfWYJVLi1iXrogLM=;
	h=To:Subject:From:Message-Id:Date; b=qax1xGHYglQ/emBTzJHKLRTBkspnWpGQ87ERjMhYjXyc/nrpLHYzstIUHmspm5r6i3q62a6TZ4ptV9jf2gr352xBpO9HKnwnEMvNWbZ/zoGvvooT04gAbPRqRiyjJzieHqb3DqfnFCY2M4vg804H/ry4M5j5ORBLCD/K+fzAE0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j61Peze/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j61Peze/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747963793;
	bh=exeodu9TeiQ60xW14iVyLQoyNozbfWYJVLi1iXrogLM=;
	h=To:Subject:From:Date:From;
	b=j61Peze/PbrP5WcTgv1oWyJtRrcTiR79rcLbmTF6OGRk2s6yzSSrwqDFqhfmdDZzQ
	 9YM7zFVAYZ4rh4F0falcZR4w7Pyut08tdE3uhT38UNnTm7ddFZcZbAlPk9WS1ABaYx
	 cxqn9Ow0eiInu3zTy+/3X9+VPgX76UqnB7nvUNfZJyXd32h9S/LDFk59PPQ9nfUmEM
	 /MtLQJl/NyZzpbBSlCmQC5XUbjglsL2F644gHkuc631Kt5zEPsiy7Vl6oXGynC7jNH
	 UcMwmnkOJmLvRxYUCzf4ugAEkvdAYwXcOnVq76hj7rwxi/7Z4xCU658UzDgavAwX8c
	 92bnRTiyGp4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A9EC54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796379357.4873.7320124209769308658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb40eac39f34745d3c5b08b98fe1708f9ba93be5a691c61f024d019e39d70f0
Date: Fri, 23 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747963793
