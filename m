Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD1481226
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784045914; cv=none; b=cgjkH1VzWnwvvxl8u3HRmskVTrPSXUpbBcuuAlYDDgrci4HI4rg5rTZys5MeLDNSOo+O8lRr3HM3SVFnvmNEaVUo57mFsnbXcHRKEqD9kkktTvgq58Q4mdpTNrJBtPWw+CrDWc31qV+s7+YuDR/Kao41PZ0r+uQLkqTNL/Dz3vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784045914; c=relaxed/simple;
	bh=se4aNe+Cj/ftKdiIqG+jIxUjS84kCdygf3m4PO4jw8A=;
	h=To:Subject:From:Message-Id:Date; b=vB2/9ONVqcBtlYXaDMUxCzotUk9Pe8Y/tQI8jqXfBfd7ppSjDiNnXUavhqOyRMaDKav2P4seeIs63Xm6CY9TWGhcUYJoNRYwmflRosimgTgqmqQzMUhVwxzFerP3dRPdYIS4oB99QbvA8DUI3ojV4qtDCtNfBntU91AMNJMF6Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khbUkWU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khbUkWU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B01C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784045913;
	bh=se4aNe+Cj/ftKdiIqG+jIxUjS84kCdygf3m4PO4jw8A=;
	h=To:Subject:From:Date:From;
	b=khbUkWU8JTLAGI302toLPNOr16SDjrfprFKtysR3+KIXd+ZVcoLXHVgkfAEgSFY31
	 KplW0yrBfMiC9EZhymqKm678d78PK354ycY2cRaXfqfRg6Uu2Mdo7apSM8E5ytXmYq
	 oZ3O3gS1YRJAZDIhIVfB83eLNSOZ3gCYO/PsvZ0FDOkR+Tou1c3NiCzPB3SZ/T3ly6
	 ighq3OqXQhSwhpcOxwFml1d9QhyuGWRHwWjPlH/4pC2coyb3zTqzzU6DAp61U756dI
	 5GHvPzzGOF8Zff37d6BmWub5Ccwzby8vYdTYKlpkQ8tF5XiaVzAyewGAm4hZWW24yH
	 fcTrbYKTu2u5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA57C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404591370.3686.13168740628094992086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0f226a0e987f64d6a6c94eb76565b15d2e92e99606917f9cbde8f24d9e9501
Date: Tue, 14 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784045913
