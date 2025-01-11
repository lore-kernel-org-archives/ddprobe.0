Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339FA1494CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736627154; cv=none; b=bd7DHdzEgnysibeLN7+Xuo8wElz056Dbh6yI56+ibzZO5VfPFHpeuYp0gEO8K3fvQx9QlP63Yc7XgiLPsr70CqcVACBZpSLrRcOZpsJJEYd4SZERbH/6f1z2jd1HUoa3BfDlBqwfKDH+IHYvd0+mBKX7BIKSMTv/MFhvdbqdCyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736627154; c=relaxed/simple;
	bh=ehZeV3cn1bCrU87h37LUa8za6b4vEEfe6k04IHQvlr8=;
	h=To:Subject:From:Message-Id:Date; b=bV30doBtENlkRH94P+cKgMbem+L3dtvsyTGIVqHfX6fC/5z+8bdnvss/OS5xv1mw6qXU7sasCyzTUKuTevg5oUElOiHRYNS42Ab9UnhmhSuhWFRVentSiQYASPslY3Y/OKHXurbBHXfIUTVY1EtAvsvaS4Wg+naH5/6xoA9POyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivFC6F8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivFC6F8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C78C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736627153;
	bh=ehZeV3cn1bCrU87h37LUa8za6b4vEEfe6k04IHQvlr8=;
	h=To:Subject:From:Date:From;
	b=ivFC6F8NWY+hfrvPBXOK+1L0CbIVgB/+ICocMBhFGsVz8pORum7EA7nm8tBZjqPHe
	 8NIeqA6Jjmsqw7sUXtraPe9McuRRJdMlW4PzveyehsLOkpLa1OwDTTbCSsmeCk6Eon
	 iwR/7HoEAniCDQ/NHuvrU515qBoR9shYqs2BarJBNzKxqZ/idLfjVMvdQb4qf2YVVr
	 Nn2xTZ/TbaKfvjsisFbbi/sZO0gg2q0i6veUXua61h8mRuBmLoiu+jnVZlojq0DLk+
	 VAcO0saSMFqtH5FXE3R2z5VSe9nNa/YdrnsGwPq2b8c0xt9WXrdmDzSbZHZP7VV7pW
	 /FgSEv4GBZYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97222E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662715361.21973.3254304762707595732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0963a299af549f3a8af557338b94eac8c6f23c5751bbfca4f1555f8647c72a
Date: Sat, 11 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736627153
