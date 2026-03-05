Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489E26290
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772726694; cv=none; b=XVXR1CPSPRfFuqkiFQdQpYX1YRr2qZshdfWFi1IbWM1BM9OH/TvrER367B5cjpdJssonrYinjfklf1WclwWIu08TeEkiU3yxrTJy5/mksoMJroDqZPN8uegGECsMhvC0JpF+wM0cD203HYYFjV0MlJ/1CFOKRS0emWMD7aOyVWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772726694; c=relaxed/simple;
	bh=O1gXGPiYFTgpyinzLz6BPxZgI1eUWJpqpcyjuFdUKsE=;
	h=To:Subject:From:Message-Id:Date; b=kiDpw+JqDSFTNbBu+WtiajKyVJQcz9EsowOqXbHabrrsZu58B4ceYf1VkkoSJ8yFXV450hjPRKdgWV9ZavaE1wTjwfgzmxwTXD0kj42V8K2grmilLJIzv89jKIHw9YWKvzFBbOAxRq8D3kDag07ZtL7JUugS+5VQrs2LjHvHVRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdRdJ4Ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdRdJ4Ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75ACC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772726693;
	bh=O1gXGPiYFTgpyinzLz6BPxZgI1eUWJpqpcyjuFdUKsE=;
	h=To:Subject:From:Date:From;
	b=RdRdJ4Koy5feW/2RxCXPwpE12707ynTECwRbidPcihhR1scoL8dOxSLZz4KcE/qVy
	 mR7tfRFXoxvw612P0W11Uyqwu4JQ2YdWj/VFiv/uJCcVU38bY13lpwWwd3qEj5mcfc
	 IA+cocJlPWDj2DWNyFc3hgRYsmkqv0Q/yYj/vVdBX0YKMNlLXJ+djke7I8fnFA1gAM
	 N3ofUcPUhfuxJCZ9IHbVuwqXCWYNXIfTlAm8a/2Xn0KgohvV98yXKF7J35BayMfeBf
	 PXirO/dmgNAC1D4qIXgvtifCKGXoXaZAE+vEKA2wyy7PJ8tAnHz/s3EE2KlMRnhRLv
	 K8iXMA1udhlpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA31F3D319
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272669363.13118.3455873575043436575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e47320d7fad9d191ea6f1618a429d60788f29f8c1ccbdc79292d8d33dbc6d6c
Date: Thu, 05 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772726693
