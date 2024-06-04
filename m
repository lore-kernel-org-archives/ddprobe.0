Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678BB142621
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717466123; cv=none; b=ZZUs7x49/kvqD5eFp0/2n0A5mqyg/5xgyeazmRHUYk9Uti5FPO9fMf8cInqS5TnEbViPEf98NkdA05swoxSDIXBdYPwzU48PJUV/oEdXcNlIjTO82D8UEkvXUGgoz0Ubmnpc/bIom2xebM7JsMJLVyYWrL8SpMBrl+tX9CF46ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717466123; c=relaxed/simple;
	bh=9ASTfOKX2XI+lq+HKa2V5JLfhUQTdzc/5h5jMmvRFxU=;
	h=To:Subject:From:Message-Id:Date; b=WKLxGwkgNAlgJlIjt/rRfNEP/CL4dXv9Yky5MOSk/GHaS5iRE21GnaiM8499/1xY510KN0ZOyrwBxZ1gjc3dpX/JHd2gKOFeh5udbvj1Miu0jcBnmVt0tK4q6QsD4CeimxRcTq5j8U65m/ihC5RZ+Y4naYWz7x2A58SfY8YU2/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzpn5BMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzpn5BMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E57A3C32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717466122;
	bh=9ASTfOKX2XI+lq+HKa2V5JLfhUQTdzc/5h5jMmvRFxU=;
	h=To:Subject:From:Date:From;
	b=Rzpn5BMq4meq2MdqhXLuAfSSs6mpSPpS03Ra/xTdCk5WpNgGPdY3pRHIJzbec9x05
	 9/2WrPXl5pAQPWcx6csSwiLSa0a3RvSw66PSL8VMaFrj0BV3I9OQ2D6mdFKuQ1yw25
	 IJJx85XmQiUHB62gL+BGZ5M6rfRhrQyeElhPitOva1Q+UqOoSoioGMDCX4a68MfoFr
	 Rb1R+EKBxLqNi4YS7JIBiajrvpRKiUo1NeT1QodxlyO1EmD0La3YU+wGbH+ORJJL1a
	 8uJJ+HCA6Fnfd+40HAqZ6xfl4JmqDzsx33EK2UkspDNFBICgMCme3WeoGPCxuGDfYO
	 cDkYr7JRtl5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC91C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746612282.2885.9328295557618644810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5871453b635788e7d359832b3705e48bceac2ee41699fe3280842f2b9b7718
Date: Tue, 04 Jun 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717466122
