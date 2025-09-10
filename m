Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CD419C566
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757524794; cv=none; b=k13M2rxl7VCsrs6iGBN1/nqZhocJT46+wjFDqOO0Hz1UjTy7Cv4SxG/16hX290jqhr+qNXu8QF2sB936h1Nqt7ZfmuKRuk+jz2wGohvIFl4SHUOojr7SIypmbDelm4gXA+fzYa2sfwpOxUdiIrjfjIe7XeLkhBRYW3KRw9Exby8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757524794; c=relaxed/simple;
	bh=MGwH+SrbNa+D0M07y/XkN/SErvUTjE3itWEvQIzrCjg=;
	h=To:Subject:From:Message-Id:Date; b=SmonkGRmTW4KvNBQGg66T9AUG/Frcy2gg2DgOyzY2TI+ioz80uEzVyJAfwYQqq5/qui6c6lEJzelAx1Ht+72MqZ74hBqzKejAI7iUEMbWVrJ1ZTMzTfGrvuqAoqCmxGmK5tEwgozE7jxFCGzl5Lr3IvH6kl1bv50bBeQbVNZe4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0PnA2g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0PnA2g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD31C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757524793;
	bh=MGwH+SrbNa+D0M07y/XkN/SErvUTjE3itWEvQIzrCjg=;
	h=To:Subject:From:Date:From;
	b=P0PnA2g/jXl6iofBxxO9jpA5/zBcTEREezxqQpqfDD70hxrRxxdlFBqnkNsmfbeHf
	 b3U7bZE15IHXwg4gMa6RB+gwQyPxf3Y9pbqu/2o3M33zZgCaTclPRa2i9rmVbbKDia
	 3U3KscbD2A655zgvJjqbe6fWqD8q+eejdoGA0mznkgUQhkdCAufZAJG0tnxXncqHPm
	 R+dcibolgdHBCvR4RJoYbCjCBNna3Bt4SnY3+GXFKIGC20NP/Iot4wpg+mpWn2oaiC
	 rJqRMhnR5YNMIzZAqMFxflz5vxTkUNgczvNOnwUExqn+hdAtdhUxvhNuAlTdLnLmHp
	 vy4uo730xh+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E921CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752479357.4207.10844404495100386952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be90b03ce0a07b2e63a216c1efe3ed17f490df9393f2952cfe3565e56d1190e5
Date: Wed, 10 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757524793
