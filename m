Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258D91754B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753144795; cv=none; b=f9Me9zc8GiLBX9TS353Oi0qLGAhbIvXMz7YtfEq5lxp1THmpPRjLGIrYjpAeYo003sD7JWkRuyCv3eNAdyZxWcf6w45V+CRPJi0LjAmg74k1VcEbedw/deOREiqPoCaAm4ug7VcZXnN4pROhkHtRpRNvuFsKD5SuxRDhghedchY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753144795; c=relaxed/simple;
	bh=crdzKK3pZsOCQjM7O5eWwk9GZhVJ9PX3lHNUS76IpXw=;
	h=To:Subject:From:Message-Id:Date; b=q7RVIjbomwQVhiB3hNDm/2tOIzzgruBqKM0YVdDsnIW1lPb76mrGJp6slKYnG5ZtFDbDYRDwUuYpcEaiYXUwvl4aUvXz20gQw1mPIj+7pbxLccQtArqu359ab9Q67E4ctqGcHg85RKlOsI8dftg+bbU9EnBfoLehptePVNj2eTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeWqZzA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeWqZzA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4756C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753144793;
	bh=crdzKK3pZsOCQjM7O5eWwk9GZhVJ9PX3lHNUS76IpXw=;
	h=To:Subject:From:Date:From;
	b=GeWqZzA6HXs+sIiDTMgwUKr73fRAhzzqlNwiaWICjZd0T0gQIP8lZoMQlk+ABTDAX
	 OpXdZAJc38QIZ18cJq36DKaQuz2UZZ4vqwOcXoLxhs0TDsIjLo5VsAGClQ5vMl3ytZ
	 eRXTlAFHHIEVNb+DJIAmArnnQzJkOdsSDUvgRJfgLAo1j/HiEvlQh5RdO6mui4EIPS
	 MKtByU9DDbyjSe8kj44wscyr9KoCQuBinZrrB9+0ODdwu+7Pr1TiBbzOHI6FemmLVu
	 ozyOc9+/YtEPYKGobi0V01WQxRx2NkhH0tmKIc5m0qNAR7/if3Cn8sbIR00kf4cgB4
	 PZ4dKCk7TYSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95183C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314479357.4012.15334200961536247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87af921c979586c97d5e41f3e4cae35d47320ed87d0eb5fa5d00cf5e256b367e
Date: Tue, 22 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753144793
