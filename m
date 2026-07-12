Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F9F5474F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783843714; cv=none; b=extUwIUMdOLlsmTWbUYwGh5a3yezEcaSqx0M7Qzx4sc2aaV/MHeRw3PlKxl9tAFlgfmONXy8DxyF5mxGGUTNdOwjT0OoedDLlnROKz4YjcywiIzjPenTwgPwxaVKoyRXxw8uuehowJ1oZL3KQ0PnYpEpFmfnHCUMFVgjdgUg0FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783843714; c=relaxed/simple;
	bh=rombl9BVXMPlWJ4qckpfToswtIvl2vz/6BNirxJlNEM=;
	h=To:Subject:From:Message-Id:Date; b=GobBtJ4bHnbTL2OPB0srjaVwDLKxzQ2RR2P0v5fHcm5SC7xWVGNzJdTICyeV7AUpBpjQPCExVb+Y460zpin7bUgsWujH/l0eQ6jZmxoajQ7TaC4gO62LeZjTufZY0P3cnUkYQqv2y2lumWbRFf1/+Hgg9biDSbLQEQ9pclNQQfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJDwaY60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJDwaY60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC3DC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783843713;
	bh=rombl9BVXMPlWJ4qckpfToswtIvl2vz/6BNirxJlNEM=;
	h=To:Subject:From:Date:From;
	b=GJDwaY608t0BACOwXycm+DbTzfcVTzW76KISJkx6Y15GXOkiZp3MKWhLDmFq2xYlj
	 lQ6zNiBLStlQfjT9nV4p5nBE1Ws2KPYwgtCOaV1KqC7EGo6iyBkg5wKVq97YyTudKa
	 EVgwHVd3ORN4JlC4mlvmoEl78mdbmBWe+BOk7o4Y0Ds1AeVw9hd4pFsgscNr0Vz2Yd
	 SumXVNWvYpwQyXd+j0B5IazNHa1uhTGLuC3rLnY8SOWXGN8MJ9yCFo/bxIVkEA8H7t
	 1myutMjfagdF4L5jm+t58WCnHSXXVCzzO3KoJzYQjGU2j0/Cz/246zFFyIvfJeZSae
	 2z6MSigBhHFdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD0EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384371368.12094.5451669901059060933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133de01d3428615fc27828cf80a66c52b39b7e5e9a387e5b25bad6232cc73747
Date: Sun, 12 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783843713
