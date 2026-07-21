Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ABF3E49FA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784650714; cv=none; b=OIV7UNWeiPLLzAXR2e0UvrmdXnmgQJoij7jzFmp+a+zFG9W9aEF1IzRJyWIIhLIIoPV4BcwxxdpAn83+p6CSSSumrZWxoi3OAqFIi3Iu1qM4AXxi7GZMK2MgJs1zzyPLLrZWJzkQ2OKXAjTd0iQmLsMq3oRO0faf5wXzXiYGEoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784650714; c=relaxed/simple;
	bh=Gipi5OGPC0dYvxn8HRMQcGhBkLIBunUYaiDbNO3LAIg=;
	h=To:Subject:From:Message-Id:Date; b=W/K0lQAaeQi80uKEiHzJnbVfM9lhr3OGB3Y80I/0LMIHXD6DCqtYVqVgSI73yIajtNCNsjCPpdLSHVBn9hiZuoNf9j3o8vSTkhhSe/poJrEHlmHtW/1ohXkHEpau1Ro+GIB1P8BhN0yf60j0RhhmfQLXEt9c1QRD58Fmrrbe84o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM6otD9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM6otD9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC94BC2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784650713;
	bh=Gipi5OGPC0dYvxn8HRMQcGhBkLIBunUYaiDbNO3LAIg=;
	h=To:Subject:From:Date:From;
	b=NM6otD9rwoQ93/lOEtt0sl9mbAEbVguiwS/L7NiDRHOPFP1MUScLdBOx9ytprRK/C
	 WKe43Ma7TLvTPEHVPPElTLL6A19mKh2L2R1peyf26OZYndZJN+6aCyUGvvTdPOUEcc
	 CtYxq+uDj8Nn8v/5+dC4sKkYKukc3Go2z7zlOeIKk+I/uX4At6T2ubwSMFXCeuJaQz
	 +HUgOxI49rfx1UpqL/ll4geM0UlK8hZZpzvvN15DqZGweXW9ontAMM8vofybjFFget
	 dIoC1i6wYtGGp7cIfmCX6kJ0aRbJ7SmcQkO2tTTyBFoLBdZsi7Xp09ycaX2FbB2H+q
	 5adg11OphwwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD98C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465071369.12197.2705828119339163529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed1d0736523989aad48871472df4966736cbf71e6bc5c3b4b29913d887f85fc
Date: Tue, 21 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784650713
