Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EC31DDC28
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777576654; cv=none; b=OLe3m2Ne6H3A7y54gM0fOg/iHO+BS5xTAgpL95Pc/5R79fkUILD0DDB+56DHAAXLxq4JOhOLF56O0D/Ae29S1rn+PdWue08w/Gk5x31lJ98lKeSP9W6ofOXk3VWTWDoyXWGiiskuD4jQaMGmLEVNBdsO5MT55/mMHCTIuCLbvfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777576654; c=relaxed/simple;
	bh=OLFRA2XfGfDxQMoUbsEVXqJPdR4h/iIyt0rV339RElc=;
	h=To:Subject:From:Message-Id:Date; b=kCs4y7bcRFnWkhgXMzZOv/CDvR/gopP8UXok7qe3zUYiJKpyeB6Opd1pB8PZTpmXpkR08couNmvI805nihuz3oJVjdmC9xNPd0UbeUqvLYiKTApJlQpjb4S8rujWnVUbpj4bybH0bzeb2Eok10uUqQ0qy+nDL0uCqrVgWSXBZPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvy8Kck+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvy8Kck+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B700EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777576653;
	bh=OLFRA2XfGfDxQMoUbsEVXqJPdR4h/iIyt0rV339RElc=;
	h=To:Subject:From:Date:From;
	b=Yvy8Kck+H74Epdk/ngdyJNkGR39UP9xjchWCw8YbUrSqnK4z1euI9yKeUJshAFMDn
	 RffONQqKf9opZmxsly39gW+KoNQIK/8mIt/F6m6tZqO6n+NDlj9AcyDaTE23V/7daY
	 iPWjoTSv/Vb4ZCLWcu9Su2WRRC19dHVr6HRCKw1aNJQU6CUJVGWFQqkZjgjNILY/gb
	 A3ni6hjBKZNX8P6rTIwBU+sTit14/lZVzPabzgGR7ro90PpHzgu9tYYYBfOOQQreCL
	 wg8fxD4Cv/2wTgrIz1G/aD1E/MnIIUIHIdGame7RwIcvCZD2Z8j5uWy/IAP5ubMW0o
	 LipDZyD52RwVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B6CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757665368.32409.1963041755795819925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9862e8ea9d555eaaae7f1b7411ce2ec2ed8c2c00f9a7b295a62f46d0e1eeb68c
Date: Thu, 30 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777576653
