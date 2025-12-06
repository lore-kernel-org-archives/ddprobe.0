Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2010023F26A
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764987174; cv=none; b=HXGsQGewHMuyl2chZMpoMbyBb4qgDpfnPH3jsUzT/zOlukZpi2T5SbIaxeRd9j6xExtY4qA9gOlU6hUJQCZLQbEiKUWfZw8wihvqVpveDSev2Q5UlyKJwflpYX0RL6fgZINlDPKUUdR90AzXy26I7z3qWY4q5GOjynB7FlKH/7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764987174; c=relaxed/simple;
	bh=d/ImPYEoDJ/kBYblDJ5ZEVt3wlLMNexwb8TzQMlaZmY=;
	h=To:Subject:From:Message-Id:Date; b=qNsC5wJXJrpwcv8BSlRALbidEvtcJPKJvVp2NacqT4R3NRL1Jufv4WCb1d0ZO5uGVajbT7swEZOoSVKB267f+wQ9RNrDyTNX4vn2kkLJVKVSxDJR0QRifisHvGfsb0InUaDf5Y8uDnFVnw06o1QtrH8HOTbxFFR2ZGxBrE146VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlbVi6H3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlbVi6H3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEACBC116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764987173;
	bh=d/ImPYEoDJ/kBYblDJ5ZEVt3wlLMNexwb8TzQMlaZmY=;
	h=To:Subject:From:Date:From;
	b=dlbVi6H3wYEkZzZHylkQ1100/2WuD0Z1bCQzg5i3963pSglM4ur6/P3yawvCwHm6p
	 DXSPT+9dGpyHvrkOY2/JhyLq8MB3FjaSQOSApcwPVUPDMlG3TjCRLbnuDQSRSI9b4/
	 Pezpa+gisZsqhRUXQpT5GEjd0Cz3BXeUZ8mng7Qt11ltO6kVCoA+F6y0R8Dit5n2+j
	 KCdZy0qAYO1UyfGPG03oGbPx3zWJiD8kWAooC3vtVNYTXn4koElbhYLRdntpVY9Pud
	 6Aiv3A7nTVt7X/WGCEi9H68BNDLb8/fvBpXmfBqEdyIneFnr1yL3RtrP3+rjulJ2nj
	 z00uH83cJhBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986F0D3ABDF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498717358.23674.4266946785489554212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fe5f3010db81d00d1474c8dc1d7eaee7f6c466769ec96cefae41aa5cfaec32
Date: Sat, 06 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764987173
