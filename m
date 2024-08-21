Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA96179957
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724277354; cv=none; b=Fmyvp7AWu5JSYhWVg+xrnGSGS8ov9Wb/GvWwE/tPH6XjfEzoCYJFXM9s9qRsx22aF3gCbuY1xPQcUZEbvoFWsv73xB6V7u8RF6UHQfEp7ap/bmuHhc4ImsSh4kKEuXQvlYakTIzIJsdtzUizSY8Yt+sjkQZCwZ6ikKnCkn36aqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724277354; c=relaxed/simple;
	bh=eiOk3D6nnNBbiDxW6/VDsx/ojjMIYh4Zyrdq+suCBYM=;
	h=To:Subject:From:Message-Id:Date; b=loaGxhvzh7zEpBJQv5lii0hcypRZUkNbr/DEy5SUMe2EiqveAqkmk565ZUQC1O1yviXIldciJYg+btVcAUmdqAibqobwzE8pCO4+s0xjxncA27AUorA43OdvJfg1Nwg7aTV3pMxafLLLJ7MXsIW8AvBU4dXXYhoirjWaMZyiI7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsmuDqkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsmuDqkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC2C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724277353;
	bh=eiOk3D6nnNBbiDxW6/VDsx/ojjMIYh4Zyrdq+suCBYM=;
	h=To:Subject:From:Date:From;
	b=XsmuDqknIs39rwSo9BSxSbxEVTejL++blInCvrcZABz6hOd0iG1HD7rvustTr2dBU
	 B5GLfAxAcUs3P5aMz7zkXicZI77x4J9XytozWHA0HZ3sAxXQDAEz65bF9+/SvoG8bA
	 GIbgKxOQpfXMtdaS+Flb7Qvco0pmzrddRccRfaZB+N63GMGy8Vg0D2jCC1WGqYO2oj
	 yA4xJnAv5yyVmMQd3fuLbazYxhWfCmFQnTGOV/FeCmcaGRNxe1GRLb3LMChLqIPjUl
	 VLFaSnj0Ww+4fnEveBYID/jyeAAAXugU1vYw7V7YdSlGRflyNCDREuj2TaFMrkLPBU
	 peGfIoOnpLtVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0DC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427735358.3120.336806284848331919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769f0b07672d4e56f53b7ee59be80f699e5ca14fb4f02ca433e16bd720802aa5
Date: Wed, 21 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724277353
