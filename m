Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F04543B3E1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784756974; cv=none; b=o6eRynK2aKCetqhrLBaCTgYsfVKELtev7IP6wjN6ZGR2bDlnrchbGqMG2iVPaCwg0KhFV1rqCby1vvykWi2vYd1pGeCkLsU4tIFxzATEG3wS1NATPFrlyq8TAjcXdfZ1fknfMbrckJu1ItqWhBwmRIgmkhBzaSzbRmdqLfugAIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784756974; c=relaxed/simple;
	bh=Hq+mEfAgXYB2YIJ1/ltXRHsz9FPIK2qw3lBmMyY64Fk=;
	h=To:Subject:From:Message-Id:Date; b=gQIIkn0uf78wPdUe37lduwCIhgKeX3LqBeljVWh96wn1o0K88DZZFL7TtUvFS59UXoXkK6xTz6PEYmIRREjMIPKsY3fLiHvzTHKWgszx2jU4/0EGDlNccDrvme6+0y9m38GsICnZIujWCYz6ef4t8sZiGEQdn9Xhj6tZqJ4XcHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2BJtMbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2BJtMbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784756973;
	bh=Hq+mEfAgXYB2YIJ1/ltXRHsz9FPIK2qw3lBmMyY64Fk=;
	h=To:Subject:From:Date:From;
	b=D2BJtMboxFIlQo5aETFznHXo6qCx6Yh+ErFdXF7tvB9tMy7YdfIzMzuvzJTXoeYuN
	 yEltBHHkx7t4OqEMAhilzD7LyOQy6yim+xO8EHaR9anHd6DcvFy0449hSuFZR7w2c8
	 qxB7adp+MUQr9JVG1FFbcT+fkxk/MQROT5QabgQWSw3QqGA5/7KPM1xTvwskOmFugJ
	 fe8ee98N3MheBMwC4bZu7ifO3kngCS0HViAOZpa+TpcEKQ2iKoRBQnjcmmURL/BJSQ
	 h4NLuvjyWX/xwtCB8vGQku8uxgf5JPdgR7QWNNPqtJ/Ia1E69J3vGKYU2s4YCUazc5
	 eGyByh4qU/6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2202C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475697370.24075.13153266003741162333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae42343fa226ddec0c809cedb5eaf927b8bea630c01ceed90b7cf2d960c616e3
Date: Wed, 22 Jul 2026 21:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784756973
