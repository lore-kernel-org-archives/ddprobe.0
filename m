Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DFDA50
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712381896; cv=none; b=TX7Z+FgJxEeNRtJ8v88vnxtH15VrxBVQu3+RqHDFomnWX9r6Y1sd3W80izwZNCzOxrfz/QavI46VX2K3jk3KK0DEjr1RsPIE3oQa/wsMnyxGIdr5Eee/vzPxEPL+ucxKWYWWpN+LmMIFeXrJ+eRYUdg3jN8Ed3islsc/wdKENe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712381896; c=relaxed/simple;
	bh=us26HhDH3aIpEZ2obLZDS5tC5HK4z0u3125/EGdydlo=;
	h=To:Subject:From:Message-Id:Date; b=E2+jvwGP0CUpNl2kNTYTUM9C2U3iUwYfBkPXXsKuj/UdXfg5ALVLqfAjnGL9yz9HiT+9T/TyPklEuVXgRXM9OIHyQE8K8Dr1CrhIhDGU0nefo0yWOisRbnA5b5/8lax0BaC2Cv6opiUNbqPeHGXLCHg/ReSmLIPyTDzxrMNmtXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs6MgGKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs6MgGKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B98C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712381896;
	bh=us26HhDH3aIpEZ2obLZDS5tC5HK4z0u3125/EGdydlo=;
	h=To:Subject:From:Date:From;
	b=Bs6MgGKM+2F/UGtqyrdzbRhGmngcHHyR3FmGt1CztspQsDTuJ5pcBtkp6ZCYTT000
	 hXogPUKoltYaPwLAKWM3Rajya+/UeVXIt8YqfyM8lkZCMzJL76Ql/mv+Ki+Z0ZcNCZ
	 5h8RZMS94Q83Ch3Y73eqED6r1a1ctkxK/mwk58H0Iz2+r4EQXLJZbcLXyqPTAQ6+w6
	 ZwS8xR7+TWXQAmGVWns8yACbJ3d5MpvC6hXAgVF1Jy7xnRzoih2g/AkBQHvmBgcv0l
	 +KsE4Vg44eEPhYswvmBhrRgltczxSOhqovez7nUa5rKhzLPn5U7U64e2VW6Mluax5t
	 GRwDdwkabvyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F999CD1292
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171238189638.26251.18008850380698057031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a3364b8df68313a1ff63ee06eedc3b7daed3008c8f88c39dc68564403c85f5
Date: Sat, 06 Apr 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712381896
