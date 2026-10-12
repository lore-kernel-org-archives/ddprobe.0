Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722213033EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791829834; cv=none; b=Xj3Ixxa5hGNQ6Fg91InacKUrpAh/OINXq7PREcga6nKPAsu9ICIMv+DI1BffpmJcc+YO8+iWg6ZEGEkMhuEiucGvqyuj7E1NDBMVJNUgsWrV7WR3nPlw7fbCaf/2ik4bSU8MLBk/8tHhVL5feAyVsPMsxtt3BNF2GzRzYII0qE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791829834; c=relaxed/simple;
	bh=tWUXkvPfDcarSDvGwGl0o3WfAlJj2NrMDAjLXog8Hjo=;
	h=To:Subject:From:Message-Id:Date; b=HbfTm30crLfZmmaJqCHGKzubsbY80l3woRNbNBbOi9+//Zdpi7S58IK2uz+6q8EXOQ6Sjkyo1rMnNg203fQ2Q8fU3z/TXAkAB1izUY/i9razuhK+UcZVsqWyAAu7SG89pkSJ6GeXJpd/I/a7NUSA0a7EQrRMQxHZAuiIf9tuslk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ebn4RbDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ebn4RbDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F0FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791829833;
	bh=tWUXkvPfDcarSDvGwGl0o3WfAlJj2NrMDAjLXog8Hjo=;
	h=To:Subject:From:Date:From;
	b=Ebn4RbDt2mckTizQDXvH+lT68FLTGRMzT45p6DMzd3+ipooQaW3s56wVuLLDApQ9g
	 kqdMQ2e0H+bwQoGXL6vj85AX6VTJK8U3dk+Rnvz40+YJTawLYY9szV67Pemfys9hwr
	 TVI+E7fRDXEqzz7Yvj1Nj5TFgcwnQgXiWTuAcWn6mgsmRLWsHXZfCNscrMWT31oE/e
	 tOVGjzrgk0XRNxTIFYrrAMC1m59CMQw6fG2mv+3WNYoJYS8/rQ2h9zeT19A+D+JMzZ
	 dLtyfnWZKWhjLuAfW8zqyhK2k6ROVQheVmbqZsKEgXlJGFDnbfNWHAgIeplkEvZY8c
	 5+x3eVxhQtUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B386ACA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182983372.20276.6755502110226528212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0769317b09f39ca0f6878b10e4df14e7f770dbe839eda8d78311e1ce157bf43c
Date: Mon, 12 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791829833
