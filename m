Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F9613DDAE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751184596; cv=none; b=fVYwSCmTIpbYDAA06oLqHz27TryTfXahRG/LJAwiX76Xhnmhcfrl0XzjaepWDf0/zInOGxddYYYTeuaYPOzcSuNfyxl+ac0VVNKoPGESJY1YrPo6QnqDCxCO9lCm+1mavUDn/h39fC5/K3ugUnKYP80rao/G1pNhsfoGiprDCXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751184596; c=relaxed/simple;
	bh=G2H+nzV/8NAOa4VsQT0y+bNPYkS9ckvDvQsPJqU8wIo=;
	h=To:Subject:From:Message-Id:Date; b=lvE9t6n3UgpYxAPvC7OTDtTJmXzPt80VkkQiKjM/t6TrLaaqbcaToU664wY2rZ/3KLRzqna8fBDQHvuqDwpjxAwQJzClcCXys0Lnyr8AW1RjSPxaVGglfd3Tc6qlmNj3DIH838n317q/uQ148xF3OQYEyML/6BUPlN0cmI7k9Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfUqJcGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfUqJcGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4978C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751184593;
	bh=G2H+nzV/8NAOa4VsQT0y+bNPYkS9ckvDvQsPJqU8wIo=;
	h=To:Subject:From:Date:From;
	b=bfUqJcGI8fIy+le8Nif82TWQauiDwywlcnppm+uH+nq4tNswitbJ1CpHxFTBFGt0q
	 ObkVKTYy9o0xGxGZ5mBBfQeyAZtcecaaMNFORiNkTCxJTY5qYB8DLXbX9GQ0JAK2r5
	 Bfui2efudD39fLD8Flmjn7yosNpLPKgr6DKut+lIexpa443MVAOCo1zp47O6I9fcEb
	 fu5eh+2hcjDcQUuieeiPFLnNOz9Q8mTARGjAnB8LGUVKbyTG8lJg0dtZuTNrI1GdG+
	 Wr5rBJGU8SJgHn3CkrXGaWKN3kvcBEr1jhbu4sHQwSMmxEnN8If+hzHMZ/GohGykOJ
	 OhedH5jJMmaCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91993C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118459357.13203.9246792169089143801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab96fef92d6a6a501272858b2bff7bf52d3efc680f1ff36777d700446215f4a9
Date: Sun, 29 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751184593
