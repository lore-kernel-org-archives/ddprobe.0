Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D9813B7A3
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766644434; cv=none; b=p/XUt6J4PSe/WickAxFCLQx8KyiKZVtvtvxG+6jce6uqIcVKwWHU62wvuUzYJ2iMtfa4N8QskBg8+wc6GvcDrAs7gRJbB9N+irn1yam6bll0nwYAjmxD+ZitkPqmTK2knC7YZKnq/uZr+pFIM+swh/SG8/gHzPeqY2jt2t4GQck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766644434; c=relaxed/simple;
	bh=Tx5INmJ8FmeIoZXkvubhlxRLQqg3w24UqcqD0/M7HmE=;
	h=To:Subject:From:Message-Id:Date; b=T9KT/5g0oP7npZZhpqurG7XSszih9DjkhBvBcy49DCKZ3yg8S7ZRv5goLRS93YcsZ5J1DSjIirRIKLLeO9lyqRzy2vTa2F+EBeDZieKt0UM9mYzQ47f4NEZsR1Rq9ASDfkMbPdYIiCPcm8Km4L3KUoHN7cusrzOq0QoRj0B54GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1mpvZSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1mpvZSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766644433;
	bh=Tx5INmJ8FmeIoZXkvubhlxRLQqg3w24UqcqD0/M7HmE=;
	h=To:Subject:From:Date:From;
	b=J1mpvZSiyLWKMvop3ibKOGdA7eq0yqNUtu5Z9SkZPxPfXM76P8TlHiqAmH/TNUuPM
	 YobCs69KLRWSTelun2nTRaioaI5xAllvjyoLfatcPW8nitMjiu+TyfqN0zslN1L+d8
	 6rRVbrCcaU+NZwneXTrxOtuu7uMO+OVlUGf6nKu1iRYwf1l4/H8rNuFDavYrP8ELnd
	 yO8jgbhsqlYM53rK3opoMZeVdTueDH51XXPdT2RMiugh3ezTb6CG7KC0c10O7HNPSY
	 niGA5cD44q1ar0WYzDxNMITJhzW/3rCAZD/oBWCgLYhuRmiGMu51b49DqcuViqRMbk
	 idvlgVQHNhQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CECE784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664443358.20001.10894814656790679390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5765b62f45b8871cebfc629d144ed816f9507ca47e14e1f6068183ab58baaca
Date: Thu, 25 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766644433
