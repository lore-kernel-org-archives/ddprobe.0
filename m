Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4522F496D48
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791298834; cv=none; b=dJaHvbPLOM1wPycWoNUeCQ4OzidaXBrciHUsp2BVUP2mEayyPOrEpwiNlF+uMBLcWB4DYPNPgTR7AQYE+2GnK0PVIT2rVsrSb6jeEr0DnSPdVUTNKSwU1kcbf+cl9QMX86X3pSkMMw7PE2nmn87PVDI63XJfV226k6NmYqOdofY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791298834; c=relaxed/simple;
	bh=5HjvC4sQwQVs74egVb28OotAtC4eewd8fbmO1rQvOZ4=;
	h=To:Subject:From:Message-Id:Date; b=cFzFXhyp5GTkRlEHOUavVnmYJqXwwtBaG23gsA94aLgbKwZEvk89WREMehwxIv4XYbZaNDEUzMXwdHsoy2naxlxUJmf8INtQIJ8nleffgeKXTQLG3YZWmxe660MNDDzbR76MSAfDq8zOjqSZmmlxnS5cW4fwYjJ0y00P0KX0Jog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s325chD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s325chD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB766C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791298834;
	bh=5HjvC4sQwQVs74egVb28OotAtC4eewd8fbmO1rQvOZ4=;
	h=To:Subject:From:Date:From;
	b=s325chD1wTMPBQs/pN8hbFIOF5p0/rNNln0IYyCll435Dj1CB47ye76k/vWj2qSKK
	 0acIa7TKtSp03q5jSk0W7ef0vs/vMSJCCUScaavKYB5paJVtgzoWpY+jFHbHFv6n1v
	 X0JIfGN3W3HP9LpN8ptq3IqC8sDXKxxsj8AkifmuCHEnFisFMfBReUINgm/bIsIqGa
	 1hF3ZCup3nGbyc2dVeLxEQnnWKQJEt7PCoMfWYSwX+DKTOjTxnH4mxF2cPnig9B//T
	 yA5jZNtP6ex23iRjpBPsISjrIjz/53fQCRLPhbfs93NKzk6UcRhLzHDN4AKuTubZvD
	 tfr3ip4TTrmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE535CA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129883373.25069.7323545397873464157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cbd8b875b776754c4ff52224be6a54ba484cc1c45612e0c51348699068055e
Date: Tue, 06 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791298833
