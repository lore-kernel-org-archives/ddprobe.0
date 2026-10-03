Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC28157A5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791014434; cv=none; b=mM+IYJFXOswPyDcY1FL4/Un6InTHpWYZBvhizSh41VOJZ5ScnYLBpRQmdLBum3MyIQjBHIb07rpcwE16cooGwRu7g76UoVXniwpwauPTxr+A13/YhMN1rOoCiqW3NN0uTiaFBjYdeLKRmxsV4E4UfudzsslPRxjZuvmhRPpTERg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791014434; c=relaxed/simple;
	bh=N0MuQGhrNam6g6adsGoWWD7qqw2PkL1lrDso4thitSM=;
	h=To:Subject:From:Message-Id:Date; b=kjjoAWhx2wOBEH3wioL+a4U2T8nSsEBtEVrbDg4YPaQ4cLGt78K7YfB4bRd6evy3Fgc0vTt6ES8lC5F6faEdwhsXuNXWyDDUJbmoCjwIf7U2eriR5RSlPtAgypYz1ZiHU7AfD1UuBuMiedmoCk57vQV6GJ6KUtoQysfrG2nx0/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spCDnDhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spCDnDhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D80C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791014433;
	bh=N0MuQGhrNam6g6adsGoWWD7qqw2PkL1lrDso4thitSM=;
	h=To:Subject:From:Date:From;
	b=spCDnDhCm5mcGQlUMXGHhpMqJdq77xsZpZGJeS6AGbkSOnPgCSjwWg3b4iGWwxPuo
	 62iZBXFA451bAES5vDDDpagyo42lnEPci/Vj+/qBsoJt6alzFYlQe8FP9X2x4598f8
	 MLzWGI6iHymU8tQGe4uyzlPp20pbEt2G/Z7ZFIuOmLKGr/W/Cd/SDgVYX0quE0QqDo
	 kj06zSmlSjX9ka40o2TnvYBxTpA0N4SUC5yG4KjrJDV/RkH5lizizGg3z/hTldnt/g
	 ncGVNI7cHnR4R8DbLz3uPmRLZ7M84wAFUuE41LZWli0ezNhd8YHaXZYQCziQbol/21
	 X8HrCuRXyty1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE5CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101443368.3924.11631484350810146120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c44110243608599ceb8ed3602ac04d958daf977ce684d73551cd9b717a79ba
Date: Sat, 03 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791014433
