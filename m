Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6056F49BD9C
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789996234; cv=none; b=sPMm5lH7sPtloium56/3kNqIAiGOId2rzE0d2jBNUGhyChS42MPUthMUHRzKiI8zSpCEOOjdx7kU/fGcus/OPZDWNHRA5TUwpdldmaapwdNWbziBHtbhRbQXhCyW3uyaGt+q0Ug77W1lnZoXwKQKRw+tI31jdMVtCeqAoXESj5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789996234; c=relaxed/simple;
	bh=8HSHy9Crk159kq2xlL3rBsSLtr+880lC7tMCfu9HCD8=;
	h=To:Subject:From:Message-Id:Date; b=sagc6lbcBCkbLpuY2cdGh9rsVFjD8ikkPFElIYQrZCkasd+Q9387ZVumIpR0cpxnIwmiuSphWlkPnC9Z74/eJOUY2WwLJclrJU3Tb6FNAxPQmUGVayCeIlSAXBkU2lecy73VyTv5JogAVcoyrrfxPIssKKmDSVUAjOzpOYjcHZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxaOzXCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxaOzXCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D036CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789996233;
	bh=8HSHy9Crk159kq2xlL3rBsSLtr+880lC7tMCfu9HCD8=;
	h=To:Subject:From:Date:From;
	b=oxaOzXCGIBfkp3rWk8gt3rxrNgjMpskiK8Ml2d90baFUctgE2kYT/e6sgtW4erZEs
	 2erjNJOXys/shmDZ+4+YBnU9XFXuj85zSLRHkYi+V94Hqs42A0yYQ78U62u0W6Wej1
	 F5fEkp2lhuhylvgiJh/K87ttNrU2Pjp1DVDTG4AnMS0vyiMx4VAWF5gj+7pMtisy1N
	 aGrcNfA6pgz///Mynp+hU7yzKelUnIAXUtQEsUwe4xG9bqlgip/11JrrEoEC2q+Afp
	 9+tYJcelXLNIP5FWpDUAHJZURfA/G85ebHceNrQfTRL9C3CfdZf2b1EcQ8JcHjuvSF
	 8uooZDn8cX/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC4EC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999623369.8795.5811986198286865798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d9d3e1e9cd8a56d3232505d0180ee095fe1d5de31441f063711e113dfdb7b5
Date: Mon, 21 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789996233
