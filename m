Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4022371F
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746100195; cv=none; b=TnZGjT1mBAuJt/Tvsg9ecQjg6mXHifZrYxSPFaUA4UMS1cgGHeW4f4JrYuzt5yLQqFjrU7m1vqHyjX6copoW53oF4OTXBfkaQdyJIPwbsD/uZez6LCAmcU+ZPVq2aGopWXvm45RUzulZlR9/lquKT59U1yimvu6it1r20shVP2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746100195; c=relaxed/simple;
	bh=uPrzklft02xtrsGU+uoymayZ84t2f02M619eiPYjyf0=;
	h=To:Subject:From:Message-Id:Date; b=ee4N2g2GSOJIj4uXKp3MXc5O1bxg9QQ9bOPl+ZEW6/Fd1amKNL+tuZK9gyFL67hlvmMqtTrRysakX3jzOUiSyjID9Tjufg7thWh34sVISRv0hNfOMwKxKLFI3f7Zlwm7L6yZNWYT2rRG079cTB7Yu+tnJc9pFhd4hmNC6r6ISDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDGZKvNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDGZKvNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE1DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746100193;
	bh=uPrzklft02xtrsGU+uoymayZ84t2f02M619eiPYjyf0=;
	h=To:Subject:From:Date:From;
	b=rDGZKvNL8mrk3zZX5XAaA5O7eah7IEEasN5gpWa9Gy0NhxoHJUbsQtWBGxPFKLlzp
	 eqezs1oEiIJ0B7OQCQ6tROA8FCyfW6o5fQzC6MjFxCHp+S+nxbICRj/DA/ZJVUoT1w
	 AEy5QG2pOoPS34i9DZev2hpgQAxMZB8fJTRqZ023NtKf0rNH596uaJtVuyC9C+1Ub9
	 R1Sq4rCq2JrcdbeC+m0b28eEQpyVpcD5eLB5XRMdP30TjiaTsxqko8yBJZAS0mWBuO
	 Ww2pbymA1+SuZr4vo76vLM2/exqIP4/Ctw6rRDKO9G9Dzi4eKQSQraaPrd7lPV65sl
	 2D1Ow1xJdFPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F743C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610019358.28037.17016560087117252055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b585d17b3aab417f6624b5c31839089c170dee019fd6b405d65302ab01043bac
Date: Thu, 01 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746100193
