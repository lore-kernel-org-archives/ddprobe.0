Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1363290BA
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783886914; cv=none; b=pT5c3DhA9wKLjtwyGfFKdQewfTEcdynbY2vFy+fhrtFtI6XgcYHsx5navvXTWaIm75vKmSeJKtxAE2ILHaFB7J7CSZIIevnBp1umVTQd/nqRbD6y6u3If8QgUQQhnqekCSJ+2Y/lQAyjmuOv6J8o5VgzUOusUV5Q33Zxq+7nRXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783886914; c=relaxed/simple;
	bh=fEAVXPCLfNozT6T0xq0UUG+O8wOS6awglxo5pk5hiCM=;
	h=To:Subject:From:Message-Id:Date; b=hCyoOjleFVzTlBjDEiI38LtRGKZcTShwwprPBJ2PbpwB+vfW3DrEYNAPjWAfzwjgpCKsmOGKWPtr2jZa7O6eQIOo6NaOc92MpqbT2aZ7H0abm6w3j6Ifew15Lfwjhu9t88zdd14zqx+RUydVVaanOG88y/xm6yqOJUyOYUjs/mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXVAMsBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXVAMsBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3975C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783886913;
	bh=fEAVXPCLfNozT6T0xq0UUG+O8wOS6awglxo5pk5hiCM=;
	h=To:Subject:From:Date:From;
	b=eXVAMsBDv8QmnuyAE+BXfVBz87iwfcR5xbCUlAJOpd4sGZSVotZCYqVzzbrCsA62V
	 OCPELlk6e4Xfy+uWjUIrGH7lD52avErFJJknJzspaUTCdW9Ddx57TnfspF9nNDPSQw
	 hw0UyDhqsidfUwSknNlvMfWvGsznH1mv4etepNdGz44EEQk7bnouKU9gkf8ZbmGQov
	 /H03E2/acRi1CTjnRUyStXe2xJzccJKp1mgPggRmI7Ahp0PKiQMD6Rxtx6bp2HBmoK
	 ge1fn5buuMCT8QqHdMxkPkSRVjS3P1ZFyeblUxG+DftfPH1iLFm6WU+C0iIxp/6Huy
	 fIuuEYKHxxlew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04FC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388691367.17125.6150042220204142731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f2673ace33ff4834d258d24b0e82e7b45e78d9064ec093b80a088371da9591
Date: Sun, 12 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783886913
