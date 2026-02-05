Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82F41A76BB
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770326633; cv=none; b=Co2OzCdLwrUuOX4jMI7IB2hIH7Odlti4sYQ4FUwqZfvU4LP+MdMopHIzHYDKpPhItvbr0pqSZTGliVvHi/kXIro+MU3lUNrDtrZ/elBc5u10oIYLsXPA0hNSxYS0BRZFRkSdkTW4t4IQtbcrXn/tZvmCH3qKHNhOJbMnod2D+Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770326633; c=relaxed/simple;
	bh=ZetRFdrz9x8wgHAV+lranOGJPqOElcLICTph6g3duQs=;
	h=To:Subject:From:Message-Id:Date; b=ZpZWvDh8WRs1t/DFaKAaf2NHPW5j1RWHXJ5l6C54pEWyE3UvZqcxYf166/LJEAmFV7Wgq0svdNvuuEiKhvx5ti9v80aNcJx59o8GDvxtPH/tZ0xXl+wjciCsRWFVXWmIlja2RTPbs/vUtG+ptmxdyk0RWqKU84HncwmgemOjkC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2fGdIUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2fGdIUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A557BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770326633;
	bh=ZetRFdrz9x8wgHAV+lranOGJPqOElcLICTph6g3duQs=;
	h=To:Subject:From:Date:From;
	b=Q2fGdIUtjFT+F/LqSJPDpe32E6nc+DB9xdOokJnH9oG42cjbLD49USQgtN6b5ndoG
	 lzXGoRVJleQaVrADAfojDZgqoPnNWHz0em8Oin5YaqTDdPohoQ5FtWMQimeq7bh9Z7
	 rnlhFhSEGGaSWjSs6fh4WoQOo2Bd57c4vzpkr7gOINPzOy61lZzOFSJ+mazgkTlwzZ
	 v3hmdPPL0A4DUxn2vEVyYoLRPiSOT4EEpm+/P8LzRj9k85ZyzOazsuixwrcDhWyWz4
	 w6ksbVsdM8r6W7pPUeDpDJ711kb4JwEnaNynshkMGD99kr2vT/dP1yk++NQrpS4ylm
	 CbJwgaEVcCNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF9ECD997
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032663358.31836.16610082112643378869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106f5f32d64872d65f7dc9263d0c2535a228cb56c89e8402512d1fc4a12147d7
Date: Thu, 05 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770326633
