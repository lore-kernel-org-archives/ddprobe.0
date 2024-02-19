Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC005524B8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708375696; cv=none; b=QLKXGLBeGWF2wsoN2TOCNrMQUXl0qu+eEgD4cMIPJRzvNeZ9tH7rfCi2ldKSg7NKIAcHF66z0FzmmYOK18tx2sLlRbbgZEMybL742x2OjHPl3JsbL36+0nMmJE33DrnT0nhyeyHM8I1ObuDrcVgO9p1+qLiMmx/J1eN28rX1bAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708375696; c=relaxed/simple;
	bh=zfZ9XzrVSbA591xf4xSl3T17EI+ZWYp3b3lOK4vnI1g=;
	h=To:Subject:From:Message-Id:Date; b=Gl9pYE+LS7TpJbTvyP7sxRPqry/1WzlrR2QxmVqfv/N1ML4hrQUBg+wfVizVAT+6VvHBEJkniMlqTq0z0+CV6Vg3Knno4H1K53ljFlV2i7bfj8Fsv0Fg+0G9nyHI2V2+t4u+yNC7c4sqwGBQjvw9zqTAZSfYzNFRennjC9iHolU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2m47bi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2m47bi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76880C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708375696;
	bh=zfZ9XzrVSbA591xf4xSl3T17EI+ZWYp3b3lOK4vnI1g=;
	h=To:Subject:From:Date:From;
	b=a2m47bi7P6JbSWkHwi5nJQa+9rmViLUEw9mC/6XD7gM+0ES5JqvAQoe1w7C4uMZ9y
	 N5FkLPvTjy7iSiFL/DNwUJtWVn1tmgmsgd2rkikAaryKeA6p2AXGnMn63kbay1jffZ
	 Ptxa9QPMZqrJlDfkguTbXjTUTnMM0w498k12GnYHWSSQbxQhlh3xDl4LsRXDJDW+nB
	 Oa3CS9ciwZXcJxJUui4HCB0BReXaGyRejH1BRQ1/3827FLSbhYIu2OjuJ8w8B5KARA
	 5Pcb/HLtJ23EZV1V0aWv7q/0JBh8TSdaGVUA0ilPnJFGL+IeLDOZaE2LFmee9NktwD
	 EqpXtN6p9/VFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB89C48BF8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170837569638.19481.7203161263072937189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd43f42b7ea1f75202c588900b14715ddad227c75af16c92926a9d5e29b5c82a
Date: Mon, 19 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708375696
