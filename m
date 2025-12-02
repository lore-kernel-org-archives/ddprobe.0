Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CB22940B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764696774; cv=none; b=iBTR26y1TTHoAgDRsFAIWkav4EjjoNHVJuH674ajq8MqmsXNoY31W1cj0KYFnctYh8QaXw3TilP2tdJkBBjWt5w1Puw132ycSAX3ihiECKMEoRfUDK5JQby7aTxlmqS13kX7FbfIuBfLh076U0TqyLgGTARTA0wEySxpqBN5fUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764696774; c=relaxed/simple;
	bh=dwJ8VHaa7DMBfd7CVFbsa9mHuub0wg6ZbqiMtNOOPCw=;
	h=To:Subject:From:Message-Id:Date; b=H66dXWJrWczUsiPwVQ5TmYLaTdchHA3X56A0kKm6WB9dcRgsMmcIe8XvnFF01oOYMeWxnHnifIBhKclLxCoXNvaswQAwK5XXws52Ax125i0+Q2HsVsLpjkln2gfMRPeTuEW4eVNvnCi+8BQ7KS60MNJkUZFqdDiqIrGlM0ucCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiTozn7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiTozn7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C38C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764696773;
	bh=dwJ8VHaa7DMBfd7CVFbsa9mHuub0wg6ZbqiMtNOOPCw=;
	h=To:Subject:From:Date:From;
	b=kiTozn7C6FEq3JhttiqW5OAoPdvgJR0+NVKv5A0wPU/Ep2cfeIqvtp12Rn7zM6Ljd
	 pl6c7XYKA4Ts/PGmHqUhHCjV4cGGBp2OD4IVaY2Bdm0GcEaGlZ5LSQiAsYrisMPKMi
	 tytTAcD2jA5deP8US+CI7/wcVpKS7lv7QUiEzr9rZ+XQhQHJXd4PmSyKZQnUFs8+Sh
	 xqJ+/+2W+ErbgpK2fB8Sx9V1OvRvP4GIVpuMszLqix0a1P6AEIU5cGhQ9IIGSBLDxO
	 pFOTVFcdb5A44VeBtHH8xKbg/iBrDTqSGnd5j2yQ3HYmjWv75aIX8ptyKvy9fI555T
	 9iZqAL5aumxhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A5D1171B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469677358.8885.9885435762867282416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08801775b609cc3eef0d2a06ce67719ae4bc8990e7c43dec9072bb23b8a60d7
Date: Tue, 02 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764696773
