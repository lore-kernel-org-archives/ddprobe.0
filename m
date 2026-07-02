Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDCC35BDC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782970114; cv=none; b=dpuFE6im8Z44wdHa338VoT9nqqDW9BhPBa55wfgHKZN6xa/UFiym/5BhDWBwFc4NVGEGEIcjp4oIbtt+ieDymSaSRkloVLJbMGLRNuonlrv+IvrSsqOn+mHV7TiDKlRKlWnjE/1LiVRCotgfD7arYuBgfL2PxohZ+bJ0g9d0+4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782970114; c=relaxed/simple;
	bh=xH9Mmtd0TSgy+gNgrUiYXIy61oGMaIpw2nf1HtnaMSo=;
	h=To:Subject:From:Message-Id:Date; b=tFeNL0tmLib/ZzcQ6dkpWwaOBMNMu0dCvGySw4mAR8lvfbp6AUeGuIRsHi6Z/nV8sD53Cv0ei9L5O7EVKUyTJxtmkGvIBvopJAOBDQiW0Fd4h7XGgcTBQWBJabQTT0lpamMhaBqjFjZm6wKcd6H7LEwoioPYkmsDmahFnFtrMGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC5PxcKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC5PxcKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1877C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782970113;
	bh=xH9Mmtd0TSgy+gNgrUiYXIy61oGMaIpw2nf1HtnaMSo=;
	h=To:Subject:From:Date:From;
	b=hC5PxcKjwqEUdFA5pvmpa5+gK9c47wP80ukrUTWLeObbEd0RNAjzOMKKhf0l2oqq6
	 5mcXrT494lorziSadAG1KJ534zCk8A7Q6Qvlvb5Y7SaHrpVCy/IU2JYd7MAB7ecnV5
	 SdMOBM+2j21PphOZjQB6L4arcdbVyMvyS+I4lNWZloScvw60BdfMGz2O7XlP8rH1jw
	 R4/Idf5JIkaSC4l5LywPiLu73pQRLi45cBNL1wqBw/7A9PiK8fFtI4wIS9OkSznVGa
	 zO2u3tl7nQCqhsNrCuvC9hhiMBUCj6zRrR5R8i9GMUm9H7JGL5D1OnnZNh4moqdz6l
	 ti7HSKzXr9o8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29DBC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297011368.8890.4263414081093227773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973eacd1edb76489ea8532b016332bcd85dc731c8ecab2e93a0da4140f3a18b9
Date: Thu, 02 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782970113
