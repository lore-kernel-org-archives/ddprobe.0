Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2097F284684
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773168294; cv=none; b=MDgkYch8KODqk4pIxJGtUMGXKEU8e60vPXP8GaCZqBkPaVmTTHEEHfHsoTlQRog2QUqRiiWem1NG3A5GA2fGc8OQGWFIlZvx/9dA4lyYmFiipqyqUctFVOTX8q+arAGspziFZSRrjfQ7Er080iE+2CfsEurQOJ4k2TAKW0Wd+t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773168294; c=relaxed/simple;
	bh=Ca6u8Ot9NyLfUIFPoF9/0YzVXrSemXy5NDlfVEmwvQE=;
	h=To:Subject:From:Message-Id:Date; b=gEBfl+VVWjlVxNONr/zA8OWUyfMpNc8dQm+AQtcuJQ2nk2iUiYY01i7uIrHeEExXw47mkwvs9c9rqREJJp1hr6rVTA34iu2zm46nAfS+N9R57ABnD49dUxX1/NoqOiaiYrEfBWkLloJEsi+i1UDBxuDlzW81XKhH8slU3scjoSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcWWzwex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcWWzwex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0115C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773168293;
	bh=Ca6u8Ot9NyLfUIFPoF9/0YzVXrSemXy5NDlfVEmwvQE=;
	h=To:Subject:From:Date:From;
	b=lcWWzwex9RhWSWG+430S41qpAkqwr3klw0xzyipwXWLo6ixilMZv1Z/l/sGcW10Yx
	 d9/mHQwRHzph78jjUt6HOGQNkaLSHBGtQXtPEpnmThhrkd4evSwX+54Ubw00hClhPS
	 8xmLqAuFsPYT5myIAssu9h9uIujCcTx9uMvH54CM7JcW6TTKW2NJfEL3GKZc0uuEDS
	 hOYmKAa8k5qeRJBkfcJ5ue3v2+Ah+lvr7SSTZC6gnEYVTu9FpSSTpKkV3HUjuibFWp
	 JQIzdRiUHysQT7gmAmSzYGJ/p5L/AT3MrQOuhelaRBa90iuJUBYt6GptU9GEmqBXUc
	 ZtOGQD4UVK0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047FFD4F1F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316829358.18020.15135337660076887173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb297fb717c1ae83486a0d80da3f3fbec6bce47c78f3bb857a40ee1ebbf9e944
Date: Tue, 10 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773168293
