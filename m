Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA814A0F0F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789161034; cv=none; b=ecdRyOJbVjowWxwexxWVVHlxBVq1ltYl4GJG4xEXlJP2TDZ5iAEomkAWouh7sfn/Ceg+fRiWl99Hp2KYle1TBEVJRdDAlfpO4aiEeqHrL2ljl2firDQ/fUDTItTyTfx96WHDCykds714pFOLnvam/9onaNXamZdI6Y3/Tlvy5zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789161034; c=relaxed/simple;
	bh=v1EXvkVa3s6C2cpLZtVGht28n1IxZ0rzB/ZqIHDh8Fw=;
	h=To:Subject:From:Message-Id:Date; b=tFSY3rvlw8DGlqYzsj7iwvMblqmRRaRBZ7prp1Lr+jHinrqdiUmwj6FOH9SP4tjmRYetwk7rqtLqQUigLEbrpPWfrIAB2y+4hopWf0kESIoGI7KFxHkXRohPz74FyT3xvcgyK6Cr9juHcBzQpaFtqOyp/FBCRz9oSlzUl4Yg6Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBZ8ttNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBZ8ttNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD908C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789161033;
	bh=v1EXvkVa3s6C2cpLZtVGht28n1IxZ0rzB/ZqIHDh8Fw=;
	h=To:Subject:From:Date:From;
	b=gBZ8ttNshAG4b2bwTtBwySp1x92U+5OxYqkcOc9UcyF1BoU+02AO0OXnUfKmKlVfq
	 al2+6tOclmaNiJ5MWolh1k5c7THWLGMJ6hF89bcdevPXVOUBKJ6RJZNHabToFeLALk
	 WqeRvtEfWks+WCL80W4+bcsQpxXdsGV11kNvUcE86veAtC5qHoJQ/tBzY71HKXIB3v
	 z/mpQ+vo5wO6DhWpgYIDlfAs26PpZy+RJq/7YEtfG4rHxd60sHCTKm8a75nHCHCM+9
	 MVIKv/LPjeSP2tHMtZE+CSbF05jqGSlCOY3BLtv6cmjBsg0yWyBZezr6h8FFrtpdBw
	 1Xe+u0WsQQCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF4C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916103368.17838.12355451399475336597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce93316fb7702972cce0999cc272182b3b65754cc1991236b4dbd45c768b85f
Date: Fri, 11 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789161033
