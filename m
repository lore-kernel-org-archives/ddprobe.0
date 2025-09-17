Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F18032D5C0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758101394; cv=none; b=XOAEXEq8MotNxTVU8VzxJCt8uSWi+PqZBpZg8e4WbHfVwvAyl4eG7LBhy99H5UcaYIYVbN3Niicn9YvvExw4hPQZD2B++LJ7AEW25Ec56xMyAz73iQCDx+4tzmygGmGTNXIJWTHuRz+SaFCs+d4x4Nq6P27pK+cHcH6UBaktzSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758101394; c=relaxed/simple;
	bh=38VaS5T6rO7RTEqyGkigTjI6hDNchXgnKXrqoU7njoo=;
	h=To:Subject:From:Message-Id:Date; b=lRRN3XbKIvFD9EB1cA4cC63R0A8abau3rPcQcbyiMdTc6kENVy42iw3S2mdMbjOfUyYN28PwxdCAquF6W204Fcn3NvdfymwSj9cBRXRNRBim3pXS2PIY3kLeUwe7yKxthv63zoLJjS7tl2LrsKEobw1whomGrWWkDAdZAynYbuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui2zeeAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui2zeeAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758101393;
	bh=38VaS5T6rO7RTEqyGkigTjI6hDNchXgnKXrqoU7njoo=;
	h=To:Subject:From:Date:From;
	b=Ui2zeeAb0r1VixlutgAmdvPS0HYe4r1DgKRoMW8g/ItyTaTPbqq47Na49UnYlQ88P
	 XYb91fyUHJo3UdsUCrbiJUEaRhqLviR/QWX0WBZ73GIoRKL2lygGM9oFF9NrJzNMNt
	 aATUlEAypRTG73FJQxrdtWsSnp4hiE3gn80BrMfn/rLISRYbEA39ro3hdhKc6kFJxA
	 nUSYnrzksN1a+s3fvhqzfuXWoGaGYaoJ3jsKzQwGGhE4xo9jjVof36Ogz4Oc0KAl3p
	 EYW5FlY8NwzPmgrnASCLfZnbiPMiRHvv7FB10F35qHcHXmmIU8H7vQOyc0MuaDtpIf
	 9pFTUyKRr7Y5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D9CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810139360.17331.5320231158778455723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023e28f13cf4f5f3352375a5dd1e49cf3d36dc365b4ec1429e7d124300f77d82
Date: Wed, 17 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758101393
