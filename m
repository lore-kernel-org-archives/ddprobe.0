Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2442E06E4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777963654; cv=none; b=V2X82vCeJakEDkBmXiOhA0QfWWpDDuR6/ACwZHEmDA66P2bC9S5jbqKYQiTu132TLvz8HibbHqELfPOEYNOVni7a5Uh+OqlJwkVTt9hZ/JjrOR8VO7f+ptwrHn82YufP4430yeBabO4IVbcAjfjNMlF0LcwA4OSUVIEKKyBaRPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777963654; c=relaxed/simple;
	bh=CUBxz+GRIMlJvYw9WG49bKdBQ6BFc77/Ui7TuDMID6A=;
	h=To:Subject:From:Message-Id:Date; b=YhynyfAxDfhPJ8DrXGlbsd0WDuCn/31TllehveDX2/DtwJaRtmGIEJEelb2rKCWYm8t7N0dwVg4zHRvifplFadGSAsZ1/SoUOeKExmpoBihyPOxGt35IA9LD4uQFmMCNSLGZ5GZLfHiPWIrxrwNRMk5OzazHpcqTey6AGQ1lRmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOYQifJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOYQifJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9147C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777963653;
	bh=CUBxz+GRIMlJvYw9WG49bKdBQ6BFc77/Ui7TuDMID6A=;
	h=To:Subject:From:Date:From;
	b=dOYQifJgzG0c/4wd9/ZBtdgt37kxVFRBWfEIv8bRoAUCDktih4JVzzzNU8jFrlctc
	 x1poPLVBhvV0plioWD+2DWvHYKGOrfUkUep4g9BlkXN87fWEmiLhC71dnDqdMncP/9
	 vGckJZY0qVqdfaXag4jwH2o0jJ+luUTfupY59cRhFGugBi8X2KRfUzC5VygSuq/cqL
	 6KQ6IZki3zVFuul6R3iqFfTn+88uSrETO3vJsGF+edlJw/heHkrechqJkrSTVo2Ykc
	 NmRxLdzDPiBlvQM1teCpuxpWnl5aJCr0DQQ+McYnz+SCM2sgvgifYaTe/ppwUVdRN6
	 ueKK5ompJQjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9216CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796365368.23493.629510534891568892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fa660314147498b6239c53b642a8e66e2b0dc7c5a20a85ca2d704286d14f2a
Date: Tue, 05 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777963653
