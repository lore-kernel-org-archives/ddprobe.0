Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C94430BF70
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770361434; cv=none; b=gzlut8bS3SD9hN1kXAFy7IIwJdKQgkJ3r36+QCz0xiVWY++bKetPuG60QaiMHdLYIY9sThfplPd2Alys6yIQxK7KNwGIP13zf2Hf4AVgBGouqbHYMN+en4JV6IZdi83zmPuqT2agnI3+CqGikwwV06EAYKMBohRGOXd0c3GIxvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770361434; c=relaxed/simple;
	bh=f5QeMzKMbWUyEhW9VEa4hQbFp6Bjn23POa1gcaQ9IyU=;
	h=To:Subject:From:Message-Id:Date; b=Q+3Zg+6HPMI4Yx9ezypi8aTvrDDb/tiptKVEAiNv6N430/A4t9VyDEE2MyPdB/wMKoCqaEKepCt6rP3pS+fPlM9UyCZbXGRWnpPRuepUbLuZDSLlo8FrClohJxWa9mOf/RGNyd1Lk90szBnJ/GoBUvntPh9xZXUqStJr00DQ0fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+2JpwNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+2JpwNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18BBC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770361433;
	bh=f5QeMzKMbWUyEhW9VEa4hQbFp6Bjn23POa1gcaQ9IyU=;
	h=To:Subject:From:Date:From;
	b=V+2JpwNxvD1tD6X55tPLK7+kDAe7gC1hfe5HV2MwHZIOWde5DhWC/2p3+NEaJGNux
	 2kpVGPRxaHj2esEArfZkTiOjnIIjqMhplUGMOQv/7cTegvlofd+i36G+2zXXTwXnmB
	 2iAAtqgNgtg5pD2iswZ/gDSOxEW6nh68vaFX1Vmf1PLcJ9uyIbfXZu6CAYf45x3NGl
	 cLmDMtcwEVbJGc81KKNl+XuslGPSA26VUKxXmXvF0na8AQZey7LxQIacNZYJB8ZYc/
	 el66NgnAUHRWiKs4/ytf+4USQtW7RnYRFeu2Vo/7FbldUnbTmgUa42twPI4gVcT/Ss
	 KoB4n9Qo/jRUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2378EB28D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036143358.27720.7140008642387031848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5658f0b53ff12e84dc81f40be249e305f354b9a5b542bfb9abd7c740e7dd8709
Date: Fri, 06 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770361433
