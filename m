Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6782D0C62
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779686554; cv=none; b=pLDUZsxtxO9m+aqVfM6Dpt6MkEo3feBz5PJtltmoX0+eBSnv3HORjqf+Z3+kMltl8yj0k/smedMK/8qxoDrmlIlT/0oBZRf7jlzEJUV3PBhv77jpdELWniYXUBBcVP4DLxCfihRpovj5EhHdVSpCqe8b6l69AvvENeVw9YK7euI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779686554; c=relaxed/simple;
	bh=bCcYeT849J5zb9iBGCnYH/phg+BnYYv/iYWGGRTJv6M=;
	h=To:Subject:From:Message-Id:Date; b=gHiHztzvRYirfG21kKP81SlbAWgT/eR1a8TIjyxxsFFUmKSXtD9J1LAyO2TbsxFogpMoHkwEqk2+WVqepjA0eN+1azTPG/rPKHgnoAfhPJA7mP/Q/+HHenHGidVwNGKyQb5DcdUmFfPn4ziWXeoYDtuAkx5rIqMYc8p43tfG34w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBuSMgWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBuSMgWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF97C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779686553;
	bh=bCcYeT849J5zb9iBGCnYH/phg+BnYYv/iYWGGRTJv6M=;
	h=To:Subject:From:Date:From;
	b=EBuSMgWLukCgH93dn3muLvgxMYSIB9MlFimf7fnCBxDo6OJfWV840mDkSLyWsq/1c
	 pAHIWc8XbnlO918EM+MKbZmouOB7gSvrdJeTuSLgYfK7X2/au38zYyi+4u4gYfMKKK
	 mVDh/8pwy0K3/LACFbWBJHuTAWbknDYerzmI+NUsClkPZA+7/afLr+6XqWX9duuZFW
	 9iQYXIjG3mi1UjQJRm3gjG0Bw1to33nQvicYV38XHtMJTdApg+MnaxzC0Dx6nn9a9v
	 k19IukIE6P4SXEA3or+o3B0nSf2Ea9saufdokN22oZgPqRxRo+pPZJgKLgo3WushmP
	 VOe/lVOJ41M6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB250CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968655368.21055.14401867781175996739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a63c2599095a5664eaea29450e359b353cd09eb1a9e18f9257784082d5314e0
Date: Mon, 25 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779686553
