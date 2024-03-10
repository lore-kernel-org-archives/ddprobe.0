Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76EB3A1DC
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710113296; cv=none; b=aZCGMQFDY5TNB+VQwH+wm4C53zcmaL/sxSbSeTxPgi+CyGL2/e0GHE+hFzgyBZbiZs+6pY9LNJTiaH9S1NDofPeCztq8q7bMdx48SDah3Lm3gizvSnOrMt4HlhkeC5EsVu8w3P0lYJXGA5uv2v8nZ66K0CxNajLkQpUV0SZ2+hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710113296; c=relaxed/simple;
	bh=BubEBdhvxFDtIaF4Cwsc/cbiSG7PVbsA+upTjcGfnXg=;
	h=To:Subject:From:Message-Id:Date; b=NtoUOXuKKckB+NudAjO+IwyG+1IGGficYKLGgn7oHthbSVc3lL5KCxjMdd/O9OOAVeMFirZMR2p/d32Gx06WPeXhygPHdoMenpUamqbw/mgrcBDSzYxpvF8KgT/BM+H0A6Tya4Ao/FvqACNf0LpsaInHRJfJFFq88gTXVF1iMDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goQdH3pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goQdH3pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6F1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710113296;
	bh=BubEBdhvxFDtIaF4Cwsc/cbiSG7PVbsA+upTjcGfnXg=;
	h=To:Subject:From:Date:From;
	b=goQdH3prP11q+gGTdCWV+rAXjK+jewDUH53gkWX4tNGkjABjTwXi6b352xV6tm3lX
	 fFVuFYUcp65Yy5g9cLHoVNbvLJ+/kLbnBQlpxszcjbu/NTaSY/up/1TkfFyOks44A8
	 4MJe4sJRDrPeDHcXCE5ZjsYp5KP7ljdxOSI5olq+yOXDoD/cHM2sX9YhrNRr8B5mGS
	 7eiPrTZiYsio8CsMey7C2rT1Ie3BcHnoVTT1d+VrhFoZAs/heV/q1E3/AzcX6lodu3
	 ElXoa/wNEyeQ14B611J/D0mlhP7nGWeL6BHjRqNNJVb6UP6mTWEem+5CQA/STGrxls
	 rYYYLl9Wixh3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9E7C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171011329636.12249.4656256169818950721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3d595b6a30b8fbc909c6ffcf5b67299ba2334363efa2508ae5c8ffd34b2a06
Date: Sun, 10 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710113296
