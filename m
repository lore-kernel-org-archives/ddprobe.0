Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650D884A21
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718189303; cv=none; b=PFiPcbBGgaQd08EqnfzAglxuXQpzRpt5ZgRqZeIKtX6KzIEk6O5oAVtmmjvQZmNcmXQ5xa62jleBOBPmFOGkVv2+Qs3//qE030Jdhfrl7fQOeoKDWfFncZa2gtL9xT7e2BeIde8FTwj9OIS8iZ1aCvTZupbhMmSiFhEtZY9AKPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718189303; c=relaxed/simple;
	bh=zBM3Pc9LJJXIdwyORiLJsx8dK9kVeyO/QszaOjVeZ6Y=;
	h=To:Subject:From:Message-Id:Date; b=qJMsDd9oUJuq9AVx5O/TfQGxcRvkLzoq5AE/AzbONlPnnWHhUa5IRHEUgETxn8wLPJxRUeEl9lUXNRZU5bnmdkB6rfwuAxX61sPEpJJ3/vpU9mS3W9YiAb4Pfd/Cc8+WaUj2WcyKBfdEMHEjc6zxTnWNa9bb6r2MDNzAW+Yrz+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFcT8ABK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFcT8ABK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C85C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718189303;
	bh=zBM3Pc9LJJXIdwyORiLJsx8dK9kVeyO/QszaOjVeZ6Y=;
	h=To:Subject:From:Date:From;
	b=EFcT8ABKhFaOH5vJZnGRLp2PthfSsSXGskWnqrssg+tt92GyE87KnXPiWeOKQa9CL
	 mzWv8sHst+RRqMNCaKNHlqlNCkGeCp5wy4Z2BFFuSErhPnSx9/CewChOm+dkvlrSOd
	 myRKkCkoeygcz8otreufmCN36fHXwJsUoYRWIm33tGfQZL3x+ViCH7J+Voi1u6RG5c
	 E/iqiZos0rKPWCGc4mOK2AaJ+pezGN3YlQGpvowoQICRRDjPt6Y7IuA0WY0JXMnR04
	 DYBWH/u/i2Xv6nrMRmb+eSkO0YSzEXdowOk6UGvTwCH9K1b2dYtWrPgmbB6LJzbaAl
	 I04Ria0ngaiMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D209BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818930284.26048.12832837313057310594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7e0d56f4a4f16b82da4bf3aea819d9b5c36ab704ba9c13373aa0ff8da2f60f
Date: Wed, 12 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718189302
