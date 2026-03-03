Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4232EE611
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772577294; cv=none; b=uRHlR9vxAsUo76vwi8uz2Vs5ctEYhDCK3LAbH1hBIf99ZatrajwLIpYMRAMf7VXwRcyyOj6/5Gyp9AgDj9H1O5MU1cgrcoCgqXVnbw2+UaKDiUg/wlyapci40FdMbOlECVGAZjVHC+TZPAZQkmniXHSfRq9EBOKCn2buoq/ANyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772577294; c=relaxed/simple;
	bh=79Nd4hWB+G2bw+xFP6WEKD5M/3tsZ85WkTPACbFg1TA=;
	h=To:Subject:From:Message-Id:Date; b=k//Kb70VAlEggqn1NAFNNQXRZo2drrXjioo11VEaRMiKbOzqzM7/9hsHc9oor7HyU+ljm6NuGz3w8BfQHqqVVtdHsFc5LMf329wOd1MH8XiY/AYy/ifwvi5I2tXJb6b+5wQHJ+iJ8xGcfOXRePl0r7gWwxI+GgnEqupzwOPlkFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDx7DaEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDx7DaEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC4CC2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772577293;
	bh=79Nd4hWB+G2bw+xFP6WEKD5M/3tsZ85WkTPACbFg1TA=;
	h=To:Subject:From:Date:From;
	b=nDx7DaEMuOGweUn9QZ8Ac0KlADrwQ3Nur9XtSWoqUrcXu8ZkT+isijglYvekLKjL+
	 +c7yT4M+2scVUelUtZY0GfI+aZQ+NX82JnWU5GhbWdkBr8RhTnSFDJzQdHU4E9FbtB
	 +vPktrefzAzcjSl2uO22A8qTJF1Q8r2J2jrXeeEGq+dn58J8qLHFVlHwN8XpuFnKo1
	 PrdDHfm8QNhid20MAbw0zi6MBLdcAmq9Vbf6VGDVlGPHdnyktkby5wEwkSBMWE9PIu
	 KGwAej4Z/q0FvIQ7hrhym58Ceq6oJpIONbXWd+4bxi6HuPa/dli3Rmmz3qMcucvaf8
	 skrO8xMQUzp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0AFEDEBFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257729362.24039.8983965000069859665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5481313ad4a7d7183dc0977f931f879e1e42472c53c2d605626444db31d880
Date: Tue, 03 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772577293
