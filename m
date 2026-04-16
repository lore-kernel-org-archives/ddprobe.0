Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D8330644
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776362254; cv=none; b=LUBLngPrX6tg8bUnvyFN97Q2mqIB1UPknqxLyxWWyJ8gmJuRveLNKOtCbQWoZ4p462S66WgDIKRV0qWKAK0G5cS2pJH618aVFM0lCSDdksfN70EWg4iEdzpmGPTjqbBDQsY1HWtyNTWHVs0dZButwJjXuCdzPDBbUT/SBDxniRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776362254; c=relaxed/simple;
	bh=NND4yQEx1HFRPC3ei5k2sRTLskLANTzVvT79jPTqXMY=;
	h=To:Subject:From:Message-Id:Date; b=cY6ygR8wJYuEMmziSkjHrYCMjqYGcchqtv4K3INQr4CGp4Ro1LuQYjVtmLC5mC9Vw2ol6aw4/wxaIFQWcR52JDNgNQnU10imuNse5t9Lwlr8ISMc0fr/+DpGK/oq6MF4OQ4A7QWg+ys7qoRFERvKQfiXvapVUBjaer/npqD56m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Btw+MeZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Btw+MeZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03D4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776362253;
	bh=NND4yQEx1HFRPC3ei5k2sRTLskLANTzVvT79jPTqXMY=;
	h=To:Subject:From:Date:From;
	b=Btw+MeZ3jw726n5sA/OQnC2YoZPZy+4P0g3q/PPqhJyYOL0t6H5PhaOecJY12r1Ze
	 K6QSL8EQNkQHDE3EtwwHqwPk4jy8t5XSH7rz9krNQLeUvQou6kCwfMTUJHLOHladZQ
	 XocdRyMPySK+xVl5POtGwP8yk4MxCBv/HMts6tDqiCtIbdklognRAhc2rOYO93BOs8
	 AXeWQZKNjt7q5wymDlWNITBko2ZaSArZzwsy86JHITjcFJGrAXQSNHR8MyxcVDmY2E
	 O68zCEoeMWuaWQ89FIh8jtIHTt0ApTSgJqPBa//mWypu2xfiNKAfqO77sCKrNWvZsg
	 9HdmsqKFGj4Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD8F8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636225370.1227.17365684414480390959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac534e0d2c9bb336f92e1b8eb632ac809d7a98f726afbda0e28fe48361ce5b0
Date: Thu, 16 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776362253
