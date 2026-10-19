Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2BD352C3F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792375834; cv=none; b=skSo3d5NMDlrNnBQFwg2oNirgfvjqqxbyN1litoYnSsEiWNYhwm5/Gg1lU7MdDTRGP6bqB1Gp+x4FZuhv98wa5Rj7czJPOnXcEDA2qSAhcDndZ8L5e8SGzkTIT1cJpAOW0tvaz4DOMWGuqLh0eLpFVs7qxrXUdwKA9KItSkkycQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792375834; c=relaxed/simple;
	bh=/EhvYERM77YoIubHDxHnPJh24ictk4LHsmjeRCyhl3M=;
	h=To:Subject:From:Message-Id:Date; b=NaMWzGIJQ77qrOVyzIkR+68G71p/1iNojHLDjGP7IQROuPyeYSXSHijBlzxbmNG8/4I95WhYzjOfe5cj5J+XyL5LqEi54Cs/IveVJ1iPq9UTSZtgKoR4bVyj+GWcKcspH9PzT3zc3MEDIC0KHRjUUCYJOjCMl6XWhSFJIZgi47Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7xnZZgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7xnZZgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBABEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792375833;
	bh=/EhvYERM77YoIubHDxHnPJh24ictk4LHsmjeRCyhl3M=;
	h=To:Subject:From:Date:From;
	b=k7xnZZgD1FUVLsDe4SYgo0grv2zBBLmAjrsDammQOOzRaSYMO0CkdXguq0uSdGXfD
	 drJQIjC6ssOImMeZ49QqtQkxn1Y+vVhepjWFW6Xr+V97+P8iPz3iXEzOKZLcYscrqi
	 /Y7nJSv1LCpr6Im6iC8T5hwun0TXhdoP3ppdxKXnmFfnv3CIQ3VYiIDVHPljedkRij
	 4cwhNcjYXs4iG5A0scJuI/Q4hr/sDOXjtGdsxcnNhkmw7f61xK4rkD2E85+7I1r4Y6
	 F/9v5ned06D9u8isYuxeO2ROMS0x6qTp/nIG+nSd7eZT1AQOkNkdIK5RNFctacqF51
	 HG7afnh0Y7E0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7768CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237583373.27024.16489987940656247316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7455d654b620f4faead0472ebeee14185d9c297b252c232e85430a243183d8
Date: Mon, 19 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792375833
