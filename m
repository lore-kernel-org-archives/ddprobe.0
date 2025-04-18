Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4553220968E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982994; cv=none; b=r+1zCz4Xy5Uh+74eBEWigk+MjGnKRSM0jhV7Lu84TNGijIyxQSjZvhHVS6QSgjVu3ufLJA+WD+ZLtk6IK0nCkfuAT+lKitqsq8ibV8RiK9nQhD3TwVapD6W9/7BH5PlmJepTFgWkQ1V+oYZRq2qf4u3Bv7Q2uNHfhLukn+n/j3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982994; c=relaxed/simple;
	bh=dNnLByOa921rv5vwoPIWhTQ6bigtAhHizyb3uB/Jm7Y=;
	h=To:Subject:From:Message-Id:Date; b=ROUerKrBCGyUMRwPMwGSo+ToG9xbmRyEgkTGGZHPusxrnKuU0fSqVo8NQW6FAg9hpzFJ0bUD2fPdiWWMQrE7u8EbqtAdcMsEe8kE7uku9maL0JTAArlvQJvHc8D8iuAuPaUTatZ2oh9YcMLCUl+7jMtYgIli0BeLdn+SKOI8NMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/ALmwP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/ALmwP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA516C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744982993;
	bh=dNnLByOa921rv5vwoPIWhTQ6bigtAhHizyb3uB/Jm7Y=;
	h=To:Subject:From:Date:From;
	b=Z/ALmwP2V41weJgWLPxzgeazQ/U4Ehv7aBvYDtGsNkkEdmtzSDMmo8gS8kTBX1G1f
	 um5sdYcI/n6r/plzj3SlNoHWWheg/hobBWVx9ZCez31eADhByBrPX0uY3XEvOWrLjC
	 7PqGxNalV8YT1zj0D0pt9HFnkrLTFXp6PhoXBCRgbJVn/aWBjpBsfPpaip2zELvA/U
	 ABIvND1r3NTWonkqsbNzZRL9Vlg/o2327EToT4pSVrJLSV253amoLznuMR30x7WS7e
	 HT/eFs3iWUklYB7FVtdeqMPoqBTZfXhLmvXBLkBD5J7wdO03NDeNA1tv1Ye/4hOk5f
	 zzLH86E1sS7+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E99EC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498299363.27789.7561911342074313531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c3686399daf4e0ee388bb15dea5f2352579f3ab7d9cb872e670bf829d50d14
Date: Fri, 18 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744982993
