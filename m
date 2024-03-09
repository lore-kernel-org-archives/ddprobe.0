Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CBE15BE
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710004097; cv=none; b=omTV3nvFdqAIowad/hhBgc4o46hVYluM3fpX27FY1O/w8EFPiHe8KcoqhuQ+7XQ4OBu82l4n4kwjQXH5K4dyHE7p48y+7CSXO6iaRhhyWZoCHpiFgcOFzbwUEVoxuzsjoo2KvYTu4hdHIYjvO2lBlucjbvBcgSbVpfjxi2DVhsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710004097; c=relaxed/simple;
	bh=L/RJDInPjaukGfYz9F5bmLrhzRS2w/a75Wu6Q002j38=;
	h=To:Subject:From:Message-Id:Date; b=F7QvpUtQHbNB/mc8oK8dAidVju3qoHnZb3kLkTZjAJWJXWwEKflRN5/k77W7RUTlluKfeV102/j1xhtsFcmrS1HEbkCdg/vhiXB3p/BO6MxDwBCl+ei1zlap5ZFB3psBn2KY8YVQgC4cSs7ExakjoXwa0qEn8sVG++rtGpGU/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnDJQA48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnDJQA48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8A0C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710004096;
	bh=L/RJDInPjaukGfYz9F5bmLrhzRS2w/a75Wu6Q002j38=;
	h=To:Subject:From:Date:From;
	b=gnDJQA48DJjFxZVfvgCTJzqrJCG2HWtXRi1ut2BOqP3+Bi6762noc6t8QbWhamlmk
	 kF6vjLl2lN4e4Ny3KuIFWXpm6cXQQwgTuq+HrGgscRtwtoYwAoRaLYLKcUPlTuXjgU
	 TGoyHhCx6IeBhr6IPj/qVALNXbQkBLI6aALEqCWcd0lZmiAOB/1sqCjYwr9X1YzYiL
	 W4SbB6k1hRol8U7viQRaf6EQY+1uPwoOA9+/K3grWMSJTt4zLvapnyD8H8S6cNX954
	 qBHot3gRcXOKfaNT7pYkaoNbDSMcWd7YKjMEqqKyWlbJMQ1KTG2DewrXhbM7VGXvGO
	 Ea00KBRsJUwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E94C54E41
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171000409637.7276.2767734723142365074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cbc31c86b5107d919b0d189d27dad12e6560870a7d9c249001db1fd259c56f
Date: Sat, 09 Mar 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710004096
