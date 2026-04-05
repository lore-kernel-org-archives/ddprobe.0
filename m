Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41ADB347BC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775366134; cv=none; b=Sbm0iv0OSU54bD9ImhlWiUKTFGVWHtV6qCqmZpX0GEuBhHn2NcRnb4DNtiSsY6HX4OwcFJDXIiSx4CEvRk3qVFGQkKK5WeRsgBl0WK7oFDLPnFyI60wrQEWaXvWUaTcNzBlS+v04IuMJtKIjsg/W8KiMrM8naOJ9yZANsxQfUB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775366134; c=relaxed/simple;
	bh=BUcrixmS9AoPYvhj/wQGk3ZpVwDd8dPYeVYKFVqNuXs=;
	h=To:Subject:From:Message-Id:Date; b=F4NLBmiCTXarU7UXDW31O7EdVzEFtv64z7b7sg3woGQsTxRzXJChLQqUSUv/cdf1DYtZrwCLDp13opyrdVVfoeFjw282J/TfmWAhieOH1/dhEWNUo7eUT7nKHFUqz3H7f/SSpWtoI2wL3HlAxz4Tn3nFUp7nhyx0RULowmidrEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K17WhIPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K17WhIPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C5FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775366133;
	bh=BUcrixmS9AoPYvhj/wQGk3ZpVwDd8dPYeVYKFVqNuXs=;
	h=To:Subject:From:Date:From;
	b=K17WhIPNCvAw5rG1ENllK0xlDrdmiv+tYOEd4a+bRFz/G81G0VndQABUn5L/uq+a5
	 KZVkvX/shdnee3uo9fo7fvjwddJ88orsH4TeVs7UbZqQKh9E8e2qBY17DteRIC2tiP
	 pWPWrxO6g7tX2ddXqhup2A+AHhkkJbGYjv9fTvYlN4YyNtqJ7TljOujkggIEx2jx6J
	 vjgMxQk5hrJ42TcaNQ6pOwFjw3PfFC8vNW5J46j3NLbcLmyR6Z1nI1KKagiB+RYgx0
	 MDYOK3URtlOzbFHpSkY84VZCm1cdFlz8RSBVN2zGiJs3DcBjGLv3G9tPD5GniMc8Tg
	 w7Zy6JfIYJduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24A7E6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536613370.11499.3282704163436294513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ba905a06c2fbdc09c38b70997008fc28aa4bfa3f395a9e00b4c75066f83a2e
Date: Sun, 05 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775366133
