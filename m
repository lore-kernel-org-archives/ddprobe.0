Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479AC1C9B97
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743175194; cv=none; b=Rh3JX57rZtNXar+s+lJciHdQTTRMp4ULKJdE0rZNmIDRnSHNz1sOPU3gW6LVCl5zF4M/StZ/m9G4tP3W0s0BrtR0bMFG/sFu4hVOoGSTNfCJgl3fXHdPXsqpGM8Dxw+xSxKUFubc9FBv3hQ1y93ZUgNmUOlxSQP/nJCw79qasPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743175194; c=relaxed/simple;
	bh=Cxnd3ByKIGJickouXpHbkTs+1WI6azfw0Hrgjt4GqAI=;
	h=To:Subject:From:Message-Id:Date; b=YfIfabaqHM6jLahVf1sVwRovlsngUeGNL/ddeMILBACzMmJUrr249ujFKzvLk5x5/eiXqBuRcB3GMAIpWgNWI/39CSVlYzToO+MmzgoRhb5BO9iszkLQ4mrR7bQBphoViLMhrDcNn1cxCkIRR29W4booymeW4IlZIQuAaQP/7ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM7YPc8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM7YPc8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B186FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743175193;
	bh=Cxnd3ByKIGJickouXpHbkTs+1WI6azfw0Hrgjt4GqAI=;
	h=To:Subject:From:Date:From;
	b=mM7YPc8+C3zdHi9Q9yjRdA2cFnwzyMG8wBSqBdUBhv0IW4TeGzkQptXcG9qfMAlaK
	 JUWwKrPvhh/6jv6tS0jyrrzIcQhi4B7urAeKn1IyJzkaSL8j4XKJlXmSlqqlTJP9DT
	 Y17/onTnAyV0G6cEZySU4h1SGXcf4J3BYZZjiNqdNzWZn4dmJiTTT5HJPtdeUgi60B
	 O87XkTzhGODLR9OuaX8KUitptbnEAYby0QMAjrzgs+nqFruRbvnPaqc+Np3UbRQpSr
	 zuyot/T25aeLgXOkmQBWcGgawz8/w3NOswFldbuj12wqeZK7OEGiu+0IccbNA8UaWj
	 K8xsvDJRJuZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACBFC36011
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317519361.9859.12575750973891883707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9a5c3d9c46c33e709f9fa4076829a009546302dfb50dd8054e0009d7766f02
Date: Fri, 28 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743175193
