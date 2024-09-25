Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A00A381B1
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727276154; cv=none; b=q6r5IZHdiqh8jhklST42ndW0acak1663TpyaiM7EwXpXujj0/J6+wE1Pge7zct441PLcprgon5/5L3e+kJLcD67LjZKwpLpeYWlESFOpDnlqdbsDrrQ4H7kL5dNJ17HlL/6SPuAOfBDrx6HTVqCs6JGg0aaHd5WR+nvmF69fGvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727276154; c=relaxed/simple;
	bh=OW45JKXb03/2IvEXyeBh2xMCKMbMaBF0YCuT5QeCsuk=;
	h=To:Subject:From:Message-Id:Date; b=MtN08d/hNxudha/+ppnSe4hlqR548uoUnRIbwRMj4Yt4RidGQGA9xtwzPX94BfFJBZpb01n4no559jKg/W2bbYFurEs76dDGSuqYE5J/3oSfqxjACPznkylk5cacNxKIntYtMJ3cT/chEYJkiOWaNGljAOaivPct0i7isJ9t1Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXAEq2fD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXAEq2fD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFFC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727276153;
	bh=OW45JKXb03/2IvEXyeBh2xMCKMbMaBF0YCuT5QeCsuk=;
	h=To:Subject:From:Date:From;
	b=uXAEq2fD62zc1SKPLkneDG/qwXV5h/gkspHkdec86ewxBRD8tKrYqNxIvpCbGWXiK
	 64jfDFbSEmOdb3q1NOQcZzFwyAINSdbif+u+oOeb6aZ52bSELfWraRUdwzoEsN3Bcq
	 2D8jWBK+tYCb63tJQpX9b3VIFeWZ+hRShgdlMRl1llpQAPaKAZEuKFsrWutG8rzbD6
	 iTk/lvqOgyEPCR1MWrg5mhrgi9ehKBRrCkcw06DQ4nLhg38yP2oU6TVHtTrQPxtTQg
	 qJMU48y92ny3ocbII/2OiezV5whH8/KNoSRxqivcLRanId+hZjAjZ6NVg9G+lp7BsF
	 GGeApZ3aZ+m3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A0ACF9C7A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727615358.4569.12497412807120851741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6726761628be7bec03c40efed2bc16a67d9a2926e203885bea2a1cfd984051b3
Date: Wed, 25 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727276153
