Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913E723EAA5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763527314; cv=none; b=ChQqrLRHC91yxeayLwqk8nefg8I2sMans2UJZQwVX7h0nOGp6caZGWFuWC+tMTAIfv5KlzU8/OK4HsvuavhPK07J6ylukaHz7eEt3jj0quu5Y6zAO1su53iBBkP+3a52VEQ3Q7IAr78pCiWp27iw3Dga2oMLMpwJ596LnZJ6rHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763527314; c=relaxed/simple;
	bh=50UDzcBqcQvH9CCrRGJYmdNb45IuQItLhPy8GjfcrSw=;
	h=To:Subject:From:Message-Id:Date; b=uC9lWO/vYRjx1Kf0Q0Q2J6p7TAmOkZ4qNp5JgrrP+5ZLuoH1ER21RDIpJ69QwjwR5AKbqeitFZKkQeBdZkFEKeEdEvg5/rtbrapEs69wSufr+qqTY/2GZWmhmxBIiQz3AxtNAX+q92uZnokIOgtxCJmHDF6THIHsZYuy7zmQ6nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHnvlMTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHnvlMTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA7FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763527314;
	bh=50UDzcBqcQvH9CCrRGJYmdNb45IuQItLhPy8GjfcrSw=;
	h=To:Subject:From:Date:From;
	b=VHnvlMTXPcfLimlkHyMoY2kBVGlV9GNkVHA+Ww7SpgK2XTNhymAn/+Y1nZDihOVy8
	 fm7kiZXEKjt7FauPBYLO3nOpDymxOnHQ8EnxPuKyxLOUton7gdQbPvYmfs/Bbs+mv5
	 yvUQSAK4J6uQXPquqBWLVwqm/bMYibzADizhcHgPWNgU6CCUNPnONgrSHotRuG9h+I
	 8ZMuiE0motfP1TwTwmMt3kDn05xXKVtKUxKZLAx7hJ2VMXWFhxqVVsgAhGe35iUee4
	 8KYMx0/IP1XG59zlBFiWi7hsTIUaiC4n51aZyi0ePdQ1aXJhvXSuQWGiEjpXjk8MXj
	 zHT48bhRPeOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6A7CF2579
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352731357.23387.6489658982428277788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a689c395912f9ba494a03fc8d037f7c7e27d53e83855351ef264fca655e714e
Date: Wed, 19 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763527313
