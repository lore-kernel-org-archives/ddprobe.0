Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E4C1F4631
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771375494; cv=none; b=jpeabwP/IFiFO/mCr2TfAp2EUq3aKQGGq8POKt/mw22c6s3h9HYCYkkwVMC6SnZ3W2QK13NPJ2shU9hsT1K2FHkfEeoWWsBXiYBMnQvqi5Vy4uJf+LNaGTpHjfBk61UBTynYM6fHPJSMGaxC2vImRO7pgl7VI+2p5szr7BstS/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771375494; c=relaxed/simple;
	bh=CQ942mocVxQm07WN/c43LmiKPsekc5YbftnctjjUOcs=;
	h=To:Subject:From:Message-Id:Date; b=k1wyx0c7hG2vzYqLhY02MDtUmtt2reL/oK5WI1DspAEsWdudbMc4k9fOpi8AWOiCDDBhnerysaI+nxFv7JxpSQMWxT4Gi/RfsuYzVYYT/usNuowCE74jlHpIHu5PjgQ10HJbhPR0F1L/1kQFBIB7rYh6HrKgSiq7uF4a6u5NJHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0iy31Fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0iy31Fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17B5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771375493;
	bh=CQ942mocVxQm07WN/c43LmiKPsekc5YbftnctjjUOcs=;
	h=To:Subject:From:Date:From;
	b=M0iy31FkjIFhZc15Xy4YFOVap7NWr0/aUcvibHZCpfcKmnx/TBjBhrY2LxfmXEDdu
	 PBXkyGSBvqRGfrv1hSi9bphPk46ZAarce9RfhHiOJ2X3qNAZRh0ZFrPQuhNL6zFi9w
	 YzFnGywmZZLy/9z3xkpeenTwTZwm+CEn1zkSuzVG71XrhWiFDWpdHJyPahc8akGaG3
	 hE3z4WmqFoP+9mChZvsQFC8RxalZ7xzu6YYV1iLM2PLJSOSczkQO9GyAdd0hkIlhKJ
	 AS9I+87IGT7X7vABQqly74mKMU/yebSUDvWmPsG6ERqHieSXnCarv+q8xuRNK+ybhB
	 uXhcnDwtDZcIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B532E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137549360.27966.15162819573533250798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fd15b3c68de86f58be5a8afcf5a82764c68946b72993d544f12b10391c1f99
Date: Wed, 18 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771375493
