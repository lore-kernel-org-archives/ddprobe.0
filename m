Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353CC273D81
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761625794; cv=none; b=p7S9hHQFedcUEwE1+WkyTMbubipKCyQ5ow9TbmQTAlfFr1WBwVPe6iWpCSbcr8JYGehPjkqN6BNSrxjRZDDzS4g3Kg+xed1rHFlWQj3wGJX8kC6pwuCDe4LcipfUBdWwivL428JOiinLccE+2efG1CiPu8xD4jx1KLJNdw7cv50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761625794; c=relaxed/simple;
	bh=ahJytujvUbfalmTdiNJQzMuh1Bb28MFnvWyh2pS6Eh8=;
	h=To:Subject:From:Message-Id:Date; b=PBMlY5+AbOKTTl7N/ZQu30QBR4L3b1Om+ZyXcdsDxq8IZ7XNKyiHoikY4cWbl5asrNv1Y8jDyHRmXBflKhmHDsohj8QxPIHEMBySb5bkHFImao17wXBRw9B7U6/FtA9BYVdAec7WLPbVSArQv/cEQ1lEwmNxXJhclAogVRv1hv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krXctRG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krXctRG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761625793;
	bh=ahJytujvUbfalmTdiNJQzMuh1Bb28MFnvWyh2pS6Eh8=;
	h=To:Subject:From:Date:From;
	b=krXctRG8jczQtiWS88m8qr9N7JpgRBkwLzPBwhvhjVLqEYaL2n/mRNpC6AnW18drT
	 IoOxn0utzjOVQBAElqzfOyfKWeDBXf+J2qgQI1zL8N+YuCsdxtKHTFibZHHli1KntH
	 VT58Pom3vBmvbmZRtGx2DzIrzX82hNYcYz5Ux/V76/EHFmE7OZPgIZ0fik0hK0EsEx
	 t1vdtCrezqC4r05igaeWjoFiDKapICM0IgnsvkGbiCq85BCR0TS57y+BZnJihStulN
	 vdiSU4YT9eKR4yvUQQlhT5FCcV7dk/bnZiCL85qw4E5UqWr9cLaXNreE8HVazwg9nq
	 3GNbOKkE/52mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93574CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162579358.31851.14229691402325896296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad06b12de1a01ff7a66effc727bd29d748b4600ed44b882aae34293023004b9a
Date: Tue, 28 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761625793
