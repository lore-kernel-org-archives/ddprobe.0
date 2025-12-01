Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D86521420B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764581574; cv=none; b=NcY3pGgfrepdivtZfHrTwRjjjirAOw5umDJ3d7ijJQkotfEQ5nq3DTioly4mQjtQQ76APHqhacaGd6fnzKzYdcC4fd5TDO7CniWlTZheKcvLH0SRQDndwFk7Xq38UnGt5frDwjkTiC8MquTzpiOyEZAToLh4Bo/SnTtTemKGoZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764581574; c=relaxed/simple;
	bh=mxShDypjPiXQxAK6EodWJOKP75LQshuW/ainZsdJt9Y=;
	h=To:Subject:From:Message-Id:Date; b=TGneKsP06gmACp7cVHop9fzQZb/VV5jruMY0KZ0H4xBostXut9aq3E1F4a8QESuhdMhLVTWZ11RRx2Pet9usgpHRZ1hw07w4Moe8mXAV4CkxXZSsYeZy7Q/GwEsUanD8Vt+sXN6VRefOUATICb0aUZl6pHY33S2astl2nmkZ+O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9R5aB6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9R5aB6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17BDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764581573;
	bh=mxShDypjPiXQxAK6EodWJOKP75LQshuW/ainZsdJt9Y=;
	h=To:Subject:From:Date:From;
	b=m9R5aB6nvjKPc3UCdM/OREU98LoWJYPWm6kfuUqFgpwWthiCy1UX43oCsldZFZFek
	 VXivf83tdOb58MFt0DYDhH+pK0uj13SQca6cjtGNuXdz0eoorgfrDmTyjCun1g/BGX
	 60zLlGh+JawLUJHAlzLHfzM6MhSHzfmqMKPEtmB/Oi42APTFMNpIW7KOWNKquX2Eff
	 qDvkrEo/P0Epg6N3bh6u8nxPas748B+jwGbxMc1wKApNdBgfjCEVrw69k/XGTOtY+R
	 yf8sAFMUVknNw+c0XxGNwxk/KItA6w7RHncHURYx+OLd9dLZiMGWGCMqV2u78aFZqL
	 NHIy4Lip992yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD05DD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458157369.12009.101058667665667210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0f23e0be0af6ea5047926d039f047528a2116158e1da39e60eb417378e6d3d
Date: Mon, 01 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764581573
