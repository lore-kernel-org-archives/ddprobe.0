Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B8719DF9A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760765994; cv=none; b=eSbr1M0Z4XCGR40R3un5nXpWVJpa5LeLFZnEzkk84AlzeqPJLKGZ2VtCI8UVmiXtP7KCisunuG92ByfuuyTtU9x6e6GkLuVPXcXWEYsPM2ZQDYeOX6h53pBpft2/mtTdJaLb8DU4VhuT++CVljXn+HQsuHKNu6OJs7zgjJghhpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760765994; c=relaxed/simple;
	bh=3Z3B5uyoz2+2smdIZEEDSSEv+g9zZuf3ZWsmRb5yDQ4=;
	h=To:Subject:From:Message-Id:Date; b=IkH1yUkuZFipuyAmYhqJq8bl3WRqRhFE/Wd3LsTCWl5Cb/4RVXS2JCIJ70wS/usT4R8JhwW2rNfVc+596J2bLIFfWTiUY5NCE/8VnUg0dkeUwL593SiTlHmI+Rj6jEFNbfqOS8zPJSlRk+xVonYEpnsBDgrc7gkBdvACMb5U/v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVgHmWrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVgHmWrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760765993;
	bh=3Z3B5uyoz2+2smdIZEEDSSEv+g9zZuf3ZWsmRb5yDQ4=;
	h=To:Subject:From:Date:From;
	b=IVgHmWrpH0wKEsx5dy2tCUkBs/G74Rpxq4eovbfG0c7NzQ25Ttl3DD2Qm6H3jH1yc
	 mWbgYs2AzsZdVP76qAqBZKGDpbgB1ZbUe7zCiPsd+7iN1se5Q1jw2yNkY1R4wtgTFx
	 sM3wmVhSI3pjOcEffdqmr7RBzMJrpC8WDIDf/+QaJA0JS5j4sJiYodAdzw4FbxX5sO
	 0IKJXQ6V7uTSjraALCPPmASPNPK4SNI7+SKzb7SajVUsL9rDUCjlTE4R+E/vI7bW6y
	 m5tkR5MiJTOPVpqDi6fGOyXaRq/1TF3ItP7Eb3PqV1Yus6w2+RaMXOQaoB6xyVoEQi
	 PoL3c2VSelcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317BCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076599357.3245.11897567556242671754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9908389ad04d74664faac733cc8009b187c51bb43a84119c7cd3b36837fa8633
Date: Sat, 18 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760765993
