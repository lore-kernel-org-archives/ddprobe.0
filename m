Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E52D29A5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751765994; cv=none; b=MFXAx9wLnlwAigom4u/ooJ6cvIgs5qE95PAvrYeHj5wP5ixyJ8qF8abDOdwoyPR4EEsEsPMTPdvLoPHmzs7sgSshA6D7FD4BrNfywMjCmGZ8l3iR3gLTGJPWftt/vGg8Lo1FvXIpcuam9NENEgMddLFKJTQ+9LisHzpZgRT+2wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751765994; c=relaxed/simple;
	bh=HUSYJl1RNKX7KEsXa+UKS9Ed9q+xb/l/G4HhdBFEDQI=;
	h=To:Subject:From:Message-Id:Date; b=BI/KLmT2sBu8RpbKxG3NlgvIoohO3bc/vfACQOF9gnu2pVb7IEss+207rrPGvtkYEV+zSSsFYFE0FKUQD2hWiH5sV6QhxoY53RZuS3dQ/zdKBmY7i8YvoWyceQ7R7Bef+WqS6BTIwH4DdN4RtpP7IQTTCpzQ2juUGYlqCb61NW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqPhuMFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqPhuMFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A9CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751765993;
	bh=HUSYJl1RNKX7KEsXa+UKS9Ed9q+xb/l/G4HhdBFEDQI=;
	h=To:Subject:From:Date:From;
	b=OqPhuMFvEXFIjLDTSwW7qCf5snEOO6EPWXx/LEGMjIpaIV5tFEWSUnDR3ui9Azuwl
	 TV2n7w8JbhwKIsOOzt8iEmJMWlAH75S4hneNDILNBfs2HGEt1OZWMgmH7gup/NdD/k
	 Q+VmwZlLxkBZR9sHa+zLb7JsZux1S19iS6bb2VUnDdiQa13OnE5uEednWFOcCCuTop
	 CEhjQMYJSDjCSMt5iaXHESApLT24BchS5cUJfk+9nNbHg0xZe83lHgWRXoHcHmzcOi
	 EKpexdK/ULnI0/zn5Cs1v58PJvysKyXkzC0STy9D9VfaN9+pwmiA466EN5WU0Agmjt
	 4Nuk0bc2jXW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9380BC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176599357.23773.1944615242102409419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0f9237a64462c45f2f2486e29ac1f6f7c65cbbd68297cbc7d242ef55941c28
Date: Sun, 06 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751765993
