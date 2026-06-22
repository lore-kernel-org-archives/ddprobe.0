Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60E25B0B9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105994; cv=none; b=VWMAj3qq1EqHVKba3Zf8UoZHBa9my3b52NNlJrIaF1Xj+cy4WDn2VZTxtYuJbo6gGz7m7H4PJ1hnHfoKtrBCE5esq1McLGJbphyOuVNQsq6HQfIOZWG4sEuvY2bVBL84YudbOoX5/FcqdMUefnWGIFpgGcp5hMiK/Hc2uq2AVPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105994; c=relaxed/simple;
	bh=WUJIRfBA11pdJkiJTa2PkTqD6x9GtzSxgUukgmYI+68=;
	h=To:Subject:From:Message-Id:Date; b=sS5SRpeBAg0iEm2m1A0fPm3L5XGWUzNMlugBMB0e1OL3Ixd4XeAkC/c2xz+yJoOYI/T8GaX6HFw8J6rU1nK7KL/VRLA/zl74iWpDysE9hEqx7JtWggSm0GesPzy5krpCoCtPY9oyrRuHtb9+296CVBJKVf5RjBI18yzQLbFjfIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdIj+jUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdIj+jUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA598C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782105993;
	bh=WUJIRfBA11pdJkiJTa2PkTqD6x9GtzSxgUukgmYI+68=;
	h=To:Subject:From:Date:From;
	b=jdIj+jUHTMiSMhWyT2g2lydzMLjPowGpd4Oa4OIs3k69tr/HJVm17FQ0iPXt57BV+
	 HfHXNbVabRF2NI2Uc67ORiqABSGzK2iLuRvlcrqzLcplBe3/udLmrk7elwhipeFT3H
	 rRIvgwomRgDCo/VL3TU5XwZP1kt6JY2wt2IgeUVvvn79snJ+qX1CifZHLq8mQSysHJ
	 z1l1BszVxHITXcuCF4Nrt6hAdM64gW7dHDCQ4zsHc0jBbve6LTv8ROi04r/T5AVDJh
	 xxR/cT3GGRQMexmipGz78wns2bDtYUdi6i53RWGaQQES+/wSOQC53yIHrLQl66k9dL
	 SBZhx8a/nn+IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD048CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210599369.4805.257345854028269828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc06b9e7ba9ac80e1f0ee2d8926ce15654207adef5c1bae69b6fc965c1843674
Date: Mon, 22 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782105993
