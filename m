Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EB73FE373
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783336714; cv=none; b=lYZqVQ2cMpwPbML1h5syxSgulZH6VTlx5IUpHx24Nf1Jmny8oHNtruhBKZ0hKo+5voySJ2LSXYztN4A2cUKabAdYy+neZhsT7/XfCpaA1XBzox7jJbZz2CsMht/us+RLVG2eZSQL8FaLWFnewJugBoJKHRw7ZNsGznMDYu2l5F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783336714; c=relaxed/simple;
	bh=kfEe8VCDs/bUoIgXXsmscSd+NQsr6BZa6A48eWZ9EUs=;
	h=To:Subject:From:Message-Id:Date; b=Bgi9p2e0KbHkToeqyei3yrP45uut7aHITj+Xlyk2KUfa4cWwT4f++/sQZYMFRuw/NNfxqYVQuXQMciPuTrL1j8fVaAVrNrlXWn1MtThIaX8Sm8HIT9dzxsiHhNpAytC9pUE8OAEii8WCN1yuOc1oNr6M+LvsAX+IILlKbdWqz0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKRt2mFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKRt2mFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2D0C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783336713;
	bh=kfEe8VCDs/bUoIgXXsmscSd+NQsr6BZa6A48eWZ9EUs=;
	h=To:Subject:From:Date:From;
	b=XKRt2mFF0AOMdWx35EvvswCe6GHaTBj9wy05s5ilSYGxi9C1ZIT9GAuDBqieU6IRf
	 8s0ICht3GiBQB1Ht9yLozWUSONA6oB/+oA/Vly4+hI6iX+WJQxo9p0XkyBO5wJkT7z
	 R9l9g0kbe7Wy3Uh5GLvNY0QnoHh5vbTDpGA6thUeJBSD/phxQjTqp4JAF7qeLVhfB3
	 zQ/8DAG0bmz3sw2dvt6f0HsCwT7gQgpskswtZg6UbqrjcqGm0IB7EeBiMoZCIPwmSr
	 ViYO9M5MRi90ZXKpgJN+fMEzw4loqnG1TQmaH0UCYgUr+8cO9Gx5Ang3QDGKf1wQHI
	 APrnxdVQp2QSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB179C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333671369.4496.12020615690591983245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f9653ea86038cdd1d9b151474da1199c7b015e670a594ca853548bdd317b5b
Date: Mon, 06 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783336713
