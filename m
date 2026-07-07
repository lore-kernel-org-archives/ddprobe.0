Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431CB428480
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783438114; cv=none; b=it/X7sklhPzguE4yfRLsSAy3IRddyGsVL2hBAO4+KIVyLuEbOXfB/thTMEa3o6UHpcu2TvdjfrMW3Xx4NVRNorUQAbzPp/UVCU8H6ZibT8GuTzYR/uVaP71UABR0l2yAMsHBAadf1GTkwy5kogZ1nZ10tYSb1yFfb2mcN/0gPoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783438114; c=relaxed/simple;
	bh=RTF8FnAIQeBEK+vsffTZfaBj00KTqyvwOkRnBwXPPNs=;
	h=To:Subject:From:Message-Id:Date; b=d0uYHzNkfnqxRXOPvs4PkYd31MW+ofVmEAApqhUzU3uqbLTGSHkWC0kubv9uqMK6xGZXJ8tHcL0uyZvxicYKnX5WkJn15VQI1IBzXSxEm770IJOdYvzY+AGH9RR3x6oVHXN4+1TKwBgjycC0DMJirwbAI0U7DflpUB4Z8XVLE/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGU6vD2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGU6vD2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADB9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783438113;
	bh=RTF8FnAIQeBEK+vsffTZfaBj00KTqyvwOkRnBwXPPNs=;
	h=To:Subject:From:Date:From;
	b=FGU6vD2FAyogCKC5bAXgw28Zmj8q4V15of2HMlyqedfyxdCYM8+AKAx6r/11PbfBU
	 hywMmmsTj9BIph7l/6HoUjgNT28eozcgeli71Jovj4c5S4blPiqRjxgymXyk1OK0Mm
	 8yEGypfxKN2KSmQZZX3vFTgqgUf+2Y2rGWq2tczx2DK1JtdRcDIXSUOclExmNZ+eXe
	 SFBxORmxyyx76QQkNOU4x3JFq98fAuvqZoqFlDIA0DCBu0SP2vqUiz0iWvm6jczM7d
	 rSYvnCapYL1vwrF0Dx7Ms9dyeClLi95YzoZltU6zPhTm4P3A05GupgBYEQf9XRuDb2
	 y6cqQ5h0NfQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C83C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343811368.12013.5989306475853387252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c038abf5da422b513e7f09b1310046b0397ac6e71274761bf91a8b51180f2af5
Date: Tue, 07 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783438113
