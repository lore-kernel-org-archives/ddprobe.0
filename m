Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252FC23C9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736459154; cv=none; b=IPJ5cixNNzL/2mYjR+5Ur6ZV9pwF6DyED2YQtaed8t+1KL/htmU37MgXTpqv9ZAPyQrTfaKW/wIA9pqa3K9F2tM8ETWvgJtHsUz/JDuGKL74cQf5O0h4/PHdGWcZydZvwuFziedFgOO78Si831cdlCQR9nGVGpM4xEFSdqD+7aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736459154; c=relaxed/simple;
	bh=KotwtIbqYvreQponFtAszscfEdTsgZDvdM2Rd5kewKE=;
	h=To:Subject:From:Message-Id:Date; b=fd2M82zPV8VLW5gnILRcD0huQ/C/ij+Ep/ZH4Wp7jR2J8u8I0okaUnLgqrAVZy/KCYUQo/0eRr/f21HgmmWWW3xRAMg+ZDSOwoRBuq4vY4eQMafITppaBTdAEAjuWIQozG8LkJEqwG5ciRMZtYsaN5O1h6QdEgrNLToIu94UulM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beUwxfip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beUwxfip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC9EC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736459153;
	bh=KotwtIbqYvreQponFtAszscfEdTsgZDvdM2Rd5kewKE=;
	h=To:Subject:From:Date:From;
	b=beUwxfip4kJbQphc+sW/EOEVsm58Ew2VQVj2lkaDXb2A1Vi37XpukFUP/kRVXK2/m
	 uSCs+JyCS8TwnwlObRML6LEfE51Nn4z0lb4CUFWRrPrtXOdGLUk6GHx1sl0YPyqWa4
	 OBuu+wlwitGcGWqYijWdAuhcoxw6DmOWmaeDhCMg1UPDSc7Jkh2e7pf5B2qWkXGJYL
	 Ky4zLKxmAgoo7srjNPBzQuWWF8/oig3+uhNgqQzqG1be0wqdaKg/7PLnZ95NnH66N5
	 nGCsNgnROqhTFZ/TknhDzzIYroxZmkVv6/y2bAhfzoyThnkc6AgdzsPYEiGAImFhs/
	 zwHlIc0TWpqMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92349E7719D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645915359.32057.12418743217552304731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5734d5cd11a579804af4655efabca57138a0ba9dd061a452fb20f48e626143
Date: Thu, 09 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736459153
