Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5592E3BB57
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790470234; cv=none; b=P+c7fC9b4f4bsItGiKJD5AKCT51F8uevLnYNRSrFXiGNOhCPogR/YIlSfCYATG2YYtNXiR9MqdkfczvrqfYTojx9u46RQEBM4Qz30EvW8CTtUZlu3QR/lVXnEFWTlQBe6wNen0k9cdrVjK2KItO08jtwL6Ec4Lb3sV69Esc7qhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790470234; c=relaxed/simple;
	bh=g4Ky1zBji0iuYUeEp9lIV9iuMIuUS280+MXR69NObUE=;
	h=To:Subject:From:Message-Id:Date; b=nA6/E78IqF5ZaKZUklIRP9hNOtnY3X+26ZesGGlWeEWniezHiRU5t42Txz5KMBm2BCjCMaPcBLS9AW5ZkgsYkmckKs9nSXolBzF40JIy4MNPX4q5LtLyg0HyO9reCWW69UiiuCRhyYcgLZqXyER+/NZcdhPGiPhEktXu0Gz5Nnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUHrK6dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUHrK6dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D340AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790470233;
	bh=g4Ky1zBji0iuYUeEp9lIV9iuMIuUS280+MXR69NObUE=;
	h=To:Subject:From:Date:From;
	b=IUHrK6dxvlGT5DnoN/ekIet4fQrbYB5yEYixLj6zRbDrI1zGUTxYn18DaF/unV9pn
	 w8wLXdi4kwd2sHgCxoE/X7BcdbZ+tiMMyR4p7iQ7Tu85xSnzdpH83b7tqdWDoLMYY7
	 3HSgim+XpzK+0RCqAoI+GMrcvTT/csUPce+SzEkhaWeQwGjZriL2J9GyENtVMUV36y
	 nLzSbJBku0Z32jyPqvtGu0rhqtp11L1cie2PAuz0wVxjLFBksHthUgRuOAsC15dAcf
	 D6zYwmKVS7E+NqwCiIzSBQ6hXXLxW7rmuDA5QHfnWxkx4QWlws1MZmMtJTGQVILbfb
	 /mQqsgku69rlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C36C9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047023368.19105.5783134654358262474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac43a3345de2630c995001235caf400a77b197b2fb9ae7e80f67a140c7c664a
Date: Sun, 27 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790470233
