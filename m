Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E22C44D685
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775053534; cv=none; b=XDPBWF4CAFP3LHT9mo98zEXSVM3snL+g9IZGKxf6RFBO83mcaReI/OH326NZAWcvET1iLSdmj5BnvXPMvWn2YaZP+ElkddVUvX3ct5atvKdg+zOXWIuA0AOnUvZAqx225iofZF2aRQXhoTrGBSv8VCt7kZ+wLIo4qCziKgJ1Ly8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775053534; c=relaxed/simple;
	bh=Uu30Ft5WHlt+LoWDfsy902xVzHf5htZE+AKtOk0HfHc=;
	h=To:Subject:From:Message-Id:Date; b=cNRd/W7bw/BBx9M0dysYO5Eyow7q4Vsmr2T6eSh0oqq8QIxPkAxV+m6nsPGepphAgkYp5czQEIUcKbcFW0LeU4yq+us31oI56i+ImJAp/zs0wCQ3P2T8kG1N/vxstlvCz9Uds5IEhhJaHjXSUL6r5RHuTO81WuJZGHoJHGiEH38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Em98m8AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Em98m8AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0FAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775053533;
	bh=Uu30Ft5WHlt+LoWDfsy902xVzHf5htZE+AKtOk0HfHc=;
	h=To:Subject:From:Date:From;
	b=Em98m8AJe1DjRZhrC10aPeqRQYm2Mb5F+N/Z+Dg4P2ND9cziTJO+51tRCgDBaNy+p
	 ehpOnWu/UN0FXtVsi6+A6MHdtuJIDc9YCuYWy6eF46hPD+yn3LA+LNA6ry86c+96/5
	 J3p2XYie2pSafA0V7tPumROqqn6RxJ7vQQ2L2MLLndIRrAdTsH2C/8Z9dyjRm0EyDi
	 1wrwIhBGj3x8BoK/MJQhCGRnLifZSabIq2MPkZ/10cJp9xjGOXIS4EX7aTTNKYvTTc
	 a8J/eRm5iwEs2bcmzH9QLREf8dX8+8ec6uTREULrJV6C8+UT634dHolOPGtXz6PUy1
	 +b0TXvfmskCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3641076381
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505353370.16761.12385471822741222019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25961b1f71554c0c8fbe5ed3c54e9a1b4af766bf70ce70c75fa2cfcde6616947
Date: Wed, 01 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775053533
