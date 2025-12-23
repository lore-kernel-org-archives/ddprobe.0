Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1FA3A1E7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766464434; cv=none; b=OGbk4aCqBqUR5ijlaYMA2Nqdk+kM0q16pSqVllSnNLGusNoQGwF+4fVYPpQj9M/OqJL/u8NAx7mzoZhfOg3cepGs+GUpdWHVK8/o8ao6M6sSdSjc3e7TTFIqBKjOo9MhCfSvIRqEts1ae6iTlZMmcWHWk53et0UCmxODXD4MBlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766464434; c=relaxed/simple;
	bh=oOvPKZ/8hh6AaIeqhwldPvgcLdMhe2LF1bGA7B3Wli4=;
	h=To:Subject:From:Message-Id:Date; b=cYGpZrz53W1tdefAaQmZ/R7ln0ZfEWA6HkEmC9Q8x/1KI4fqGWeCY8cWmpckRjCQbHuSKG38XuToV0rJQEcDhSZRlyxiw5gA+qctmjmCXnGYPr+Lm8jSu3Fat/HA3B4F2hlQG36vUD27KLeKoBF++rLDpTn3ZxbaZEW6uAn7d0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzQfqfZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzQfqfZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B00C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766464433;
	bh=oOvPKZ/8hh6AaIeqhwldPvgcLdMhe2LF1bGA7B3Wli4=;
	h=To:Subject:From:Date:From;
	b=TzQfqfZstjIzLbj7+EPnqdbpWyKnL4YNvYkq1r2wmTX63Bpg475HhjNwvixYbF3+H
	 hlZtpPFtbx5ELa0WQjasnCmy1oYvPGkVA2HgSFtNpgIVsgpPon/00JuaIumL/9cQTZ
	 sQph4PaTZhwazd+hYjzG6OMvubEkuXAlPzFi9GH26D9mbjW2YJIH1c9b5yraRI50I0
	 6nJZJJya3TsejEOj1NnB7n1Uc4MisR+5dYW7Z1z20SkinkmLvEZiDkFEX7oM2Tz9Fm
	 zXfqQysDNcHbez+vASkhMRajVNkPvrOxbBLlkBzxoFu6ZEMgwH7M53JYhDq2u1kYiI
	 q2+0kkIPLonGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EEDE6B26E
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646443357.17013.14002899771654695024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8492c16e1d4e24b627ce12413df439f11b922a8e9eb2d33f2edeb42b8e16b9c
Date: Tue, 23 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766464433
