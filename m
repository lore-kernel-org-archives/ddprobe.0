Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4723D35F5E5
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785608434; cv=none; b=d5959UtxOcrQVpnidqrZK6/mo/9PXEzbTXNgS6MTBNBsHsrqpe15iiu+rjZncTXOwldEcu4U6LqGUrSRI6cSU5+1LPeOkwe4ou+nqfAL03IVbdqNTjlwFojtZFGjIKkY6nf6qG/fV/sx/W1jpfKQIloSwe7CRcZF/M4J8/4ygAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785608434; c=relaxed/simple;
	bh=96gTR19pViVMzu/UPQx1yUGugHDbdYfcTiSBBJt1tpE=;
	h=To:Subject:From:Message-Id:Date; b=O87aziuSQoxckO5zGA3K15O0/RJqgr2YwcbO3/nShz5iP0yotp/HEhY1HRzaamHZSPRX/p6vTTR4bzZCm8W2mtWAQ7FnYr+EuapmOl+i+hqpzzs6l53RCSv9CFTfj1ZL7YxSYZTHkHTMxjWh8JkdKLOiwGDFR/nc2F1tJPjWGiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGH8+eLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGH8+eLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3033C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785608433;
	bh=96gTR19pViVMzu/UPQx1yUGugHDbdYfcTiSBBJt1tpE=;
	h=To:Subject:From:Date:From;
	b=fGH8+eLioGxGaqf8/dR9hGHSqOicpTVEEhY5Wjlw69LMYxZTFkIiBi3YCAE3iZxd1
	 N9KqE/ZVM9BmTR1mLBh+ebSUu6ZZhb5uW7f/I1jxfO20CYrhWkrWgLUo1l3gQVSjXB
	 J2bbESbi5BWzSrFA0cCLMjH0hByKQyroqn/TRZjBS+auBaxVSwte0a511OBB37iccD
	 ez74yg9dI6lqotPGZMHUKboohzPJdqcKPvt3RULNiT1kaFIDzQ+GTN+90bMOiwNDK2
	 e99Cmtb8QujkgWZXa+opcQM8XX38UQo/m6G8VlW+u2uxYqFgf3iHKXc5885I9cjEF2
	 762Ykp6BSIuVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCF4C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560843368.10859.447566019589458069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd6292238455b2e4894b0626cc4be8ce774b1317d4939292394e130bf6e8f01
Date: Sat, 01 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785608433
