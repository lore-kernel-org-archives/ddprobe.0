Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38028C5D9
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767210834; cv=none; b=fblU4dFd2RjMyAQPwjn2Swyz+m0QdxLjEoF9K7bC7kfq5HWd/L35ZS8k1TcA8XYJWBCyj3XpWXQIpUx7HyoudRT/VnDLtcie4RXcaaitp5N7eV3OQUpi0QCWrhH2TUQT46/OjlWBRlvKdi4I7cE02uIAOm4YUxl6fV9JPQx1iQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767210834; c=relaxed/simple;
	bh=vLsJhiAAm+qyWfPVwY4jpf83Vd6C6Lh3yDAHdK8tecY=;
	h=To:Subject:From:Message-Id:Date; b=suvLKkRLdGPAP8Q5khRVW5eOze+jTTauri9Hk3LUk0HMbLgpFebg8dTpWQ8vmreIPhogszQkOTRMgNkHpo1Cd9Dk6Q12Yr0EmQlE4B3dcmsnR6m3wuK4HbnekeUav7m/h5nhakFq/oueu6LKyMZG9mt1sMxH7p7mzQC2l6RS5KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+IH8nfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+IH8nfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95AD9C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767210833;
	bh=vLsJhiAAm+qyWfPVwY4jpf83Vd6C6Lh3yDAHdK8tecY=;
	h=To:Subject:From:Date:From;
	b=b+IH8nfRk4MmTe4qcEPyv+pZ57l4DRkn4kd4Wpf0CGmVIU6n12ym+Zv0vW+3Ch3nH
	 2MRb77FX+28G8jXBUM5MKfZKWN7p6qWpkxg07R04GOpD1meYM9Osp0eZYfoLM4pX50
	 OTs6WH5g3DPga0g6Sxkth2iIclTOUxxMfpAxtPNxCb9HGW02RNEg1+P4BEWp4SVPR7
	 XIDCl0FUw4b9mrR3HAxGPZRzR7d0K6GFmk20/nvMSaoQsKbw8MUWo9H4wkQ/KIYr9W
	 toefzRhEo9sDmRLl8TM7jlwMweOEJd/OdywZKb//SAsea0Qqlx9wQIV80WRfI7QYnN
	 eOYdh51/xiAyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F317EE645E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721083357.30584.3632431450936034244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b7b1152c5b00281ecb5aa8823824756e927dd41d81c297bf968e6280f7525f
Date: Wed, 31 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767210833
