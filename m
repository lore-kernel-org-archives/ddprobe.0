Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EB647
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738055754; cv=none; b=NFuz6PGcXNN2Vtc5s/sVBCgEwAPvK/K9KRc4zuBT2BqVL/gFo4FAvujVyWQtRBdtKb59H9lzhMGpamtkk7QRHcj7c9RVlupbqqBwlKYDnseaXrugLHMVjghFszf1kK5d0zu0TCc98uX9x9hxRZDqXcHcxfevrHUVgJy3g0CjwFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738055754; c=relaxed/simple;
	bh=wTGP4D7Ir6yQ3VCMjz1Fcb2s5Z2IkVSuk5bbbM1MEbg=;
	h=To:Subject:From:Message-Id:Date; b=A5U2cPLFh7B3dus0ob7iW7K3wl1fAegdfXqcfsykaW7sJ5Dd3gd96GbUv8OGcPBjvLcA2Af1AH2M4P0ajXffV4AusnB13wLzIReRTrblc/kOZDxun/YqlPP89/4iMxpCFRx9mtbgQ3+MhaFaltCq02zhrViZt6eHwAEwWIGiofo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlOuF7u6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlOuF7u6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA0BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738055753;
	bh=wTGP4D7Ir6yQ3VCMjz1Fcb2s5Z2IkVSuk5bbbM1MEbg=;
	h=To:Subject:From:Date:From;
	b=jlOuF7u6+2KbrET/tp0ibVAFZVGX3FJS41ha9HPJXlDQ0zxtcCwiFnWphGKmnA7qz
	 cZOof/pWODTYhHtb0KZegoZO8XCfTSlsI4YqMGt2YYokr1DnH934hEuTUGP/s2qW2F
	 6Q6hS/Eke4Itm493AK6pvQGqkYOL4y1kzeAGUKdHRPL9unAtA5pqd2wi3cwr6F1Zx6
	 FM6j1Nz44lQOl6BUUMW5wvcVRbdjx1kUqYExoUYG3jDIIsy/VVSIjjETxUfcCl50SC
	 JJp/huw9wiY6+C38B0sUYsUmRF6t6BBIaJkWG/f/PGzZCSRwPO0qOhV2GiRG0eqnJ+
	 USeeV2KA3te8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994D6C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805575361.18350.3419734896532408660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecebc1b308b6573dcb76cb9d5f88bcafd79171814ddda7f1ac6002c3a887bc22
Date: Tue, 28 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738055753
