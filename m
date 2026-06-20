Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B480245012
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781975794; cv=none; b=lV7Uod+SlOQr+oG/nKV2r1icGj6iyopbOqOc8XZ4j8/fQz1CsGdkMFa3D2enpNkT38hllcOwdBkN98KSJn+gQeZGKe13RL/SSbCOgfkCDj5kUHuTsYcofMAxDBCxcbWRkpb9ptFAoNFnpmaAh40F8nteF3VFc06eUIDMrElaZ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781975794; c=relaxed/simple;
	bh=qIIw7B4r43TR/35tAGZBFducwnXM11c/cA4nuD95V0w=;
	h=To:Subject:From:Message-Id:Date; b=OiMVafpM0AxgAnO08Ymd/nmLy8E5ZZ5IGnWbz3JDeicpMyZQr5iPyx5/s8Xd2zdSTZjKZMLZiXIU47UUkSgljauU3ByPulxoe6Tr4akeuMXPGcGcaOvy+/X5uu4bvX4ykFR1xN4uXD/rISkxWap/KjIqYO276x7Yat7PqiQxW8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4GRmhNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4GRmhNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB44C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781975793;
	bh=qIIw7B4r43TR/35tAGZBFducwnXM11c/cA4nuD95V0w=;
	h=To:Subject:From:Date:From;
	b=S4GRmhNoxmT9lZF7ub779KQwDVbShK9jE30ldnym6r27rz1cUFqc232Uj/UkAbZd+
	 2LUcx7yxVM7DyJgT1GU4Q+YKYNo4GT3nDus0ojJ1n83FiQ9Ezu1cjvtlrduzQdRbxn
	 dVKxRlQHrTswvSZrWTnozMES5uj05W48GnuXpZfRpXdr5AtG+PCWA2mZWoxDvMc2e+
	 G32PnfkGFLUNGU8ZL3ifW5bs0LOO+yr/afG3mXaIEGofunSJtqG+SETXDg62YP1eKu
	 e1ZBkCPdqDSAWXc3aVp5nUD++Ch+kNda+SMeD9DpmlFElIL0QYgAvD4LdlmkrPPoYL
	 8tdJqmz5MiLag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B378ACD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197579369.24553.6550578267619043996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f938cfe3a3cbca1face230e9231f48dbd05e3031770a5db9723cb4e8a4dd553
Date: Sat, 20 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781975793
