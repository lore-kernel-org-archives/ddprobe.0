Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790444ED1B8
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791891034; cv=none; b=m5rMuJx+o8Jcq+p0Vgu0U6Sm5cTilORBiiP4ojuaJOVipYM/OFPNS53yjVrN3xLE2BFGUIXUWEuGmwgG7gyGD1jiegIV5vpQSONVWBOTlfeSeciDj88v5BXIgOE6hk/EA1kjeWjMRH4p42OIS9G/tdxiiO4T08zlBp9cJSH8PUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791891034; c=relaxed/simple;
	bh=kcky6YUjeatRcXZ9+ndOEd4gXuoFb01xroyvBmZrji8=;
	h=To:Subject:From:Message-Id:Date; b=R5m7FG1yJa2LtpARqV6pwTB23W0NiM440Cu69JNp7dIKgb1zCst5tzWJv+1itySWy/S9z3XBylKCi1+jxNKbmvd5e8W4rkvzOfBru2ozpIopXy0NdFFXKCVvPpw32gQcvemfBMlP8kyeKPr38gowfKrHTFIZeOlpkPVXWwy2KXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4iZHpTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4iZHpTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2252C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791891034;
	bh=kcky6YUjeatRcXZ9+ndOEd4gXuoFb01xroyvBmZrji8=;
	h=To:Subject:From:Date:From;
	b=l4iZHpTxZS+5NcM3bPhdgqIhmHVsyUGpczrcKXtQShi52I10BB+jE1OvTxsZLHot2
	 2ScL+DOchmM+7hQhfyLDOyjQAJFZWI77bkRifJ4BA+r4v/0nz72rntx4EkDWQobeb8
	 MHk0iLDjO8DU/nDtKat0I3DQ7svhR7EjdNdma6e8gQTizrLdq84E6eb8rP3fvnpg7g
	 QsB/AmuHs0UtDcDI17vBIshgxW7Ws/A1q0QEA659XBr0iQZB/Csyw2boJP4lzf7dVL
	 Ywk+8Cl9YJqUs2eNYw4jmg/xWxp8ZR6i5pBEkraS1VEWQQELvi2tPJkRPzSFsdLQ4B
	 KbSFO1hk47P+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB689CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189103375.5431.6164788284375124449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61599d2b4688c0c67b0077bc919ea7da34912568e55f55da21eda2d64b8a8ad1
Date: Tue, 13 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791891033
