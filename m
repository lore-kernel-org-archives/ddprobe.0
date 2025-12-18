Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914729D27D
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766095434; cv=none; b=qqhNQD9z9pY1UwUm7AWmoz1t0zm4kF/EfbBSDbq4yxkv8AV7owePU4z2H0yqnidgiadxdBIyv2XCPHtOaXDiC6rNjvoktDTZ6yekfVxPsU/QevIjiiRdZ4oo1U82v8sk8YiMBP7b1KwSd1+L6CDDJtISyGyNsy5VjsfbJgKnJY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766095434; c=relaxed/simple;
	bh=fBc1HyhbnoSLHCjzuP8Dfo4uf1cYW9LHBLEy1JQXdrA=;
	h=To:Subject:From:Message-Id:Date; b=NLunQIuOtVxXDptnk5THWKpFCcKBKUqs7fKI9BxDwAzsTvtFK4E8MK1QFmAJu2uQaIHk4Rm61rlNJS1FkP1HX+/iqprkLPSOOFhV76svHHiIqAoIydlcLvmd0mY6kOzwBpxIqtTscTjmeCdf1HaMmP/BKIkowHFYx/ZjVXuzpZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHOBsynL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHOBsynL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB5C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766095433;
	bh=fBc1HyhbnoSLHCjzuP8Dfo4uf1cYW9LHBLEy1JQXdrA=;
	h=To:Subject:From:Date:From;
	b=VHOBsynLzkBIdoDUGUntTy3ZIqmXVYXYa9SOp6VhRfGopFAAGYXe6+cTn0cqN4nuo
	 GHxbIl6ZitDHDu9Ww2BVfZqMgMXR6J0QZeoLT6S2xv17gkaSix879XQbLm+1GGbfiJ
	 C65eAWtuSY+NPLAvR/IMSahtds5aYVWQYJdhe+rAdka5D+URoE5phxDqSj2sLen1G9
	 Z9a0pdrDALbqWViBi67ynRIgRBRlHJlCqdFwsZiHT/vC4qzQho1RjoX0sjaAdjfVS3
	 +Sft5RSxejYFMLxbT9sbLSyngtdHAqrM0DrRlDEGI8dYZzPnID9EjQnU8GbTRoCf9T
	 gtHCFcNZcSEuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8DD711C4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609543358.6580.15979922267735125398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84018c8d745af91d844698ab5c942011ee32a3b9af98be363eb71fc90b09484
Date: Thu, 18 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766095433
