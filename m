Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1D15AF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732909554; cv=none; b=SKiuiTPDCNlZ46DwsvDeXdP1BCqk86tHMB71wjSk7IG9TsiLSotOBS9MJlRbJ18MkCULuLuPxHn8btxhXBNEhnnIxFZtxuU//hChb4/rqPSaBI2hU34uNnUj9Rv0ETjFeRYAD6fT18z1XTyNBLQt0RwW0zdnvlLk20ClBWl/YGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732909554; c=relaxed/simple;
	bh=0nHIb8M7TDIV2qcKytPemOpSkgLhev12izwMvlaGJ+w=;
	h=To:Subject:From:Message-Id:Date; b=G5ajKKXKXtWVlS4DNZRnnE47c/DDy1G36pTafuCfj4NTKJQFSzOBhlJ111+CK4zw31BjX/F3qpkHQ4Xn+rkRvIzZvu+UVSoO59GdDlGEWeWrT+XxoXjXVpDOtJgJS9adGzsuFZ30U3NaxOucqIYyh/WfU3QOTz0x6yN7JZAX/Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbY1wMeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbY1wMeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B785BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732909553;
	bh=0nHIb8M7TDIV2qcKytPemOpSkgLhev12izwMvlaGJ+w=;
	h=To:Subject:From:Date:From;
	b=AbY1wMeRblIM7INjcIAAjYAyWADFDgshOJ4PE+mIokQeeM9apCQBxTgBFh8jFTMM7
	 7nTmUWtRvhwnAyYkfKxwJrSnqzbruBgPwIB67y2fRQszuAevSaNxiwuT0UZWltQ1QW
	 gCvkxJ+ID1bKqrj5kB6CnvAyl4HbyxU44AZ4/Wmwu3y1G44EnK1iiyp5SPtgXXBs3q
	 SewpzCNjiHOY7J0XlR7nWOYBYC2rillrdPr1pdk42SB/r4V9RAwOcJXVV3L5iHAdlS
	 Thf37/khijgmex95Y86oQKBoEM5LgGcY1rkZG0RhpcMQ3HKFKdLIJamOPN1IBqtQRi
	 YyhfYcgkXwehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A299BD729FE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290955363.13903.6675563187671179242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027c5c8aa2a8db42efc9aa88765e64664cae8966f38010286547dc9b37feb9f
Date: Fri, 29 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732909553
