Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4982B1B85C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725647154; cv=none; b=VE9+goo4qrtewYOyQcWbtj+h0FxB742e9qg62HTwoANUX+rwIUWwHgiXygtEwZQpW4Rn0CWmrwFXiTyqrLQNylZ6f5DPh/+5GG8VKC8dYGXtT5HaevMrCkGPwm/SKkeRS74/GUX0jMOjGZTiYOKX2aDB1eQHyMGMru32Q0O0frY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725647154; c=relaxed/simple;
	bh=Xi62MWzB8oA3/YdOXIJldTjLsFmi4GeMFT1tIpxC7rM=;
	h=To:Subject:From:Message-Id:Date; b=OzA20GEZkdZ+kIlfhkKS7b1gjyGCs2E4oll/XS2V5c7kwNSM1RC2x0jx1KNlSWuDiPaVxyL5iNiX4UxYDiaLBp/2ME2ySzDhI7hHdyI1zkthNRg3y49GMH9/RT3dKStWcjTESuCxpYjBF72K8+KuPDNmFs6g9LfcVQ2u/TgoF1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXYKnsxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXYKnsxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B669BC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725647153;
	bh=Xi62MWzB8oA3/YdOXIJldTjLsFmi4GeMFT1tIpxC7rM=;
	h=To:Subject:From:Date:From;
	b=cXYKnsxX/IMcEE59P0TDZPKvIMSGoVFGLtUs/S2mKlcL3PBFTIXCF/b2pItME3Uje
	 Q6wFl6VSCkeg6LVCwkP8ctzfGGF2pMjnDkKPNYVHJu2+ePduE0ue1fS7uTRAz5l0XY
	 ZfzJHC5iNMWOcdZmOE9QkfoKrLZL3eYjurNHYdLQI9m8cAc71eR1i08M7Os7250C7y
	 PbDM1T2YHYGYhEADmzgoiWyC9R1djfsMonMIUH6WDJy8mQcPXYvy3OgqJKSuhhmhTe
	 hU8SRULoPAQFxheliIaSy8BmYWwswujoitiKhTrKub2/4REbs6i8KEliILHE2kmdPu
	 PheUqNVwQ7OxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7E9E6FE3D
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564715362.9326.1114336687245932852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6862e83fdb11184eed2025361d01e7548165a6b3ced5a95eca6e601d0cb0db5
Date: Fri, 06 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725647153
