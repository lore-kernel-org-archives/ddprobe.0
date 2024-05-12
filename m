Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C958BF8
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715478743; cv=none; b=VEf8lCChlmaB3ZIfRH4a3I1YGuo6gptzQqLyE1Lmk5KT8UiGDk8ZSlAXi4sUGCE/9A+Ju0NiHKR00ubRZ4UdrZJZ9JlS3lyuipxC7yFnXecKJV2K425gXV3EelDL7PrL1yxMyfGnAf4wqCjNVIv9BKRfZevvwM1jzV+8klEoNVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715478743; c=relaxed/simple;
	bh=ARnR6rRrYPzorYpoVCYUl8fsHmAzyRwmcBTLsFAJ8J4=;
	h=To:Subject:From:Message-Id:Date; b=U8g0uPivEBwN30ucRhfnBQS6dC1S2FF1saEyt0WS6svJ9694ca/cRPUrKSSkWD2jZbyRo4zHdK0YGy7Vl1b9rzrDPqe4YxISkiXAvWDPF8ZrozwirMXJGkIbw9hlCdbBVEqmebYlHyf9SKmcTqGaEepsOt5m2/9dX/uKKp864Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbsgdrTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbsgdrTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FEAC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715478742;
	bh=ARnR6rRrYPzorYpoVCYUl8fsHmAzyRwmcBTLsFAJ8J4=;
	h=To:Subject:From:Date:From;
	b=XbsgdrTziR0TShq4umYCApKidcQrcwTQPsZq6Q2ZhQVlYXLa3Xmlmw7ZJGXn7FXcd
	 PlEyj46yzzppCPTuXsidfvCVaQL2YmrdADdM/sRyXeqVt5IxQuYk5JYS7iK7d0H5Vn
	 Tc0BnJ7k6gr8oGoyiKOi+UymupsQWowrcC5rJk3/tokLaBYcfJWSA5DOcEWznR079D
	 DMTMF6woDqoGUUJso75pcQkp58Hxoz8AcsNoNtdjo8sQUyg4oYBJ7LMNQpoNpVe6o3
	 NJcxulqOHCdowECQ5u5sQbgoHYrXkrzqX8GYBLpk/RQgZeCQSRUiPP/zZGkrP0TVD/
	 prEvf/NDlKxHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C223AC04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547874276.18180.7628570184977125266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9e6a2a69268c6fe1faa0a2b6e8a1a16ed58eaaa9176fe2590067ce52f436c9
Date: Sun, 12 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715478742
