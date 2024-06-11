Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637F6153BE3
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718146703; cv=none; b=dxLwQNQ3c5hjx031T1wQQbIf4RDhaC/pUnI1lAX4bl/TqdgOE+rUH5lCTqJc390rq3V+ZyqgO6XcTYX7blq8S2HM0K2Fyua1PboLc73VQOqBNjNEFiPuW75Pvxi53Ryhjp/bAN6HKDXz2yxd2uAQNdurKPyyMUknAF66/XNUP0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718146703; c=relaxed/simple;
	bh=8Ou53mbagAkrWHSQz2f5L6z+1zm3mPMNN5TD1XqO8gc=;
	h=To:Subject:From:Message-Id:Date; b=NO2ff5NC59igruiJX8g75L4W/dhDUKnO3y8H19iXA5Cg8oVnleP4b6cfu/SlTa1N+3KVM282qSfJixyo7GWJQjEeJQqyT4I9LuWXHjdxF6q/cTI82MHP6aeja9kzXc3NedFjSYmvYjIV5yvO8J4JXQvTPI6Sqt4lrbh6owhcNVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiNuhDKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiNuhDKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5CBC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718146703;
	bh=8Ou53mbagAkrWHSQz2f5L6z+1zm3mPMNN5TD1XqO8gc=;
	h=To:Subject:From:Date:From;
	b=AiNuhDKX7bL356MubRK2OjB5NrT2P/Ff9Rrj3S2eIAEZxsfnI9VTawuW8qiDUoxBs
	 Fa2BF7bRtQnMsrloaUJkDSNdJIm5WKFfPNl+SlFJj2InZeUk2qqIS2Uhx3wB5WfT2c
	 0xWg82fikbLQsEtiXdTNg/AF+QERakvWY0mOTMfn8D1XCPbuNDtn2hd5IVNRv52UPM
	 Oym1WrQ9JiBq71i9hcVszH0i/dxi40g4M/9UsXUkIXf7/1wHLZwcKJ6cBHoJ/iSNDf
	 Xp6Wr+valpqDTD0QHB1I5aA2J4MSW7LpSfxM2cA0FciokvFpBSOqjknnr/g4Nzs5Zp
	 N6WUjfApSpcMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6590C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814670286.5368.2581521648471089743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0469ec12df13480b8db4055b5fe2ad31b4d135a671c4e3b968f81a8d32521418
Date: Tue, 11 Jun 2024 22:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718146702
