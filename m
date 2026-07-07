Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36A6384CEC
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783408714; cv=none; b=htVhQ8LJhbQETfGif+KYr65aQkNOY/bZUZa8gffwqqX3xAO7s7UNdu1kAgoSUadB8iSwnSKgooAt9GMWQ0H0hdY9RzrjFXzQg1AB/tYPfx4r33hqptpoXj49KiLL6y4DxJzsPHehJNV6vKO+P8X1WqrB5Md77yEzaAuxXBvA3sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783408714; c=relaxed/simple;
	bh=xKPg+EA2d0e/N0lKHetP7YrsSTgAF8UDNMmpX0HS7js=;
	h=To:Subject:From:Message-Id:Date; b=fNVh8FHq4nalHBnHbf258gI7tmEt4gyV056yzv1clDQLlE2hCR1lhipKNtJoabVTKAnAOyEwc40WDgjHr3BOLLLH0NfsnKc6aoTI8uBWszkuGC2cCZATLpn/JKAZrQdbbaSBSGf+2Cwc6UjZPPANYDOnZlNA9SFCyxUVWGqwl/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9LA02Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9LA02Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAFFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783408713;
	bh=xKPg+EA2d0e/N0lKHetP7YrsSTgAF8UDNMmpX0HS7js=;
	h=To:Subject:From:Date:From;
	b=M9LA02ZfezrJTjO+gcv6eIKgCWktugORvcF7IqIyKj5zR5UqgNYaqnmyYAGGe6L/M
	 kxr/NZ+5Myn9SFyfe2aL4p9cNpOiCbmz5UMU0PA9Fy3s4TGH4NqJ209j8XByLotNIH
	 WEeRSRq3BiEubCDHtltjVxWFE3f/gl1YRuQsXwsp1+ozGYjVaVTuphNwp6A0nc5UR4
	 bIx7EJognK2Ss7A2VHcIjL7/lfY7rSpEzYHjLx5K+ODeqtMUzgSU6qv4YTIpBIQu3i
	 NXQxENfDFwbC5EVuyrZkjhpU6QRrcWy0/kFxrJJtsn6ailrNa5QSKqMfFq1+OdlBM5
	 1vbYuxZfZrEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971DC44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340871368.20545.7374484309102516951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1245534cce8d3257b49fddbc79b75b25470cb7ce83c68a9d658ccaf751078454
Date: Tue, 07 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783408713
