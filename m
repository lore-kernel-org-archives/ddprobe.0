Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD9D38D00B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776884855; cv=none; b=A41uoDY3PCKlhpqJULufFP4+pvj3kteSiEWkcc5VcbkOogTXBLB6pDeW/NAkSMX0/xzvi//bAJh00N3OjRZaxDO6/IEb8caSzhKeY3Kyjg1FxGk/LAd87S/onttSwCQgOCrEF20beX61Qqcz94bGjKSzA9O70zf0jYIckQWq63E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776884855; c=relaxed/simple;
	bh=vPj4KIGJ3ziLp3hKPHLkSWlQPPexiUH70ClUB0BFcUQ=;
	h=To:Subject:From:Message-Id:Date; b=sIDMwGY+aoeyjdHtkjutI4JeMTzeYYH9wm9YdAbDmiFpuJC0TGkSmdmKNWTUxMmBJZ0PHlh3GaCWWwl182DGxFnsL7vUlT/1CyV/Mob3jv6q8YHhy54TotJQjT5wR0xaqllS137yNNq6Avrv/lOr/RHe0wB6i2LJwU3ob6ludT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh+qmAgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh+qmAgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0DEC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776884853;
	bh=vPj4KIGJ3ziLp3hKPHLkSWlQPPexiUH70ClUB0BFcUQ=;
	h=To:Subject:From:Date:From;
	b=eh+qmAgb7kpXtXABfkNiHgk2vZfN42ymLrPE2ehskPcam+4ch5CyD/lYZUXo81g88
	 +/w3atbVOUvlfYajyRUmH/Gn3a3lJOrjYd1ELWTSnbcFVf64f17KsgyPqZ+Thbgmcc
	 r3VWznPIhS9am8QpuH8Bjl7H+9d9cr3Na9nYMjRLJ+38OPF/k4uUY0QYkm2lFuf0N1
	 oCjPJ+Z/UMoQgSj2btdA71DT02SHjfmlF/fWoTCEuXaOlO4EynD6oqyY0Ek20WZ/eh
	 HE66DeiDO5HYSXgmAnUuzcg2aw1y78T9WZvDUkWj50FQXAy5VYNc0jB3Q30/9CgvKs
	 vd8SuIf1kb0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8D9FA1FE3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688485370.29602.14470712453496939682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c098e18ed15759610c343e112441fddc7c5f09e92aec51a3b3c1a5644c9dd70a
Date: Wed, 22 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776884853
