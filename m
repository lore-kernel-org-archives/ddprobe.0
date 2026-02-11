Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C9339872
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770819294; cv=none; b=NOragC0FBHd23nQ+Rysnpa+gqzf2Q7jUQqSagbxocfepLrAdyCJtgfuC8kMT9raNFnjXnVBrZ3lBda+r4TMQwgUy6HgucdJr5s73qKir8qyzWjeJr4g96SEn+Sv2CvUj4qCZJFhQiPZCnX/nkhD52apNRmxlJW5j3qCmM1X9LuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770819294; c=relaxed/simple;
	bh=WUUafen9wWwv3unxwC/dFSuswwleyoEJkMK7p9WQSyc=;
	h=To:Subject:From:Message-Id:Date; b=OkFLkajWq+FVpaqc02QfHSi+bpb8SR5HWlK/3Qqs0X4bDIOavff77beUF4nvI17123Fi5i2W8ChJoKWTxXJJpj23kTC23tCsECOndxo2G7nK7Pmd6MOP+5vWibfF9Gm8C8IkmvPzCOqsHGrCDpIskkP8nYCLu4XEfieQz6PjN3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMMz7gpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMMz7gpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C15C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770819293;
	bh=WUUafen9wWwv3unxwC/dFSuswwleyoEJkMK7p9WQSyc=;
	h=To:Subject:From:Date:From;
	b=AMMz7gpCIXVCDm601fyFgyP3ggGDzZdgb6YkdwpPgeGTQcm0wh3CLNaOkXdWIw64B
	 5XQa1OKeZw9Cf7Zc5AEHEc7bfMRRWzTeVehqjqtPl5QBai5n2REa6j7rYVWLWhPIWz
	 8f9w4nfCMWlDIl3Lh9xU/CP/zDG1azrNpPB2M1lsA1RlhEoHt8DG/aN1uuCdUA//vY
	 96OSbM5vp6W7SfFs7gRAXnr4rDIUyrZyJIymyB9LNX4TF1v+W7QdXzNOrze6fwvb53
	 Ee5yOw3htf61ZdJvCuevf/E0HTH4gqWN5ANEIh1P8Q/C8kEm6R4E7O1HZWpcSCzaL7
	 U7Z7cBecYqX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901DE9E30F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081929366.26072.14567162498970859642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9107e9134acb5c6ce2c0861543fb3279f462f0e26591da4b9281ee2c8422045
Date: Wed, 11 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770819293
