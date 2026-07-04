Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1D1DDC35
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783148914; cv=none; b=rt8PI+Hh85WsD3i/G0OUw2vN2cGezWAlp5TDaj+v4PwB39myFoIUyrzK6CaUx0t8DZra7tMgDJnFrtmBum328JdvxHOUyrJe8EmiJ9B+rClALDdXdBS4M17a3nas+o1Oz/Ll1RvqXSjq8sw5mSPlMghoJBnbAFu5tiff6yytnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783148914; c=relaxed/simple;
	bh=pmylGk8WP7Xy/HeEpdiJvxxZrlIKTjl4jXtH5WiePIw=;
	h=To:Subject:From:Message-Id:Date; b=ezXw0g+sM9Pb46bfCRF7eeHCoYqo68abYMI3VIb5SfrebbJmJB5N4Yq2a9cWwBwksSTwEBDjC3nwUtW5TxbhjCiOiDpAJum7I7X+rgFoJ+WpNIrezGEO2uMkJnVb7aiWP5yoAL9Bbl+q+m7HiUUb5bL8JJIweV7qkzGiIzAUHnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm9L1qnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm9L1qnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1BFC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783148913;
	bh=pmylGk8WP7Xy/HeEpdiJvxxZrlIKTjl4jXtH5WiePIw=;
	h=To:Subject:From:Date:From;
	b=Nm9L1qnM4pFa2Gk+X2BxIaknBbkCh/uIiz7HTvuSoI9icgbtvRCfzahNuDknpjBZZ
	 V6oka8sYk0mEMAdmEsr6qLDK/QDC1UiWayfULgaHAMjYYbXkbxD/4JRFhUtHEEqRK3
	 h7qxrO2bBXXVRwZdmfbe0UAIOi5CuxexOC/diJe2H5GRWOiINAoI7CBAwdkJSc2hP/
	 tgYQrR+deCyFaf9KSsc0Mlgr50JDsLNMXU7kblrbydDCaMqa/kBMteWxL2jNWxICiQ
	 I+D/KzETPVoiWr0w0wpsfgRrBuyeEp/7zQZYpfcLBD8jqUynFM5qPpAKhcKLChcGF8
	 nd06MpwoTK91g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A868CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314891368.28522.615167542270531245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fbb3f4a1350d299d6128e3a1d6b7ca069842dec924771b2763bd0c50267d25
Date: Sat, 04 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783148913
