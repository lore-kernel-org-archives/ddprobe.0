Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F1221F26
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771043094; cv=none; b=B+ZAWTwYJfwwJRe/PK/Cf/qDenmDkOoAvufyTY/NaFicP1kDzS5IeYO45hSKmu9G/J7dD4uDHSsUonxsRODbOTVbqHNOESvstRddTf7qWeJau6ukFRaf2MCBSjiQSlwmFZT3nmuLnJxMDdvSM1D+9f+Esjtzz84HNInHIwNp77I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771043094; c=relaxed/simple;
	bh=pvYh5jhwytLFkB7nq9ysOhBSfYNRIHFP2IWnnFSvkkk=;
	h=To:Subject:From:Message-Id:Date; b=lVZgeU4bi4imv58KJmXh9fvTQapq89Y/aWfchEQXpTbOf2yCEZZFXqkntKRSpuPsVlUsSmr5jthLrL+o4gTreIYFLV3Iq+buxaKy0cNgltygqK3BfkAMESfr4KEX+DVKai4KZeRY4Ul0+RepvlGOAmldP7rcDvsnPL/P79dpoXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/uP42/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/uP42/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D64C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771043093;
	bh=pvYh5jhwytLFkB7nq9ysOhBSfYNRIHFP2IWnnFSvkkk=;
	h=To:Subject:From:Date:From;
	b=W/uP42/dc3jYblj8pl56QSmIqzeK0INIgtw4kYP12jm2ll+Cw6PU0y+5gKlIiXDfz
	 zm69JdDTti66EPt5hh3uLx5QN4DbAyqlGsu+itSz3Ml61Nqz1ppoSTvmZs3+sjtXPU
	 KWpBBRacsNQx+j+73TCXBt4HtJWEru/QZ9EtVf7BwaMoSbtFjjYcvlMOBW8eVpA9vj
	 kOZt/IdD9eaT+m74NinyMlAbiBpMXtf4rDApO/Z+b1vadONGYdATWPK704XNYP4s1l
	 PNqH9yDrXZuSAOwlvn3a9ohXzaPG3+cxJaaC6FtD2r7bOB1HuDbFuRGeHA94cfew8C
	 9PWI1S7coEWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35A6EF99FD
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104309361.8209.7842072906476535949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bf90362a6aaccf0569ea16c1a76dfcb5058e8d763aa8c40cef2c8ebb0c225e
Date: Sat, 14 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771043093
