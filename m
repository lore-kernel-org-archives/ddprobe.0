Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CD6367293
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786378234; cv=none; b=r6gb0nwPhh2HEE/SV0Dw06qqfJtfqB6Q/GZLSWxbmeYtbPXg0NsJD6Mymz7/C049p4TZLCidbcH6FEjq0JzwYl65F/44RYTUz+8c0fDm/Km8uhcKr1sdmBQph4NWSS+Tp+VCOIaDQEw7hf3eEVpSy0of2ozH11PWsovJt3fVHqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786378234; c=relaxed/simple;
	bh=aZ9P8CCKKqggQ6jQhTQF00n6zt2YiRDwnLRJBgfHjNA=;
	h=To:Subject:From:Message-Id:Date; b=ZpwPmY+6iJnpLCbIxKMrW/vJU/G3sWrq/qG7jhZM+BsxXdTZEEPyKlzKDlKEMB9pTWEGnvmXxAkHUBsDgv/0vEqz6oj/Gu5uCM01/gAkyTGr3DMTbjBptWUHTiPlWirqQ5OaIlkPX0tYDzyZczFtVpoiXzILTKtzQcXCG0kD15s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGffoZSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGffoZSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6768C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786378233;
	bh=aZ9P8CCKKqggQ6jQhTQF00n6zt2YiRDwnLRJBgfHjNA=;
	h=To:Subject:From:Date:From;
	b=cGffoZSCrKjdDqd797Z1r4sWdCtO7q9Ot2rFqzxo/nfwsSMlHDWkZUwjI/kK+dWeT
	 Ux/59AegP562QnVxNPJ6OfJhsVtpF5kfIlNAI38zYjmjJzk/LuH4sKSdJwx/G/e2k3
	 kwfptlIuxuuW22WFHIzqFrEXyfp6eHpF7AfDSE0+pxUwqYowt877swjDXVjgO7hgQ7
	 CSmMFUkSzIzc5punGb4heVIK3UJcenkSBPNwd3Sq4pmYKEFmCwiYbDqSUpoa3ypwOk
	 12tRqOGbUMq+62cHHu31O571Yx3JvCQ8q4Q652UcZrxmaRK03f+S1ae7pYORkKzqBy
	 idcFjJq0vAW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25D9C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637823371.4580.16636178162524745867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01e9d2879f3a7115536ea4bfa3b6cb2a010a4d7d7c74715c014653d751e28f3
Date: Mon, 10 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786378233
