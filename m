Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006AF225DD
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707299297; cv=none; b=FJXKpjHn5jrmbXZMmhIlX9a8ChKLRFreQhOP9xzG+Hok6bRHN9YAmcJvLcS0yL3J2OL3Q8/KtVoRdh0waEfnRBHfZfp14yRFxbJlPxPI6XP4EwauVWPkJFFBFgm/ERWsnAnlwD52AnKd7LtShD57oMQ0MTC5x8/2p6ulwGVe3ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707299297; c=relaxed/simple;
	bh=bPHvUSFblX2j0sU7yxtHfbr+Q+MfJMa5Q0KIABrmfoE=;
	h=To:Subject:From:Message-Id:Date; b=UgK019rbLkoWnt30GnBJR/aQ4ZECwrl07QPcM3j0cZjKK3cyzmiwVbwwA8kjKBXX2pXb7b6IumMZKbYirwkLU46RpG8N+IMRZU4FIr8s3djscz6dnULNfVeSYryKbyj88OOODuNtDZn1OwC+/Ci7DrrawG8Ck39fEHqbE+MJBOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBbI3dX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBbI3dX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D84C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707299296;
	bh=bPHvUSFblX2j0sU7yxtHfbr+Q+MfJMa5Q0KIABrmfoE=;
	h=To:Subject:From:Date:From;
	b=LBbI3dX0tQM24qmzNMmGabdacktJuXPG/3Uu299FE8XlCKqooIzADdX2hzycV5UBZ
	 gq88UTVotMluwcWnjAmSMOzCacHhKYVyu5wQAPHAgOPCLR6ifgzDk0icuLLeIeg23A
	 SG3lTn+oqs6gI/kY8IWtyyhdkWSanBTKO7iQluu4ui4Pwvjjs33+QfeHc2tXztgzhC
	 7oBXWMm1klGNg7zvh0uJjCUaLMMrZaFnQACuTAfLMLVMCJs02GqjJ5/GjNE2MpC7q0
	 Y3cDyGnvroDh0EKxVOTc6LqORHC7Je7DNhK8t2HSlWZI+YxGye2lmaD50CsYKzL7RR
	 04y9MlM7sPALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C16C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729929639.7274.16577638008928782178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36a2e247f2bd507f0e26803cbf94e606228299fb6462a33edc79625184a47e0
Date: Wed, 07 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707299296
