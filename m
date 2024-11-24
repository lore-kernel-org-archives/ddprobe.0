Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C188837
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732416354; cv=none; b=RF31HYPJ0ZqrPndGHOozVM0sBy2EHvFLdls3lVTQTXAxEMIa0M7ygmEQ8+vZTLnYeBs/AxDTQihPR8FMoMfTgfbb5EmskXXV3PpMAfQOip0QBoUUQusgpTgBC1x4P2K/T+c8ntSHbmaR1cgdrvYX0Yzs9zcpvPvo3JU5iix43dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732416354; c=relaxed/simple;
	bh=Fw4x/XvyjYe/uqn8kwd3Otd3wuMokwEML2wcPhVlC+U=;
	h=To:Subject:From:Message-Id:Date; b=Zl+yeGuUPoZuKoMNdg3kB4PIBjYiKZR1ALzVp5KFpyqgOJXcpedh8qX0XHg3bqtKhkz0SsDCTrnmpHBmlRJ9c2pC4A3LYf97lSJGSMWCmar+eoSSHezVEcNcCnozPe+LH6IvwSkPFqCIUGwilTFOslL2LQXDXtXmxm0HC/yvA/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q91lV5bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q91lV5bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CACC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732416353;
	bh=Fw4x/XvyjYe/uqn8kwd3Otd3wuMokwEML2wcPhVlC+U=;
	h=To:Subject:From:Date:From;
	b=q91lV5bNzfNfRwbrD1AAaB87tuXfU9TOLf9le8321pvqGfscmMBTC9yzZQvoh2zIf
	 2h+fu2xGXbPc801cCpKnTpzHghhx+lYyaen0XcUfvyn3hhMYM3JGzk9xa15HS4mLgZ
	 8HWx9mCb3k+UuiGgrn8m0tQf6SJl+vXVCw02QlQs/jwHoUVKYtJn4BUpEQnmOkHoxc
	 z0aTpo/oa92aW8T1RPBm+AnyxM9aRYlBKrs3bzoKdIJ9e2mr33oyUuFLcGgKIw4ma5
	 PGO5bvS1DdzunKLZtwu1AD5AGKlKMqCNIS+R1gNltct/PNb4WKYS5Fb1xj6doS1fTs
	 NKCNR91waniVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB9E66893
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173241635358.16626.1199693389278567050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bfee3eae15989a7080bc2a6e7f4a44b8e15db3e28dc588823ad24fa2e48dfb
Date: Sun, 24 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732416353
