Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ED52E974E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758180595; cv=none; b=TW1OIo15jzVPtDy9txCNgnCW5CEpIBtPBmboyQOU3FJdTt7VPeHCqo5UgKAIJQnh5Axj5Zu8vJIklAABhMVaDYFkuMTrFQNrQULjtcRB9ERnn4tjHh+bZSxM6+X4vQppivol4+p6rTFbLwpW3nmXGwdqCBSYASfC4katgttlVJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758180595; c=relaxed/simple;
	bh=HZcUsStnwJQOKr+PLQjmwKPMQEHRKXVWGcQYlKBuqI4=;
	h=To:Subject:From:Message-Id:Date; b=cKOr+RXrBnWwCqKwlulK6UwO6IMDHpMn6yRcsJjcfInOWJTtmkT2TFjFzKqoyC0DjiLgkYrDqa6O4TkoIovJD5VxyZwO7rZ0Ee9AJUXMs76VjXFNdDr+w0rofuWT1lMs0/N+7ifWduELP1W5DfJ/lWVy6qTcDx1cxk16ELOBth4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW36Yc8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW36Yc8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3B3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758180593;
	bh=HZcUsStnwJQOKr+PLQjmwKPMQEHRKXVWGcQYlKBuqI4=;
	h=To:Subject:From:Date:From;
	b=fW36Yc8hX/rEkeg55/GOEGaow/8K0WYfhHc8lqWwQowUQSoWcQJ15G+31yhQ0UJXD
	 Xs/hPOd7speWk5lWYAuWVwq/butWgKFRWqrHsILSTYCz9QaziSnpT9XVK3oWv804qz
	 SM1csN6mflCEC14yHgjQ3G284M4Er8e+YPmjMGjxYbI3wMoF6gZx7W5/0quxJ4tANh
	 FovENdEgcizLCi+7n31TD7E+ruKwYzWkYeSnacmj7iZ08w61bBB1pRhLpkPutx6TSm
	 klXnQddQci4w8NQUy/F6XLKgxGSUbN0wXSx9sINm976hNN9IYHzXqs0TK92g1YSAzo
	 9ip/CJPFouwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F1CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818059357.5365.8604357630824745257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00f4e6af7b7635418d387c255c10aff11fbf08a39f5093e9475179a866f15e3
Date: Thu, 18 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758180593
