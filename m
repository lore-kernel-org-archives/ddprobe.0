Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB48191F91
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760780394; cv=none; b=mnrdzj3bTPbdBELsBuO0xTVWCwk8dJKGnFsTIyZidYlz/T0lJwoVALaWtV9eAfRT43BAshiqYl1V60/KnzUnfzMIXY6V4/iRSkMfQsTvxU5dUeq4n6oVPVUmlsulU2C+UlVymn07PwD49Yygt3Wye+0BtbG3ZDQUox4KjIj8aAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760780394; c=relaxed/simple;
	bh=Le6+lyU6yl1SNoum4N5iXwV8WdaRqZxVk6Xyi0zMVPo=;
	h=To:Subject:From:Message-Id:Date; b=Ci6PopY5XALr32T4oYZn3htKT0kcjpaSTACsGtAgtsV09rE2LYmiKq03jB+36JQ7fz99khR0LE09L3PDE70wBQegzn6AyJgcH56v7neCpHWRNrrEMIFVzSYiq1s+Yz6dTbRisLCSGyms5HIACAwjpJ2qUS1rKzMAqQIC+3B6oF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHxmIzj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHxmIzj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7230C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760780393;
	bh=Le6+lyU6yl1SNoum4N5iXwV8WdaRqZxVk6Xyi0zMVPo=;
	h=To:Subject:From:Date:From;
	b=IHxmIzj5WATsfGVuXhVhyn1EIHYVtBOAePi30CH2+gvJCHVL9zcaUHNzqfbnCkoQm
	 YBK14Ig53VIe3IlnsNwtIegopHAbN+SDzIKI2ctDdUpiEeLae5HPnPtct5Qxp8L+Vh
	 atcYvGQJZR1iRW3hYZopS4r70OA3ogXo+BNMFx1QzCvURTTDndZezY+fRGEsF/6eQh
	 WJlEsZvoWQMv3c7828PsokgOK1Ts28BYwWsKC43W1YaJqeVPyeMfLxjN/Ix13oajTz
	 eH6T7JpCDTXuDEruDVVa6cj3NJFq1z0E/Pv2QebC35QfbXAuQEtpkiK9Dx/VJr9MH/
	 Q93FFQXWw/Rpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28CCCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078039358.4290.1535631428427307219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf017ffd9e575b8d26ce5a416694aea2a47ab38a38e274d987f2e7baf03caf06
Date: Sat, 18 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760780393
