Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7BC1BAECC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725038754; cv=none; b=q8eTlLqznKJUBcY+HNeI1c1zrhTSPMD9QJbia/Vr1xf7qJTCXqwoO1vY9xaQdtXcwLyGq7my+kqfHQ2HrwCtTNjx3RFGpRHhfYx1SQEU5fOelbxDa+HI0sgazE5MfOKBNcYqP1sTXhApGpiyOII9DaJP6BphjsFFsWR2KJxbEkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725038754; c=relaxed/simple;
	bh=M8aiJ5LT5Kp7FPwZMwGuNU3mFeOTbYqs0WxiLDYavnI=;
	h=To:Subject:From:Message-Id:Date; b=opO6wErCELA0UZJJF3d3bo62RgNFGSd3SQCSuYGYQahBRENhmANAK2np1lg0Rhf+X1gnnntZsa6GuNwdJ22Kkxv0a4gl1pN/1S6gwFsjB6KPEw6oiugebTGqDPPMkJxvD36niKNrWbudLuVCh0N+60a0sg3EfgYdRBcgk9xhzyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/ipu/60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/ipu/60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2980C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725038753;
	bh=M8aiJ5LT5Kp7FPwZMwGuNU3mFeOTbYqs0WxiLDYavnI=;
	h=To:Subject:From:Date:From;
	b=b/ipu/60hZKrA4fskePqLhC2hzBeGwBr3uvjpsWw86yWRzMMU0FZdKtDAymuALwyC
	 l71Nt3clXvclXa+l8Dk3a6vc8q6WUj+4N+absrfTigwhMbXflr16K3rdIMpWd2uTkB
	 +voe2i2RBE35z7vNp6uWnfeIpLrLPgKPl8Ib9ZP/1XTw0dD7vDis5y+hw0CWgLzmIX
	 wc3VqD3PVJcD4lc8Sf8if7f7fvR56k2sH2W1YtLvlujQLPENuj7tPgO9BcULrKUblW
	 LfacSOnQDny83gDErHHM3a6MdpTGx+bQi5wp82Kuj09jXaurFElyttwjTySYnIe5R/
	 uJKa/FTKKn1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93203CA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503875358.10434.2605389553661764654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9037efbe1551a22053b807276bc5f23d7d7acd38c8f31f9bab0e672be3be9d26
Date: Fri, 30 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725038753
