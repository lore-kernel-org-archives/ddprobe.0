Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B81E482C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720262123; cv=none; b=R4Eu02PJUKzuIV+KoR5ZsvdNeYtKBLWSL+4CZOtPMZZkPyaiJ4RIs7qgDP4oxPbGaQ6Qj/69gU86baivEFOGzEaleaK8pB2UCpdIlPqJgz/2CyMtd9P0CvbIm7XnPg4wo1q/lOp2eBZJkFDm2RrfcPMJCpoOootxVKuDbvPHs5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720262123; c=relaxed/simple;
	bh=Rlc49RUr9/fADgWbwwr99areAic/eOa4LOFoFDkwdbM=;
	h=To:Subject:From:Message-Id:Date; b=foqrsVVWcrKZmGfTX4GnA64Jeem0fGQRASs0pfViRcDXqSgcfYWmnRgdN7V9FFFYwxOy+3BHHzN2hbV4TP23NUqbU7Llh0+qsDqt4HKrwgE+7zA45lnWmPzAzq/eDuEe/KCreLgOqXMteN6wI8YbqXF4un+Ldbl6Dt7HmKUeqE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ4S8ghh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ4S8ghh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA80C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720262122;
	bh=Rlc49RUr9/fADgWbwwr99areAic/eOa4LOFoFDkwdbM=;
	h=To:Subject:From:Date:From;
	b=LJ4S8ghhNJBWW0hYZyFQYFvd/vTGhQhXxwNqSbQVXDwotv6tPP6BQv1XATB7ew0Hd
	 igCFzQXVldiKzY9P739PisgUW7xRb9+M+yVUAnNlWvbQAlzwli+8UPMOKNEQQSoH6I
	 s17mUYGsVB6nlfnjZKkNnFAjCaNsu3iRq+k1r1cImMdU+IFwIgfF5wCoevkyjkUOo9
	 aH+CmgMt271Mo6TxUK7goYTY/0fBayOxoBCbj6UJ3G0Nd1FsInH4R746024oRfWrSm
	 sWD8Xffu2kHAFOqPglrR3P6DrZUETgw9JrcIbwqvvBh49kP7UZiYM9lSOJanx8nse1
	 yzN5fmRvLQ5Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A72C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026212280.15809.4076490898064518214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fb0e09905a4883c4bf87ad1bd9c3b08d12a99b0f4887e81ffa3d8479a2c476
Date: Sat, 06 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720262122
