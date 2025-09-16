Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFC8CA6B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757991594; cv=none; b=H6GQPUtSsKXIjaUFwEDgr30ed4cCgUfDjSVfHmUzWyz2LwMRiDbTgzeqXMfdWftqgtcAdsuOf4YiCD25nFnasl/k0opQK6ClBzMZczDFOFNrWVH/Aq+f2A/C5mpBMPzVMrx8NV2Fu7uxXZG4XK8lfcbAb0TXU/QQ8w5rstdadlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757991594; c=relaxed/simple;
	bh=whsyM1CfBIdtc7qw+JawmdTiNMN7uWNFgJNakr7Drto=;
	h=To:Subject:From:Message-Id:Date; b=PUF2vXZiHJDfxWYSaLnT+L35Gn1kKXxNw4yxnd/+5m2c+SI9QYflu4WjuJK3FWtHJHJLksNdHgX0xM5sZPokC41SOd14Gwu9kZW7HePTa4StVGY3leJphRgDCGuCH+TEcRXLT6NWQl+1pde83c4OsHN12UU2eJI6FbHiQVDcLN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjXBxZsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjXBxZsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757991593;
	bh=whsyM1CfBIdtc7qw+JawmdTiNMN7uWNFgJNakr7Drto=;
	h=To:Subject:From:Date:From;
	b=BjXBxZsJ2VTfM5MWbfbJYHnjCVMPbsYr/qA2E0fZ9LUrYbLfo+nSFeAhx/3q0WlUe
	 KTPCKZuEe5g1VLxv0UFnGRrDPS1bgjI8ja7EtAWV29NjMWkiaPOmtiTRs3ktJqXKQh
	 3GId1gwoAYTrJsXheHSOxePZ/km/fRfjnjhg0JsordrupYYgNkqTGyfonYr4s06LaQ
	 pIEn7edPrQl0DQl3kN8NDDACCMfsKP+8YtdMwwOkUHwRPpEcWY0WsbXGLMHdcKoDii
	 bNln7ywJJQ+52J3WEvt9TgCCnCjryq2vjvh0sv1u1wiPHvAuRwplVtrgCfHrI+B4+R
	 UTpLHLV1jmyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAA8CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799159357.9257.2280574141235362104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67e396dd1d54a5bc7ee08149da394a4b8f5dc97fa6dd423a00af2f6b16470bc
Date: Tue, 16 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757991593
