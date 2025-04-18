Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA892AD0C
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745014194; cv=none; b=DiKSMoPsonuTmJGJgj8eQnFZtRAnYSqWlVxTWs80+1eZ5qcz+wlC23+k+odJ7ucEZzQpk5kYQUjfXGM/xiXA4Nfw81wuCtdGLZ1Vsjon+rSe+ut/tE33Q3yDFuER17rfSHYNFQ0nvpHSD0dok183Tnp/t8PgojiBrqE+tzBS8AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745014194; c=relaxed/simple;
	bh=PgOsiaCO64zkL9Iy36gMmwR6olgf0hn/HPY1h8xGceg=;
	h=To:Subject:From:Message-Id:Date; b=b8uIWm220/dhXTcGtTmNXTsGnZRSfBioHHahjWpSk8OQvuU0a6vM1CI1+LeBr49fpm2nsxoWZdeOs10NSz9PGDdB5VAHQHj6yehgr9KTcdxPn9JHmqk9AQTHnkZ9ZRht/nbu/tmTpWvkbPhnfQ2F6o5z9UvmUrEIwVMpVwgRE2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/wkFB5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/wkFB5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2315C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745014193;
	bh=PgOsiaCO64zkL9Iy36gMmwR6olgf0hn/HPY1h8xGceg=;
	h=To:Subject:From:Date:From;
	b=o/wkFB5tQoatbfiFXPZmxWkefK0hQtGPUrOagYa4r+N2cGN9utoEVef21QvP7Oov2
	 9WdMWt3pteca05hNd2NDO+9elFf4ovjTc7THjbyQ/S7EzOqqDqdAnDx9FomoKPKNgR
	 yDeuPuC1BKy+hrmZ7H9+BW3RSh6CJFa5RJjG3+4j9c3lFnfhvKLTQTJ7gWXRWbNwul
	 dWSVE1Eb9gGi9u7R05AORIKvzJ2JOhMNnlLuUmfEdewYhc0cNmjk0rE+jBzuHUPTIP
	 5GJlUcuaHod3pJ1rug3yeTA+CjPBIjvCvNdvul6REoEx+E+ef5eb8cAZiFNge68PCf
	 4JbQUc/SxQ05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE91C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501419361.25206.10511845954342423758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3e81456972a4303d20d4d53e5e851ecb897101198cd7963f8d4815f598bb2d
Date: Fri, 18 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745014193
