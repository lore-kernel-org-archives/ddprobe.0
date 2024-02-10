Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CADF5FEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707602297; cv=none; b=CJxUCj6KXBFrClraEaQZ1NRn0nhiJPAYz8b40TKW0lCdNWKqOAoX+bOyVDNduzWTRifDJ2UN9a2QulZUAWMaHlEjMPAmb280Q9fWPwrBkb3KNCs/iJfIjyK4y7Fg+7D4HXb5oAFmsGxZ+bdNeBxNyulV8gS/zP05HDOHCXmkbys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707602297; c=relaxed/simple;
	bh=mjARHKybJCC7ZnhpSIX4PVgNR/9qhPdT9vpqXeyu6VA=;
	h=To:Subject:From:Message-Id:Date; b=a4CHmbAYEQYQ4x05o87NMUUHtEQQNP/O8rYcnuWhi2vXjERuCMpFM9nEvkFF3TYPKuJKQZynuIIk2QQ11+9SZYKH0go3tqikvJeO4q2225ZPfZodeWdeFEWwAL2cyaOky0FQ6fk4r/Pv+EPApkOL90PLpOYlps5dvlcNoNYw75c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXpItzI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXpItzI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F882C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707602296;
	bh=mjARHKybJCC7ZnhpSIX4PVgNR/9qhPdT9vpqXeyu6VA=;
	h=To:Subject:From:Date:From;
	b=UXpItzI+4GKfLCYOUAZsRnqZg1IXFctrlKITK6cOIyyK7gUWykgoxiWn5yoYNnijr
	 QhpeMR16F89DJAW6FLSmjvMjPilE/psnzTsr6/9FXP0B8XfcDDFX6BUXXke3EjQvPG
	 34v0FfCd0rhMzqYA0wguREGh1xesDxGCqdJQB89p4+PBt6WHyLTFknn0IQNZ6V0AhE
	 lTPrg1+zbf5qez2TUTwn0jO80l4L/EoRKwDvbwunztTkNpxyI8W28ITDLpTeD0e4kC
	 GM5puap9OriC/Kr4sCQYp58rXVLIBf4v6oPwgqRAu/gHAJPwA/3SbN7jQwGu7UFsgi
	 hkYJAj90CU2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63652C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760229637.11000.14947854092291186727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f51bced586e4eb17eb1d794981c4108096a8183b657e23a5129b765acbba68
Date: Sat, 10 Feb 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707602296
