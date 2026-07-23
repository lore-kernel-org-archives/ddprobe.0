Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CB8459AD1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784805034; cv=none; b=f9GgZisel1S3jIaQJxUsTWB4Yi+m2HBO93ajjUquRNusLX7kNoNdQTjHrjwY5OImBOv669Z6j+qQyWKBNz+fSMj+HPqe21to3ugn+MHsfj1evvmamDO2sdcm9qNPuwluvSUOQ6y6NnIVzOR6Z8qLP3GtiZpb7TaI3Zv/YnSdSxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784805034; c=relaxed/simple;
	bh=Z6a9eTpEv32R+zsmAOCZK4SQ4f55htXao1E9fiLbwWo=;
	h=To:Subject:From:Message-Id:Date; b=ZQbMGTZs6pwuiFftJbhOYLe9bIcb0BhnuXlMVpNoj1DVN0MH2T3CN1koAD9kWGOYjKWxtXI80+lqh+hzoesx92Eo+zX+JZ7m6qg41VuyTbw9wotjyTiLNB0VzbbtoO014kZlr1ZcPzpwvfki46M0bwWP0W9EpXSV8DDuyJYMQTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBIArymU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBIArymU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED066C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784805034;
	bh=Z6a9eTpEv32R+zsmAOCZK4SQ4f55htXao1E9fiLbwWo=;
	h=To:Subject:From:Date:From;
	b=rBIArymUfkjY4ScmGty0P7GCqfB7A+U0FEZMJij3y5XVeL/dyFqpvX8M+lQ/LSBki
	 fQ5biYaUrEsYHXR0JVRsi8RSiJ0WDWOxytjMrcVX/F/p95saKSW5+yjk4AdoHJb7kR
	 /fPmbf9SQPqsEu4/x7N09j1vzajeaWMDyKYPxHw6xztGQuPFppFcW2BPpKfcjofhbq
	 N7bJmMI47+YeSr8WyQSekC7NHsxLfDV9iE8nOPQGT3ymkNAGjDUvA21mfXTKsz5Cx8
	 208ny+tZiYNYDGnx71rblkdvPHQkL2iTwWoO4F7Ze5p1JVSj25SyEYeT9KSiwVU8Ie
	 EKAaD8N6CTCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E59C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480503381.11025.6182557426404786744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97913d5bf1391c907da75949c853b9002555a1798b56e410687ba7a415c20f2a
Date: Thu, 23 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784805033
