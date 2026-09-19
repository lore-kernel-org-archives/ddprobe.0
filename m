Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A8B21D5B0
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789791034; cv=none; b=JgE5klG8KL2Nk4OyAk1k0Hyrkia62q+dVWU6YmBI5zBxaTtku181BFynOV4qoQ7q+wBIhhA0bI3hT6GRYjRmzWiY5Gm4L730o3R0wEI0ilDhWyLCgUViyTPfIz1Ey6WLI42V623NJR74leGGKwSJywsvD+MEg2mqSXKKEENw4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789791034; c=relaxed/simple;
	bh=YSc/dmxFQSKN9+qd+cB3ODYCvGRylmRsTSwkrlTcCmk=;
	h=To:Subject:From:Message-Id:Date; b=DiMqipENjTWN8FU3MCeKBJ3AUHzEOH2of0lg+YevSMi4BZ5jIsFqyNF1YmNiuMHfc6QcyCUaMqdrEDOfUGPldNR7w8RiFsX/Ch61me12XJX139u02XiGqSlI1YmcHi/LHjXgYg8/PabDgjHmMU6OOEkws/w6uXejXF4+ALhCQ0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekuNyp/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekuNyp/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8982C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789791033;
	bh=YSc/dmxFQSKN9+qd+cB3ODYCvGRylmRsTSwkrlTcCmk=;
	h=To:Subject:From:Date:From;
	b=ekuNyp/MkrIgH64yU2AhhBOcdsTFuJDiXxxJbhhKqcnNa1ECNdEe8L1jBBYqAAL2j
	 TDCsTuVF9lZARFKEl9frUOTRkhlujaSGoRExAkyZPkcED5fdtFsT0G8L7EBwo8w8/T
	 9h/GASxtjkeQoSRB58TCjtxlktAngluVp84IUP2UJxzGGm1pK3TQog4eYRyrnpIg4o
	 24zwE1wvH+4vYKuwAqijZW5VL88zZn1ObxfQVhlaU7mQtz3zXB/PUqRC58bVSbi+MU
	 P5SWuc1SEiZKjCjkfKUlEDVSDQs0vfWtYGQHnCvFHSGE1EhfieHzvM6mmI1MAuz7aH
	 h8pbZvvkuegOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3086C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979103369.6468.14254942292284891275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407c1ab8ef69d1fc0aeab1680a9a83d415e67bd27125baf4289202ee7dcad90c
Date: Sat, 19 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789791033
