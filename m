Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1811DF271
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756739995; cv=none; b=OVoxzT3jSP5QkLWKkBAhrskjrVVcFZHM/Mw+/SkQq1qfFEQlbQf5CSz6pVbb0gjqqoYNG0GU031G8Kf05OACpT+2JjTdKMdjPoMXa1lUe+CbL12DKNHpKYTqqfqrX0NdspDy0P1O5R9ND8Mvn74Zl9O8LvicHI266ftdleOXwRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756739995; c=relaxed/simple;
	bh=AxicUzQCLIopKSuMpyoCpFT56aQnOqpDT/WaqaDOe08=;
	h=To:Subject:From:Message-Id:Date; b=f+jEW1XUlP13UGzeMKxauVngSVbOLlIAZolAxPVcriVolCZcmPdr/iA7E6iQWpHBqYtAyRbVYLyNxpmLBeYy2mI8LfWqFLPKQylUVAkPQtbC2X/8E6oScvMNv5C2Kdokny7i1W4qGsR87MTbzuNLdhPH8j/+hB9mIMjGF4LzZHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIHYj+OH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIHYj+OH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC0FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756739993;
	bh=AxicUzQCLIopKSuMpyoCpFT56aQnOqpDT/WaqaDOe08=;
	h=To:Subject:From:Date:From;
	b=NIHYj+OH3zyWF5+gWOitsM1iQXCWNOwlhD8lioLDf9GwBABqilC0ve+IbOqdT6CJN
	 DYcPnRKx3aC7p9Mvu8z+Ele5KL6r2b1H9+W3l+UtYyygZNAkb0PDHZaoVfzl0Ei5t7
	 B7gfXrL/OrTrAjM2gIDvRhS15/xYZ1fAvbe5R4TAg7I0MTk+jwBhE3SZ8wL/OVRlOz
	 TMUX499sfeHwEIJlyxw7KtOd8uoo685LCVjldHcMb0PLbQDho5E9N1uAhjq4Pdy5Bu
	 mFg/NKGlugTD68uCH8kHZRWBUmhLSftniIvcpPK+nPCusETmpBHTu519mermwj1Sak
	 4L6GR2TnSwoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92965CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673999359.1282.2452177959256657781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e2036af3760ea4228dc2cdffeb620661e89e27e389d48b04a254305e91b0e3
Date: Mon, 01 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756739993
