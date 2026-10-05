Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CFC2D063E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791184234; cv=none; b=ceQfKGVPJX7tsRklMxCNn5M4JHW0kOBs1wNUKAC36eqP04SCRH+6WiakFe7DjHJ0S4z446AG4cuqznDnAlapr4++1GJ4KU6XEAnGBZPiRD/egrTbSeMubdQcF1LqIodc2bSZlj3PmZZxdi4WSNGJw1GpVIpwJSgLN8d6OleFGYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791184234; c=relaxed/simple;
	bh=bbPCe5LgnS84c6NAVtCt/F6/j5udi0KKbUh85a4PKkQ=;
	h=To:Subject:From:Message-Id:Date; b=SsszBBVFyOIlq0426pXjLudGC1VEF9HHK9IUzlvTmVsSCtWF07TWq29F9fBE9Xm5NdCjNWxBVvvHtxnrldu36XPxFKE+qMfJ3JHTDtGtC2MOkYelBWwoQv/SiNq4q43UoQbrhQD+vUPr+NrbJp00NLdkZhShYlk4LXnVE0XAXyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwxOegos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwxOegos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0300C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791184233;
	bh=bbPCe5LgnS84c6NAVtCt/F6/j5udi0KKbUh85a4PKkQ=;
	h=To:Subject:From:Date:From;
	b=NwxOegosTB8j5f1PmLlFXIn3cZUcIKy25jERIoDMMLSy7XjufBTm+4T1BVylZ0tns
	 9KcmU4xLl8D/pmE4yXdIc1yjyi2kIZVidFvnwAYLUkk8Uz+Dj/XH7QQ91LkG3wnerY
	 +Admw7jL7e5hs+8v74UpYu8IwAeo/f1gz0t04B+GCKip95eCNVmkFJa8eSZsR5Se7g
	 dI/Rr3GpmeQLRosJaLN6znF815X/S7kLcp3V7zv+YI01qQBdswOPRtYoF2s5Fa9DRA
	 HxMac1lvTJMMqTDdMMQGwgvJoDKNayq7iemiZmKIWMNEQvjDill1kStf+HVgtc9V26
	 79B/q4e1Zlgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA7CA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118423369.25119.1217367557201446126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9606f5b60da78cad16d1d562709db01db8162abc0537db2174b7eb914bc5f9d
Date: Mon, 05 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791184233
