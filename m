Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1DB4746BB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785270034; cv=none; b=nxPERYdr8C6TfYuqjupFUJfJPu7h1TvZcWR/+ShH3ahWWNtIZO6PNlii5EiRzYTco1lvUTBdJjHhe/+GugQLbs4ux7Ubse2Cw+JIae7GeEY3yhPB1fNK6So2ktO54lzd/9Ce2yi36Y98tLTKpvWllmKa6Bo/4Cxjcsx2KRfmrlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785270034; c=relaxed/simple;
	bh=pHNvMfJA0iQrbinRIgLttPQ1IQNbsBj8V7CM8x7JfLE=;
	h=To:Subject:From:Message-Id:Date; b=S4oA5pWCQIXRL6ohfRzUC0dcijA/oh0dNHSGAGKhRyYp6oewo5zNFJ9k59/xnJOO9AionJAPwxcwWS5GGWW6/NyvjmgmqtO9/aTCVyn3gjnFJ5Rj63YdwUtINvNjrP07kKCLbNzaGYSAiBxsg5+g9m2kq9E5gHzqHLwelHdORr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrOD4Kpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrOD4Kpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A2DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785270033;
	bh=pHNvMfJA0iQrbinRIgLttPQ1IQNbsBj8V7CM8x7JfLE=;
	h=To:Subject:From:Date:From;
	b=GrOD4KpxDKhHKn08700IXeEC4DOXMDNHIiWAXTMSCTEodgvAlmIk2UxOd54KHZRGU
	 SeajGBGM6bklTX5cNHXMkzTwi93/+5ZqyRqciw7AyWcy2NzWhu/OtRqJ//kpWCjiqY
	 JfJ00xjyr+4BZ943y4A6QtybjlgLjyS30SBB8pmD6iKjd55/y/cWKK88SLGpqbho08
	 09yMLpLFcXzWTmRnblw/1VOh2nFR6Znf9NIscsMVYHvmXEhZRd4WoBuYEJTZtHVXin
	 EvFoUiLwjBDeDEgRio9TwtN+GYbCxAnEiXXcXjUW6XnQ9Z4n0lt2gPFMTVwOU9DxaD
	 0QWlnKq1v02Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C05C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527003368.4872.11054835457106444820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302640a4aaf54b3058bb32478f0415ab8450e9b4083d3ee3ad4633c87c621e89
Date: Tue, 28 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785270033
