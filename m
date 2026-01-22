Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8A42E2F0E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769066034; cv=none; b=MaG4RnnLN4y92FD1TM0dfUq6aNdgt97T5e9rav1w339Od072PPOs+aWd0NCw2Ob0CaKqBCGYtr+KyhuCPs0WNEADB+ico+iHhs0fFJ47ahuHDwieamRZRgTyIgKYeydit4ivuOtUJ9cKwQL3C7dOdPghoiup2KcF9j84rUZpt4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769066034; c=relaxed/simple;
	bh=wWAlxDRsJxscwGYDvOTK9Fk1oCIcdvl4rwyLDHnU6kM=;
	h=To:Subject:From:Message-Id:Date; b=rWZVTUJNe+3UoNJpn7h9Gm8+rb1uQ8d2nLRWTtS41YxEWso8NUqNh7j3GtjEe4dRNQZZ1yKpozOu546sUgTWFiDbDfbXVvEYh07C+4KjfPGTMuZqigmj5eP31GfsmSuAoPt1Z2NE2uftVOkovlnis6ScdMeT1zIVfGuKx25fwbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXgP1EL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXgP1EL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB5C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769066033;
	bh=wWAlxDRsJxscwGYDvOTK9Fk1oCIcdvl4rwyLDHnU6kM=;
	h=To:Subject:From:Date:From;
	b=mXgP1EL7b6SQWmzSxbHN1HaSHTwCENUJq8XgXLq8/9lPCLWowFRpOT3jPqgjl62Pc
	 Jd7TefqC1OOK6W9TC7BpHjC97jo/X8IH1XbBaLO+zgGTQX+pzLXu6fUHkBhYJgbykC
	 dlfhXH54gnyhno6vPVhstx85WtxZ5MdRJlK3s5LsZHa7smBDTPcMqamr+/FGK/DbR4
	 nj5ulIrQT4DoizPbxWlprqLAvl/ZeVrauo/qDbPAlOBkmFA3O350LAqgmF+TGdMlYJ
	 jN9gJCX8a94YhiclhjhEX/MEhuEBTQBfe3fASEHXDcu9SaT3OOyxG7II0dt+RZz/qq
	 KqJmDguG0pXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B0C44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906603358.5088.7474027593522430785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe93fa75ff2c51c7350f7f63b79348415c7ec7902f192b09903bf3cf6b803d20
Date: Thu, 22 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769066033
