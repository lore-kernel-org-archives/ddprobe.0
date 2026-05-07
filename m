Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1723535AC13
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778138854; cv=none; b=OfsrOPhkDf9A8n2CP/0oCY10tRsZTuZECL1QbWdfE6jaIx+nlmJngtVPIHxjcga76b6bMc7EVPlqvG10bm/Q0Cp/en3KzqYPmQIEDRjMUWgYLNXjUk6xnN46MSgmqLzy9fjepKOZXpJunNj6Ufv7UbjTT8s/vRsVpraWIDNjpJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778138854; c=relaxed/simple;
	bh=RcwMuPAymP11BZn4MOX7HwTf2l0+iXfxD3ci95OQizw=;
	h=To:Subject:From:Message-Id:Date; b=FbLiild8JtLovSAopWMNGXId1CzckL/WI4oJZ8FNJl4fXfxC1hiC191YSN+8VErTqTIKKu6doM0Cwip+MKqU6SAn+MIBbxU3u3ebWvLGxAcTIAxhZ8E+xccW7whYsHOf3VgGkoy4g1vleIRvcFoT5xHNp/eBylzX7BzA95ZHjH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfs5PZ60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfs5PZ60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF63C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778138853;
	bh=RcwMuPAymP11BZn4MOX7HwTf2l0+iXfxD3ci95OQizw=;
	h=To:Subject:From:Date:From;
	b=dfs5PZ60tEtcf4cMuNYoGB09Lz6Z2LDrGaZioqlHNY4Z/jAdUDGPyHVVZY3hbq4vz
	 s0c3PixYw5wJ8OzlAGFDbG/3XDtg5UVzBVx+darUX1F7MK0MrhR07260/1djy9WavG
	 iy4TPAQ3oKq8CL+pJIK++MRdntJUEIbLzce/Y2l+Icn2gwGOm4/6nUo1qyqrsD3FAp
	 0NgqmcbjHx0tQwYXHFBbW8U2CHkNbx1tV3jo4ZJ1Uu3hLmtnUC066gEPe2oZVNk9sy
	 jhxl2hbNUPVvD59mOLD2LrGbhlpJVUcoFKHxsPXugM4k3EG3UWgQ0OJq2DHPWIz3cb
	 ISBjr+UZg4Bbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A4CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813885368.6524.9130595375578849391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df95169f5e98e5113e4056418baa1fd6a35d2641056859e7db806f9f7d8a2446
Date: Thu, 07 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778138853
