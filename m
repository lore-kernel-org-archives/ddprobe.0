Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B66A039
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726725354; cv=none; b=jyJTKjL1s1XIw+WKDZpeIxIUFFCDxykVHpw7mr9jhqLb4lxMCVaUYeK2PWf0O3cueZGi7FktT1q9v1o5saVwkG82CNDFLjfNSilJUexYQy1KKVZFjYIdB6cT36sG3qg6Z8tsNgDM2bQYTY/dQmV1e8zv9PAJkZw5wW0bXf8/pgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726725354; c=relaxed/simple;
	bh=AOfdsUygtIeQ3GIeXR9X9xKwK0hJdytpP//9+h3VwMc=;
	h=To:Subject:From:Message-Id:Date; b=aZoPu2HdR3tF7ILvJ6w35+76nLQ6SsudAyOElVeR+ISmkBxJu/EJctKNEDUuI/yOt/K4f/Ua3x00otYsWWI3xqqZhNraB+LbVU9mBQ+Z78ITandc+xiW7E4wOm++EX8xcGyTXk/SQjMbT0qmNyzb5DoRRoUuXSKG6lLAFVPtN5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4a5ivx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4a5ivx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF61AC4CECF
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726725353;
	bh=AOfdsUygtIeQ3GIeXR9X9xKwK0hJdytpP//9+h3VwMc=;
	h=To:Subject:From:Date:From;
	b=R4a5ivx2kKJ5haQAxFe7Sldd/18XnOywGboL8cMbDBaMq3hHYO7jUauupDzcooNS/
	 Ck6PNUYuxiF3CENkZdadYqebrRjchp4byX/zt2QYQco71l5Yp6Uwo0H6I7+dVfUeIr
	 KL8IOOgE9bH4y3jruyML2ZGpj+e3gNiLp5QLGYyiPGBqiKFltx1LCnjS9yvK1cc8pA
	 fsrzBMaPKlbJ5GO1+b3OI5fOl4Fbuo7vL3Bl/w5+XV0buKddswQFvheSPLr6IcWgy9
	 pQ86Gt30cGPBcacs2qrm9mdAcal8xZ7Xi6MbcJeQsrodGwduQE5ohI8z1ZE6dPB2hp
	 fsdpSWDAbVPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C6CE8D4F
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672535361.4325.16290767529356752613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa67c1404e980e165a9976e8ba0f7434c70f2e691cde7e392eafa585d86db0dc
Date: Thu, 19 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726725353
