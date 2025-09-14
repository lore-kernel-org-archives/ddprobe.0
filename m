Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1BD125A9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757834995; cv=none; b=rUe0e0uFj07I2c4TZw57QYmP+LqQBgEEUf4rn3X8OFr+7Y00U9GZyrMWO5thK8geohEfLDhbVCMlJgvOxy6nVWBT9GvxwVfKxoob6jwcs42yWF31Bzb0saoHfppJX1MqOjaZ5nHGbPh6ffELSHsREWQPrLufk4mjRFsHtCyhKlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757834995; c=relaxed/simple;
	bh=9+qM2mJfPKbLrdDHyIWyJOJCCKuQeFtygoTjAzacATw=;
	h=To:Subject:From:Message-Id:Date; b=GcUiK11y7SRvRgA+PuxGg1MNJxnKsYEuuX/gVpe9pY/R7563cBSo8kbZLgT59a00pDGiMXF7j4hVpzMQ3HIpjln5IDhGscx5kFiQxpLEk22f63XNwVBy0StNIuiFlHW+wv9peLAagQufCceVSGE7eo2pdDHwm1LyqAGy8oep+rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy0gXyJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy0gXyJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7240C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757834993;
	bh=9+qM2mJfPKbLrdDHyIWyJOJCCKuQeFtygoTjAzacATw=;
	h=To:Subject:From:Date:From;
	b=gy0gXyJ++Zn7GivptgsSfk091hVyPSuD3j4w4vVItkmYR/5pAEw9kxMkz8uap/Sap
	 BiTvMZRvMvpVpPdLpjbeBYe1y3MwtlqoKPjbnCwH22DeDSeW4B68PmislISRdaiCpH
	 NqX+XOuAb5pBW79hl2Je4MV4cXs6bi8VOTT9JmllXy4inib+TYc3vEueoUKuWNoNtk
	 VLcHXypqwC/1X4Fu6MyTjfpYXOWNvnG/Uv/CkzZ/LmIUGK5RQ2L8eBwtgvXcR/rDqw
	 vxE8bl7/Woi994LnkK13NcHC+9ZXD8cNMfHKDUCmhuZOgWr94X3f1cemaZhuGS1ilx
	 t/P7mKABX7vZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E9CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783499357.5042.4600676979707888396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a11211b9bc408cf6a2d08078a49f1bb9f1ce1e3de46355a1daa3fd27b51108
Date: Sun, 14 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757834993
