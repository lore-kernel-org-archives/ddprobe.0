Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF21F81AB
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731578154; cv=none; b=iT/jrcibpyE63Z2CeTbk6eOa5bhZdPO90Cj6T24UJP9jkbMNFFtvX+SP4JUIigxDxSmxPek5XnD6OWUO0rIqjR0XpvLl58gi9m32scdIn3fKn2wAKP1YuAmF8CkKRBRQSkvz93XYI/AEyl77C5N9jKTB+zbjLTsebawsw3HYSnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731578154; c=relaxed/simple;
	bh=bz9dOWn6ScPnuydg1+e9/bDW8Bmz+MHuO/3eRDQg2TM=;
	h=To:Subject:From:Message-Id:Date; b=ubgEiP0MZNOhPsHMhunZPc1NsnZMcsX7hxFaHsWIRjFBq8qz7jRyrdM4qR7TcnbALI6UjGa8OZkdG4Ej6KI8VxzqvXVdf+tDWAN9cr3/nnCotXM/ffw4DgmmCSVM4hf/wPJz3BL7gtqNFhZj10iSi+zOjB/LvmHpyJgSRIeIGuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpWT/3dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpWT/3dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22B5C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731578153;
	bh=bz9dOWn6ScPnuydg1+e9/bDW8Bmz+MHuO/3eRDQg2TM=;
	h=To:Subject:From:Date:From;
	b=UpWT/3dnpLohi4zlNKiZHd3+pYThGIr5eQA5B5zitwOi5eZ+Fy+ie3XInCauEKFZi
	 opipPPb2jTy+JfqcQeik796pXNIk9/duPBaS8PGPD7sbu4ikWbXaUE2kkbIgUtdDYc
	 gxk0NbGVGgqpZdCOSPwLb5evZQ9SF3wWsHvAfIin33kzEU5zZdGLZIEUh5G4sjX8Gm
	 7clfwxSelBbBBiW53EorwhNXkuIwSjmNAlODsIrFtpDG+INAKupK9vrvHghFW9VBxg
	 0oDr+igNmX36trlboKg9V+1n1f1RvoSpuoiupo7uba7CqWYbI2eLdyYHeUZjq7jCkU
	 Qp4DmjG/lFzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC73D65C66
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173157815364.30263.11858464003900160640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fb5d9a323f9c0a19d93170d8ed1b6f8cc1ca3a554d580ae7d448571d5b84ab
Date: Thu, 14 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731578153
