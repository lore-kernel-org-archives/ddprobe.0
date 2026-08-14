Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A4E31813A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786745434; cv=none; b=WfY74wEGpdubQVIPcCy1IV0xpP70n4GtjHgtGtp7IRl5jtjExD3DyuhcdICrTtn9gzYW5DqUsyGA5ziOxVSmz9E0m8XFlNwH5icNTC6T5xC3hTVi72fjaiYgrsa5JirzsKYD9GUPpn4ZAU9r6vaNQX0hJEvwyV5BAmtEvwS88jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786745434; c=relaxed/simple;
	bh=9SyAX5+Y7JYbvNMUUOj5cW8EaFPk+i92DS99Z7K/Cbs=;
	h=To:Subject:From:Message-Id:Date; b=XpcBc9LLXKkRBu48iPCxP1rkc1BSdDrY0i+SUF11S69bZwiCrWGe32Jy0m3sfSH+gZ20sUGwa+lSCC3zssqku/wKNbZW3boFIPkzmMa5YEp3JKqb620VSSgcRZU7HBoVE/8OAixtBEwSTnbLjRCY36sYxeuK+TOoiIIPS3O4uOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXT7OBzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXT7OBzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DFCC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786745433;
	bh=9SyAX5+Y7JYbvNMUUOj5cW8EaFPk+i92DS99Z7K/Cbs=;
	h=To:Subject:From:Date:From;
	b=UXT7OBzT7idzV8he/wsCA3XFy7gBbjx8DONb7892cyzlrf9RUhJHrEYWJi7HmMxrT
	 zkOyDR6QvH/BgQFu1g0W+6fdciz55sWgFszyms4zuzz0ZfF+KFw+5LEbgnvDYCHXSB
	 6ceLX9axhII24lWC1Avzs+f+XHkvPtyBMSGkeM/9aIVXuTw09nf0rcd/QftDHJmpIr
	 1Unzdh87a6GlEHwLGyKUqYDKp6maUbq7uFudYdJ6jQnzu+eiLg+XZjHJzHrNMrxPqz
	 4sXhAtBxbRH2GR1UGYNoN1e4rqIwidOUH8JuGx9wAPUqvAw3YkXmTJJINsDZUf2LNx
	 42+8ODO8AIpkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFE1C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674543369.20285.3061842588191123981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ae340ce735d7dc1bd5297560760f0b415575ac271c0dd1e5408901e9ff1b19
Date: Fri, 14 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786745433
