Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B11E833D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756862394; cv=none; b=fKXtTacz7Gz2O52+7JpQFuVWqPD8wdC3sxQsTbhSru0kz8CixsFRKeTwdajCWY9Sbym7wvX5eMqdXUxHO+08xzz/xtjEk8kXvHKSvXxO73mc/vSL26QozBESz8KOE1NJPpHPeAOaw61rue4TbCeZVNdUDYJDA7VqtRLeK/Rbiiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756862394; c=relaxed/simple;
	bh=t1LBbq8oIIpyhJT80ZX5JuiEvl+SePSufK7iEurt2kg=;
	h=To:Subject:From:Message-Id:Date; b=VJR++P/Nzup48SIqZ6kfEpdupseTBwtD1rnUN2pYH2+MWF2eY+iDlYccTrnz059r4NyeV7uEhDa4HI7+C5epeae0tyDWU9SSlFiSBLNLG3l+lmv6j++kyc7VSYutX2bPV6wFYFJHnOrL6pJEmWmf+WNe5bEWZ2YJ/ZSjFISkkrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez8iVEHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez8iVEHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CAAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756862393;
	bh=t1LBbq8oIIpyhJT80ZX5JuiEvl+SePSufK7iEurt2kg=;
	h=To:Subject:From:Date:From;
	b=Ez8iVEHi/OemF1sqgMkBlGkQ6LJ80PTd3hvQEEZvjj2aLvl/ky1XNVHPzK62U1aWK
	 8D7JxBYA1Y9Ts8/2R9Dai/VxwJMDJLqWOu7oM73Tep2FpO1GkHJfH/fT0F+t/NtUji
	 872VWtQ4Oq6t4z4FSQk2l0k4z60O1HO0fO2MchrPtZezrcL8M+ZcFjZNVyolrH5X3A
	 eHxATXjm8ebx3Tnop5PoYiabTZEVrFAK93m5x6lEQaaJNkXRKcpaDG/R0xHgIJeh4Q
	 L2WlwpIrue3K1lOaqWb7C+sojd6oex9diRTpMgnSJpTuenLUxugJ8SCDU6qEOtem8K
	 V9J8QizdXYckg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A0CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686239357.12990.16502486525603755318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bc47e8ef6135ab225a3c7e3f81d4eff5258eb46840de1ca7cd75dc1ec7a012
Date: Wed, 03 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756862393
