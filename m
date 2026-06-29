Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298DE3A7593
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715714; cv=none; b=QqLqaINBGcChQHa8I2G1vCI7y5plxOk4aFM60tjGCgCpoq9cZE5u5E0WPItOSB+AG5DpMllSOHH4I6r6OXVcSZdfnn/CAEMA36kocM/vOWj6iddBm9YM/tcPM4H03A5R3nhtmxX4fvM78//+3dzZekGug7/9NyLR9pd63VvRVeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715714; c=relaxed/simple;
	bh=dzDDPYQNnJXcCVp2IxVszJ7RaCNvJM9M3aL3rkL91Bc=;
	h=To:Subject:From:Message-Id:Date; b=SH5ilbRv/3c2C8zOL52rjYtjJiqg1UllIVQoGxcJVEmsLX+A2hi7jbcBsyS6gx+ipYVVqxXxLLuZuHn3LPC0u0xgst0MhKdRsbgp0FM1tM+sxH6MaNzJK/RfWtKzO4D+w8fkDuGFsWFs3NMZi0CBZvM0RIxhjFoCw6F3xkl64nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibuAdM68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibuAdM68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F87C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782715713;
	bh=dzDDPYQNnJXcCVp2IxVszJ7RaCNvJM9M3aL3rkL91Bc=;
	h=To:Subject:From:Date:From;
	b=ibuAdM6825h4hbjoioLyJjxRGrTmiZn4X5BbJgMHgRgILvv4SR439cdmoYqocN0Gg
	 gQ9pHbX6Anl4MC/Kt+avqRgm/wiXzrNWzLTwBp/FXJ1gzcELj7xEEXqqCfedjIbowl
	 ycCf6VzR+ya9LFrdlMAXi2MCp1lGt2VEa9TkvGB5s3t/PaagPzHM8jrxEdPFSq042F
	 MM5jfO82zgYRIhUtpiUlM7U9uMG8Rn1LLkXohyVU0fCQjB/qSb5GDCRL6yqalIhTRa
	 QMcUUnARwqfhdTyaFHEDZF2qFI8GdY6d6U9tvZs7uKhNQNpiAOgf1UekiRVQ0gTBMA
	 oCEcge0C8HY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51E3C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271571373.18408.1444881440110946462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c10b90707909123973e20c5d47110126a60d95b1fdcb2a6a55e7e13d62d746
Date: Mon, 29 Jun 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782715713
