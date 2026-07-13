Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27D63E8340
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937914; cv=none; b=CMA4y3pvXpBo5FEh3KFM8JxHtromoNe04ZjMIqsT2tLRiZ8vnnz07iQNg7xsfLCndCiy3uNBYw+ZvhudEeUzipaztjOZmpgL/5f1/9FhEQpM3g5dbf9nJrRxRh4unkVXSMQv1fnbERvDjm4efGbiL2CrhbefasPKJYOT/og2iiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937914; c=relaxed/simple;
	bh=gpraTYZTj0x76C61pUNBOfIrIzyU+qusOe5ne+onsqk=;
	h=To:Subject:From:Message-Id:Date; b=Pkr5276pjZezqDq61dSdTEW/IsQfphXwt+vTqJRqnR0Okn/I0zGBD8J5h+yND2w0pRiqpQ1dvUjzpChNI2QFQkrunSIEZS6CcK+XWCB96V8sBVehcg6as5ZN7Phh91PFCZWq5/R4rCXGKJyq0yYgsz6Off1xgfX02gXawKrqcAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuuPX74F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuuPX74F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9497C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783937913;
	bh=gpraTYZTj0x76C61pUNBOfIrIzyU+qusOe5ne+onsqk=;
	h=To:Subject:From:Date:From;
	b=fuuPX74F7t1x4Sz15HNw7kUXTmYMFE6/qvTFtV2oEsR9klfggQgPm964baXNU6Mlr
	 u0dubVY7ETFU3StgsVtV0ZS7mU7U0Azghtwjqy11ruKxWYhoOcClreUh48BhSeTmSI
	 tlQqM61C84nWGckmNgSDu1g2ev9cYb39Rhktf/IHMkvrRpu7gihZPo5mtKLNO0ELpY
	 DEkPWw9A1U1g+zlOTm9XMsxfUESV7hxRnqX9c2MsXAyfRjVw7zRLUtUkUzPN7VuOd2
	 pWvRwjVY2GlPTj6aksCVR4r30bmYyq+cisDyItgJqmH8zE5zTIlmWzWkAeN8YDkbYN
	 8q7Ida1R+/71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2AC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393791368.15380.8711959618848590741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16532049edb452feb454ab9b7d9ba5e5f79f37565666ea664e488e1a8ba8baa5
Date: Mon, 13 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783937913
