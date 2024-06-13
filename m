Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC167E2
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718250503; cv=none; b=GkJui8BxLXGB+6a6JsN+pqN0znMhboEkdr6AI5zlDLLA7N4BnZFSpefIF7Iveui+w4rIAaCn2ljHU5eALD8+jQn2mYcPh9Rh3ZxFbrFy+Lcg/+F/pJVGgaFKJkPVcXWL6115hf/xWGfUnseWLe1rVxg8MGm/PQLFLnndvxy0EMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718250503; c=relaxed/simple;
	bh=4mcV8eSp5+w1XA6TuyZH9jdYGl78XKK0tKfg5AK5RQE=;
	h=To:Subject:From:Message-Id:Date; b=cxx7GxJ7VLxsLKOqAq3UjuPaMSkDgyetlLrhR+5i2Pcpryfo8a8kbkmyum2cnXINC4qjzw0BqLfdcu9RRhtpgNTrwYZhMDx1M9pOPH2B09q7dv5+uMo2POtHBjm3m3uqLYh8Cen8wJuIkDZSCRkB05s8nOoyTzNTY/L13/ub/EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvvjcshb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvvjcshb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC838C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718250502;
	bh=4mcV8eSp5+w1XA6TuyZH9jdYGl78XKK0tKfg5AK5RQE=;
	h=To:Subject:From:Date:From;
	b=fvvjcshb26oAmBpswtpnss9beJxTkrZzCo/F06UTgBsmrMjka4DMdYlnxAesaAWZd
	 oBfFaMUgNQOSzjxaNk16f0L+HilGAXzHoXjAdN9DJ4xASKpDRl4fPsG91C7Vp4Jt8o
	 IaIJuX8SRxaDTDL5/aS03167BhjKjC2/TyhfiWvpYja26lDl6AdxPxI7SIv8haUngk
	 0j0J/0ArBhtQ+pmlIoGv7f9qVivCyMpUTlHL4WtGvmHHEvf7RV+VlSouSC/Cmfa5kZ
	 CMbLixW3gDW2Zrv3e2K1QOK/LFvjKr8qI7SEi25Z4k7SfBb/VwjvTLBBq85f7OKwjl
	 b9pxCPcm8626A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01A0C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825050276.28045.13734143195643580538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1fcd74ad2c3ed460849dc1d9c4aa3443346da4a1c8a039a13a2b351f2512ad
Date: Thu, 13 Jun 2024 03:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718250502
