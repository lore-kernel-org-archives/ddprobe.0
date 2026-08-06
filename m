Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4870923BD1B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785984034; cv=none; b=Ifr/wnmkTwY/52eMQUAMrhu4nFxY+SSV0IdvQ6MTPq4Vo6/CVDXoU9qw6a4GcWn0uUc/9S+hkBKs2KB6CkMgo2aS3EMIYXkjqlPf/F/IqQrSpqFGFYin8cGmjLfLLMJfCmjSW3pAGXV9UKGcT9iIUXcHQl9Z8Sgpq8KeuUmP2sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785984034; c=relaxed/simple;
	bh=Hn9wI+qgKdYwMHpLT/geqT4gl8HnUldKg9MG+8QFPSM=;
	h=To:Subject:From:Message-Id:Date; b=n3h9AmeMgKsCqCH0obo07nYvxmmS+kYt93zQ+Yd/tT2bx5dhSvVPQOu+82H/874vjBkEW0vMBuI2fisdh9GRSkdR0f/hRY9vScfv8sVt8RUJC4aZMgLTbk57jsQ3MYoaIF9SvN1FAN1b7ORdwX7y56CmdEesGAXrxZbZFfZN3j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQvAAcy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQvAAcy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A2FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785984033;
	bh=Hn9wI+qgKdYwMHpLT/geqT4gl8HnUldKg9MG+8QFPSM=;
	h=To:Subject:From:Date:From;
	b=ZQvAAcy/R1Aqv+mCJp1s+jrw5SZ5eDSgBV+iDlegH34Uj9LMIip770AMl7wV6uDMH
	 ZR7pzEyZXUaQRIUiLSChlU/j1yAx2FaatIe1jA5MnawmW9Mrtz5DUn7AIAoOBfLYKA
	 HdsQf3UfphaqeJldcfhU3UPBIQeuci+r7xno1oDFfB0ZqE9XPWcCX3HZi2PgIulBOS
	 o/Xw2HSuM8cylW0zAMI8oBf2R64vAfoAFGsrSShq8+S4YUxQbNNa+ZfSJGAPYV1hs9
	 tHcofmloFQEfpp9k+3EleJ1+5F6YV/ctFiEB3oITaHi8oTgD52/jdPMAKzn7/wMtaB
	 ZgWxS8USBImTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC661C55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598403369.3670.11626618463756397598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75af437d709f8af93b1d780c406a86f45105545d61ce2238d0c7dc09c6334d88
Date: Thu, 06 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785984033
