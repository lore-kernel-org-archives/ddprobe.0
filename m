Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F799C125
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741484334; cv=none; b=P1QHjNs8fGrc8h8uGS2dwSMWj28JmQZYMlq7EHVbuKM9I5SiAj4OJOqyeHjmRf1NPru3D8G75lYEKSqlu9wyzeaGJfLw8ho5ybA0E6r0xMMxzie38/YUDRBk/lH1j4uvr99Z7JhxCyHpoAWo42wKPZ6rI6yh/bSiLeD/XA5mHm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741484334; c=relaxed/simple;
	bh=10z0406jU9l1V6BZq9v+CznMqlTgwKmvqkPNzeNCjcw=;
	h=To:Subject:From:Message-Id:Date; b=nU4MlGqHLtvm+Ku2JhbRAzsD2Vmw6Mm0QuhKXCmcknXxXTZkFnE4N+lpimFFDX59DbiNuAPot7vWO6TkfnMgUgA6z6Z3EW+THC0bs7rZ97WRS1iKwCEI218/nBn6oNrHGV36zbweWI++ifUBwvGNdh01np7kF+8AuM75LCa+6Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhwSIdu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhwSIdu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8057C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741484333;
	bh=10z0406jU9l1V6BZq9v+CznMqlTgwKmvqkPNzeNCjcw=;
	h=To:Subject:From:Date:From;
	b=hhwSIdu2C7qSOGiliUYMidFssXWwxFZ9e2Kw7j5b/Xj60/InxgSq42I3TWSYA0Vul
	 W9N+KDdcPB1363YPvslukS+ZCxa1Z2iyl6F+kyScH/Un8z4AsF1tXhL0WFhymeTodg
	 d9gJ5vP1RIvrtcRsaH0jhqnWvUF402LHjwqztUW4qRyF4hennMKWniJaOPxBsmChr2
	 tBr/okOj0QeBPVgX+qAszAA8iRpGC62oNVh6Wr/H+Mn8uwNQ6Q6vvk4IafGoOtsHnr
	 vUPyPqsjhkYVmJLL/t916n7kYCx4G+roztL6/hotxB2c7kyYvLYOSc+DHdGrT0obLh
	 jvPccNTzDQw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1388C282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148433365.23342.17915858008465565321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcdab7860c32b7b23327903e261174460bd737943478d4ca1065dbeee7cc2e23
Date: Sun, 09 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741484333
