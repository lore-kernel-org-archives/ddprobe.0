Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF31834A781
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140993; cv=none; b=jPkyVsz/Jy2zHN4DiPn8LufQoSJmYO+hNv++QMbz3eduVhFJBCft+KD3rWYaw0DFDjzJ7SQYR1orWXoYx1eUacLh9bTUGcnU2xR7g5oDo2pEXUYx/wNCFN8vyJarjEiryn786893NJH6//ZhNxsvWYZqYPOeutf2nLWyHH8r6G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140993; c=relaxed/simple;
	bh=hGLH/g/sHxOFSSl5Qm9bK+hYcwKi8/yxENy3LcYG7ug=;
	h=To:Subject:From:Message-Id:Date; b=gd3F7b79JYw+/4d/TyBusnCrEUe5My7k8rhIgcdJFZB5e1kKwQT0PLMpBM/1gfZjb1qBTigqcF9r/RI5dHAnSsSbri9jpA78FuLkVfb8GYQyIeLi1aEb837xGyWRGNSJhxvpuC11MFV0ZTgCCciE5GsqOZW/fuDdYRRSw5NSJro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSR5hC1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSR5hC1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E54EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761140993;
	bh=hGLH/g/sHxOFSSl5Qm9bK+hYcwKi8/yxENy3LcYG7ug=;
	h=To:Subject:From:Date:From;
	b=gSR5hC1J0CAMI6UJn30/dWJAeUyjRBsDnrbYXGkN3IsYraIly67y72PM7gTP1Tvuz
	 o0hdjCbTdLwO0ACf+sqLRhml8nODraUnCuf2FiyTue3KHA052oIz2otTapiyzD295B
	 usDcuefePWfhH54/0JMDsaSY0r/NbwG0/o5wKKPS83e341aPhPfqwx9pgDs5gAxHnz
	 ycVamgJNLzCXKMhGWkKHfMbxfFaK43BTXYZMkD8d8Tw+JtsXsoem4rI36Hf0GpKHJ3
	 l7lcq1fcdY54jhK0UyFkcJjH0Z9YpwczjQIqS7u/oLj/FbAhNhb3GFLQvVi28NFw3C
	 lO7pnEFg73yCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE8CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114099357.30533.2421912056593026554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64319033487dc77abfabac28aaabdefdc217c0287764b27bbc60f6c2b6c6147a
Date: Wed, 22 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761140993
