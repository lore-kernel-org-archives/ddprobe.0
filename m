Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A116CD33
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779498754; cv=none; b=PhG0s+LwuP4Nok7PikTxHrLkgvRmsKQFkvFzGNTVadA3cs6KaQP2JbuD5TP4Nv4W47xgu706B/qlfBEMzMl1n18oG00/GeGOpz36399zPkCnoGnKdbmuDOiiD42PCAkXt0KMqLH6Ezc55wkSaNyJkBmRvT/3FXThpk2G1uUYkUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779498754; c=relaxed/simple;
	bh=R2sCzjrePpOzkFxyWLn7j7LCJ5PsSUMBffJMDsYI8Dc=;
	h=To:Subject:From:Message-Id:Date; b=pITAZNyeP/i+zk+Kkzk4PpyGGvaqbbjRa6fLw1MxJXD94kvjsvWkbcxDlC7x5rkf2TDJXTVSom3HuJgk9nVNZ8moymtLi0ZIQ29rlpR6eQqKNCbXspcr1eRl6ZjRUgI9n4gNJLDmDlxkN5XDxx3JvPLYvGkEH+UHTinfJ9eYUwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmOwPwDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmOwPwDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C366DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779498753;
	bh=R2sCzjrePpOzkFxyWLn7j7LCJ5PsSUMBffJMDsYI8Dc=;
	h=To:Subject:From:Date:From;
	b=kmOwPwDpZsdwmxnVX5wvlLLRPpDiPlshayfMk1MLrkS/AWLONCU9lvcfVoer5yNi3
	 FLvwfTyzzmiFNs4z+lWmkiqF2Fjx3lMkYtGmA34FKApHVWby7wRcXlxJDhfNNJirCm
	 P/ugInzAT75AV+6nH7jQRc/t/XgLsMFqu9pbIwfCJn6G2xUaSalqmKlz2BOX7e+/OB
	 TboK5CTJYg5pBy92FIgqtBbeSTJ8k1oPHCOUfp+BhT7bL8U3ts7xZSVH7/Y1AJ2Fgr
	 eIb24Z3mTmq+f5llsHCqrf2Q3VrWqPyICOQW1ZhPBi1O37ZNNJV4RYax0RG68UW1hU
	 HDAZUrTu6qZHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C45CD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949875368.21709.5202103514750561270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8afb36ccbf73328052be998a61a250784ccba72fa05830b3144a13eef064335
Date: Sat, 23 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779498753
