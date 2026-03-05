Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5601E531
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772672094; cv=none; b=RRDuVRlgV2kLzJXUYryZzo5kg8PkJ67OP0+N1DouFMdtVf6Yj8OR9srfk+mVs0/K5ct8h3N8oYdXB3DUtJUBG95x2YHY+DT19GedTdenPaz05wakiH0iBgYxK7VcifK6huu6I7tIoaSmLMgRy5I+29Dmp6GUOvyikPgAO5/HBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772672094; c=relaxed/simple;
	bh=U6kxGWfczIPT2L0MG+FppBE4GmI69HlcNdP56MzaArI=;
	h=To:Subject:From:Message-Id:Date; b=b+peQFQqbu5nGytijdgsK/0ilUdyG/VlfWo9gMY/oQiVYqM1FTEvlW8AXyXV77WRt3/GDxGvBhjR/Dr3hDeM9sXEuSqpRg9A1Qjx11k7go4TKErIit3B5ANgjI0jf6Ai5DVAPK2JmrprTQHDVWfnBoqpWA438ppRz+hS9Z2R2B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmXaBDGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmXaBDGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A740FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772672093;
	bh=U6kxGWfczIPT2L0MG+FppBE4GmI69HlcNdP56MzaArI=;
	h=To:Subject:From:Date:From;
	b=GmXaBDGgGM/zdwC1mqRS5ZU11J8bumDZTnflMwYUiFqXyJyQ2LylzKEqE3A9srGWS
	 nJh4WmgkKQCDsaDPyBrCVlSOZeBta8NHAVQTXqjncgV2vN4FAtnAGq3NLB3RtgVZpX
	 Iv5MC84mQUYIR/nkOyTs3f+x2m9h9np3/uj83oPiKUnXPwKqy0j2NpTj33UVhaiOTe
	 VH2RufinDhy4QSzNY4SFS901kpDECoyEd0b5Z9oHU677sQTa8hftp6NiPL8A27TzTg
	 sIJ7/Nnk2AZYpNUDdAHM4pQ90O/4BoPabFqQbSM179h19iN5krmogQYbe/YYWlMQn+
	 Yt4ZDEPETovCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93722EFCE56
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267209357.21075.3562619035605635063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f0983987fdeeda4cd8f087f998253fb88ae348ce99446e435970b51155ae8c
Date: Thu, 05 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772672093
