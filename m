Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9E2253EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762401594; cv=none; b=jcbe9Hjstxd29X3YQSB5iuYCoyxdpX2ZHqzDULaWqsqUIcR1La4Ohs60A7Qx+TAoOo8CBnMKqCY+/rf+WmBKJnXU8LIbZwiyvOie2w181X52quOhnan4e/xTOyfOo0KJyAaj5qjTc6c6blknRhcbZywWtL3beeqGGnh1NLQGV9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762401594; c=relaxed/simple;
	bh=+poY7snrlfY8m4YEeZnGbyoVMNmx5CaIcM6o2oYneNU=;
	h=To:Subject:From:Message-Id:Date; b=j/gvn8w44mR1xZYNn6Nf8C8Dc3DL811xmUPDIUJtGxSdJJ6tYW57U80WLtsJJ0kq+BTdYGLzJPuHm5UhqjTd9w5AsTSt37ocq3f4rUhQoRabI8m/oWqj5FrEPKDnTIPGF04bVVOzB2jjVGHq3U+G21zmGEA8/00c2Vh0suCmcxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmG/qzwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmG/qzwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762401593;
	bh=+poY7snrlfY8m4YEeZnGbyoVMNmx5CaIcM6o2oYneNU=;
	h=To:Subject:From:Date:From;
	b=DmG/qzwRi9XFd71VOqgis/tX4L4MVf1BqDJvJ94rNLzkV17GDhsSGqVlG1UMJP7f+
	 g0azTxOZ16b6340L92gf+emOokiBoNq47ULaJmFYaMTudjii5KrayubTSKx1RkbWfB
	 7KFkn3MgatEsGo6y/7t8+Tnqxr+z1n9cpSmG3ZLIyLUMUCklxGF7RLTUTZZt+usWQj
	 oRBm7GZDi3Ii5EITG69Oy4LJAlzqtV4f+bK/0F+B0RVZ7JItwjCm+NzXwHJv8xPgQu
	 yJpvEYZExJLq3Bgq/g3MxUDy8rJt2RF6Ga1u485F7rWvIP5fWAdK6pkcohmdB+VAi1
	 GuYgydCRzHO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C72CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240159358.12333.7373933701072352459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df53050b30c7220aa1e1a5b45abb5eb33de8c04db0599409f43d5a5d8c3bae8
Date: Thu, 06 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762401593
