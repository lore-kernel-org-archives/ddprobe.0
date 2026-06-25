Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC073EB809
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782409654; cv=none; b=cBwsu16YwdSsH5nHVGAtGVazSWj7+mRMj1tfvkQ+nIZE1cZk5McRAXqc6M+fc0kLKLBARswk82QZ8dYCj2+fj1ySOM7/b/jYIsJaD8stcN+P/u/tCiCpW1PTk9jHqCEbDSUmLhQZ7EMwJKYaaj9gWXrfKj0xh9bYjw2QFP6WSHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782409654; c=relaxed/simple;
	bh=S48flhEnCJ9+qsTGLhvEAT6iE63SQ+rYSjtu4T22GNE=;
	h=To:Subject:From:Message-Id:Date; b=qOfxAUbVRYlMRO4+9UwJPH+cB+o2VpgyeSzAtof3mRI86/RvqkPJWS+hCp9WcjkHXVp1AoLtj/RvIZRvpYjqg0sBryJiRYBcdV7Xj825CwE7Ao7akItRpy0gofQouO5Gx3cFtZoJjqNe9dgaztXhvi3yLBNaGtYRexabCcSfZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAZCYmKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAZCYmKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58CAC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782409653;
	bh=S48flhEnCJ9+qsTGLhvEAT6iE63SQ+rYSjtu4T22GNE=;
	h=To:Subject:From:Date:From;
	b=jAZCYmKFufGBw7cyj5Yfay3lvCJgPZ+HRl0h68PMXmdujJtzcomJn+Rhsww0I6SXi
	 bgyQSCwI5BAgvA3bDZ9pYuLYTvvDkzIqSN1EKj0gWquhH053uqFvXdSEYc7KrEl9oQ
	 pD/mW4G5s61VfOnI5yN6A1bpyb3G2rLVzoaEcFROOxi4qP9bUUIte53oypQ6JkfAU0
	 1YITE5NvjM1NIyxXgwT9gZTgJaSCtMI17Ejj0p9JjU2RzYo2rJ72uojXF0Tpd39WJP
	 mPPlDEvaJML/Fm87fRjg2gxHO+6N1VB1Zifseaimr2irfv2wFaO0FzdGiFVVkJKusP
	 weQEA7lUdrsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E4FCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240965372.26400.2997412516119631757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e119d8bbe4095534b01a5dc9e91c4bb3f811aa66b25e0083a838deb749ee0ff
Date: Thu, 25 Jun 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782409653
