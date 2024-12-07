Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D591028FC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733532953; cv=none; b=IGdqqF6GxZ+s0ITFTrJu7YtUYls/3lpkvTP3sirWUYwnBpjZUzH8J93HF0yA5Yt0Ue7p8K5lwR8LUZco9vLLv0mDHbu7kRhjumNmeZ7fQfJDwCkqra7VlkLsCu+1d1BnRW/u8SQawIYWB/ZtIwkJmAUGQWI9BqDlsUMS6NliLT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733532953; c=relaxed/simple;
	bh=j3yOSAKlOT5iiqd9SWiLDuna2liz12yl5wqdQW2zT9g=;
	h=To:Subject:From:Message-Id:Date; b=sJCpSpDuSPAIzAZCy3u70LPqA2ZsQxgLUaMV1ICXPok+4PksZusmHVthWIv7PF6e42Tf1uytOX+XeyNBTsEA771Kk3w95nDF3I9Ac2Y5nWLWW9DSr1qlcexvmpRPLx7kjG9jdE//aEuLOmT357h7r+o+LHum0FEFIyw2A5rofPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHiUDJP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHiUDJP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B6C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733532953;
	bh=j3yOSAKlOT5iiqd9SWiLDuna2liz12yl5wqdQW2zT9g=;
	h=To:Subject:From:Date:From;
	b=aHiUDJP17gpXOnSw06efzbUwFMrWvYbZ3dzlLCS+1R41wMRD4fM4VnKk5pq9EuDI9
	 6utCGloJqfmn6BThrJ3R1Z9DwJ4n9HAbQGV9tCUxrUy2GRP+Z6Fy3GEohChGL7jou+
	 W3shGjxuxC4Dm9G9lewZrsS8ZOAxmUIn41nw0pR2SC4nc9llfrvBVURqU2xQHXGPK6
	 PiUlXs0EfPCca+Zhmnn2f71L0Q972U66q84I+gmqW59utRKLBiBcLltbo3RzbdI4IL
	 gJ9h4+h8pgxr21JBJAG8dq1KO1WySk6f5MKOSX+z4RTe1ydpB4EGM9M48Z3we7Yt5I
	 Bpq84ynFhXHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BDE77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353295359.9626.16593918736705757264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc7791a54612f553f40feaac0dd1b666eeeed765a8e0451e8e3047d29575ba3
Date: Sat, 07 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733532953
