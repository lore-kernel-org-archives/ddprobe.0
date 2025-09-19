Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F06F25BEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758311394; cv=none; b=FHZhS3jSogrBH58gi5z6B7qEIlpmgz8+6KELT7CZlc1Su3dt5c3WC/6JcEq18IEK327KSxT7vqXcg2JZCUJx0iqqan5DCY+pM1U8Cb2x5miOv1icHLYnZCFcA8Ne0yjmin7ohXLJvcJyRaz8bVW/WjHvLb5Zl2zzqxIr6qc1pys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758311394; c=relaxed/simple;
	bh=2PRr8PFA1ksRoG/U+b59lfCatZ8Bkt9u/XkjjnLHn6g=;
	h=To:Subject:From:Message-Id:Date; b=BLGQPVHfRFXXrG+OmbYnvpVBefER7iv31XEZ6uutAasGHz8cc9tizb/FIU9FNW46bLhgaNp+HxS0OtkuU9uWXXPZtrmQGQzzwLXoDB066raWHQ7IZ6RUwR6nTQ8lyc3PfzeWK4AE4avqmcX9sIkQ2RwYQs2M6ox3FfQ1zD+xHMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLvwtB1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLvwtB1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B6FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758311393;
	bh=2PRr8PFA1ksRoG/U+b59lfCatZ8Bkt9u/XkjjnLHn6g=;
	h=To:Subject:From:Date:From;
	b=DLvwtB1P1AEthdrfvcENAk9L6i6uOnDAm+8iZVt1cnGdQalwXTiGG9IWuHMi3Uq+G
	 X7lgrHT4ABTDr994ZYzRY9w2Y2UFa6nh1l8t47lTVhJDrXNJCdhh7I951ASZKSHfg3
	 6BjPcLw2k9a6/Z+ogJuHHgi3mBpU0uFbcxHYaYhjUhJi9B8/ffsAsw1X+ql4lHMehq
	 UGrsYjzvSvZ+ZVsPFGWlv32FVquM9gaWn+cds/4aPrU25uGpvZnLV4N6OS/PYjnINs
	 h0KRujNw+umrwNV/d4B3CiZkQyAbAvTXbDVY79o8soaJmRIu7MssJ62jgch9ePhomM
	 DrGXt95j7HXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B6CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831139365.11407.1183768460694344729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0c73962abc722c173e2eec5d8b7c7a9add9b40195df6d879346c457942db99
Date: Fri, 19 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758311393
