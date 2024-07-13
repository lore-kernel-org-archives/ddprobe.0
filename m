Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F01139587
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720885223; cv=none; b=GsjBk3NGlUtljGmgZMppgRMTEWKF/wNZAJT2Mmx3c3mQQX34/S2W+L3SHkaTxaci+qgqCDcGT5BCkYvoe9TcwXqRuFdMqSM0heisrfTWsfGHGD+NBM2cikz+NLsYnYep1lInx4jca7AXqiRGi1Rrd4Feby0jXxhIH8zKUaho4VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720885223; c=relaxed/simple;
	bh=c3ukkJJkwboKbCeAVxxYWkiM+AqMYD8oSVOpZ5XnNZ4=;
	h=To:Subject:From:Message-Id:Date; b=lNcm7qNuJ8HMR8791G7r0IhUby01tcYruGO4ojry74usVQwDQCECQ1fATps3+PJROz5rp8vOXu/LFtO6J0QJp6WLsOS+WxNp6K5PprNiiMJ2s9xPaZS6bTfYR43rzeAo06sL8EsuCivzxtS7j6r8dQUtV2o9M4NUH1zrMHre2zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvdvA2zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvdvA2zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA758C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720885222;
	bh=c3ukkJJkwboKbCeAVxxYWkiM+AqMYD8oSVOpZ5XnNZ4=;
	h=To:Subject:From:Date:From;
	b=DvdvA2zT5cYReqrquKyjJgATrJAvQW98/lIUK/74ZSTv3KglaLU6avqfiYQo40+Uh
	 IHG7MtR7keGgvvEtFZ6pq2aD8gCE1nz42yMcOlDqm0VtksWh+kcZvZCEOAm7MuJiyZ
	 H0UqR/RVlCVEuK3I8uP6IKWGKZvKWuIJ3YcNYuj922jzIdc82zDESx967oynBEV1ZW
	 8H0SZ0I7GrBROndX9fsE9dTFWHcOfiu3Zp2oW8gw28qLcINBsilmdItrqs4DLJr5Xd
	 kyLYlSL3KevFtMjy61DWVGzeJ8FZmpCqJqPtr/Ww0raJ/F/T8Cxm6/LaSrQcV3Pc+b
	 +dKKmt2AbFBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14DFC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088522276.21407.9990810349557909625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bbc6ce7c96b1cda775031dff65a4b4c879ba703f1673207727b5586280a3d6
Date: Sat, 13 Jul 2024 15:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720885222
