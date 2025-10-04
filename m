Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6F6FBF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759597794; cv=none; b=IIrNfiI1xd6zLi9xV4S55WmNB/ZBY6H3iLWARJELZuTkWSFVAF8EqC4/w9VRj0gRsMD3doaV1PEva1c+EQt4LB4LHuaWs8DYMH4kX+c2p3+yxW+jJo2iiIRiiYySh1r6UpCymxJiSZkXpCDYAmgcIhqVMmDjQXyBN7j51Y+iSc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759597794; c=relaxed/simple;
	bh=aM4hUv3RxXEsu+2BWn1miEHpb0DNzPOTBVoFyJ70oj4=;
	h=To:Subject:From:Message-Id:Date; b=HOk0YfUwhrn0dQSib7Bd1G+1EMycf/ZLd4kMj7bSBxe40pJFaHeKvThc+IjT3M1zF+IgRgo3/yQkfXD+ORGoX6IFFbvF+vI+L0L+/8rn+l/AqWJUodTt6uiRCtnbnXD1GWpEhabexYhGn9HMqhgDEe9qEDk7fqn74bcj6TLiDKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjXqSiA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjXqSiA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B38C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759597793;
	bh=aM4hUv3RxXEsu+2BWn1miEHpb0DNzPOTBVoFyJ70oj4=;
	h=To:Subject:From:Date:From;
	b=WjXqSiA47ko5fv7ltp1F1RhnTrDbzel4GloK6ou/wFW9MJ6FG/1/h9pLlFO+cYZpK
	 Zg5w5JNKkV+sr8ruvtCxqJ/4JsPFeKpYiOfu3ynMzub5J4N8u6pOutPmGUeuqAptqh
	 fp3ntT242JKNdF8cuuJc5AALMZh7Wxm4wIYpQAggWJ8weOsVAtPIYD8KvOUVFhQEjG
	 KK2VPUWEgaWvQBDZuswqMSuoqSh1UQLMQnSmyuVPYF5JCWZyL5Z95Mo3v8R6LIMIEE
	 pxbPiRhiS8TaPRhhpAJp4rkcwi1S5xO1GU6M9A/YHtlhwRO8ZAbBu0QsDqbzh/mrzw
	 B5w3kHsgoh+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B87CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959779358.29129.16375528297792048263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11bbef88783cadd5e58921bb09cdb0be8339d310113eab191e4fadae1db3807
Date: Sat, 04 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759597793
