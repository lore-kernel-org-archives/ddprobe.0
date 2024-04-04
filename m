Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A16C70CDB
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712219897; cv=none; b=Tn+oKSRL5PHqsYr00zV77XDnT4PzTys0C+8wLt54347aeF2Y5V93ASBeXNFZf1mAhK6zDW3g9m1gqDYnNLDqxn9FLbVx+IR4LL9P2yS1OaZH5NLmbp5wc78ZczJ/ZE0pmK+14qYzKfjx2pOHzlwWRbbG7tAvUUM1O9Xbz3O3NYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712219897; c=relaxed/simple;
	bh=JTUFxvUaM6rtNTA/cxIdOo4PtaaVbWVvtHaKlwu5Cvw=;
	h=To:Subject:From:Message-Id:Date; b=HtycuvhKXtgP+fiihYsSG+sbv6JEM8ZuoOCUIeiE6g2n3SjQWrA57pzpYeZJ3pZsui6dFcj8OhX/X2A18jfJ2srAGII7kEEXaqJIJ5OlK0cxIB3g6MzPzbShWBig4WKJJWIk91wLlISVZFMh2UFTaPrzNBU+pPz16qrwoUo4UDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdoucbyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdoucbyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B74EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712219896;
	bh=JTUFxvUaM6rtNTA/cxIdOo4PtaaVbWVvtHaKlwu5Cvw=;
	h=To:Subject:From:Date:From;
	b=EdoucbyY6N6d7WnZdMddyYiTWMF57sZhV65Bt9NqTAkeRkYgz5Pwe5AvqDBZyvZN5
	 jg5Och9otVoypNG94ObUkbYvszAdkp8c6ElLIqxBXOAm2aMsOvemAv+a5HiXtdhvmo
	 mkUwfQ9Yydwua83CIJlSVB1xjhUYZCrHcCaION6YWw3VfAvvbUNokWAy7a8Pye7U3m
	 xn7OHV6hIfmuXROXLqNJpKjdqy1jRR6Cq4gG3ETxRLe9rnwM4Mp1jbV7r3VDu8f5Kk
	 agebT+A6yjZkFxjMbEljfSSA8or2c253rcoCY8G8aShnQZykdZGTr4hfYcHlG8KPDy
	 JXKifJxwZJq4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694D3CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221989640.12975.9110080943964724609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc37d2bd044f689afe5aa59e62d4f3722140681154024ac36df719515f7faca4
Date: Thu, 04 Apr 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712219896
