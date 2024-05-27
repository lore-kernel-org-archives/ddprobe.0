Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DAC13AD38
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716805463; cv=none; b=aBo1dYa+wFcMHeTrvuanPME4QmbF7ZdJwHtApK91grrcM60vh01lFsHmJwFlWopv8I4pmGFDlSiVM5IT2aGBBQqVNgoRqWdYTVwoD29JJxUWY/6IGIgwob+azXQUuPDak/bxW9RCSx8KRq5AEROVrr7KIYgbpjG8zlKDj8mNOIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716805463; c=relaxed/simple;
	bh=lA4DgP9+w25m76B0pGmVfMiiR8S/p/0GBXPeJDCfpgg=;
	h=To:Subject:From:Message-Id:Date; b=XHzOqqbzlFgIeAAa+IOsEn+jvX7/AI8yksLw658eoObVjmemrwzvNz38ugw5JeKJKczMIUCqdc7mcZixiYuUbbivsmJLvK28+KBdtJq6bhQSz5R0vZDvg4ADfm4mh08QM34QIsOX8CwMhFGdFE129pdUARmoYtcqGxYiAAbsZZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyLJb76H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyLJb76H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1948C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716805462;
	bh=lA4DgP9+w25m76B0pGmVfMiiR8S/p/0GBXPeJDCfpgg=;
	h=To:Subject:From:Date:From;
	b=NyLJb76HR1+R0fKMR4VN2HOxPt/S49MY6YUIBZ20Lw3MsN/lHKi9IHyyWHDhzivSU
	 SX86Vfth4ann0c+s91LT72mvctbOqqOIDhSaeWuA16a9e303DsHp1p/oyOe17dLkP6
	 sAUfUuyUf3cBqU5VmxgMpDaA/AvsWIEuIXrzycF8+prscuDJqowW6GQEOrhS254it6
	 qDhlfUBOTxZT9BHhalUv8Y9+B2t9OG8jQBz76xi6pLCHwcGvNq94w6ATmhlncANuG/
	 kPk2RuHYQByBjai3hkRbhxQru6MeSkuVIbWrJwhnCA4GK71mQ9+2Y9KGpgzFexKHlv
	 pcPckAmItm78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF23FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680546277.30130.15101373939489031843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb4106a47f849368c03677c82a59aece29d0a1a2bfb6cf7e50ff8924352e8fd
Date: Mon, 27 May 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716805462
