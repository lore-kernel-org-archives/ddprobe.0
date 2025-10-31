Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476733030A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761902394; cv=none; b=VLy0WpGlRvMdzN0bdzWe1MiwaBVYWbgxgsiGU/FE1sCVlvN8Mj80WPB6UYTnLlhdz7BGkr/dNB9o3CIDPmdCWBM7MTlFl5QMYxlniVkTv8YNoeVRY4E1QXD5SJbSb+kPO0Bv+rk7g6Rh0hyAJQoQxane1LD16eNbrRfkVFLhd80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761902394; c=relaxed/simple;
	bh=3TfIolrwv+ZwTQFIPEvhndyOX75mn6sIEzvY9ZfEDn4=;
	h=To:Subject:From:Message-Id:Date; b=b2sCmvrXX6AwI8kg2jWLs+v1Chkkf6IDMJIp7MSJG0ti9D1437mn9LzM7WAQsndBvGQ2q2pfHed8c3jUXdafrwK+IU1nvyXvkHisO4HT5oxjtmMA4QH1YiRFhnBeXZmZ1jaiq0M32p6cNiqv/ujFgKkCH5AxEsHeit7KZBjIwGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k07rHeDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k07rHeDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D9AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761902393;
	bh=3TfIolrwv+ZwTQFIPEvhndyOX75mn6sIEzvY9ZfEDn4=;
	h=To:Subject:From:Date:From;
	b=k07rHeDZzq5M71xiidA/j7qrHllPWsSk13qTzBfSnqxSRZVAuR6rbOV+uGZP6iXy1
	 /Nb4Z5YIbCVhmRv5JcN+/9XXZhcsWvN2sPzZZxWBFgiwCLpNGnKPx2DUxtTg3mGQjv
	 zGbYyzJWxT9fOFpsvoCTFaJxFg3TW/gRHcfgLU2KsfYPQDkoqkUyj5G9q+1f1ECm/x
	 4d3vFoBkTwm5rvPcdmzls80bKfUnocVOR/zDXE4Wk2S9Jlnr3YLDpKO5f5M5fq08oX
	 UWD2j+4PDiWuODAoMgIOdc+fgofwrhpEA427A6r6W6gM0fuClhRTPJdQBacHr0UTka
	 Ayz5K3sc+9+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD3FCCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190239363.20571.2790696539298620460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99618e8306d836d4d88f6bf65ae0c7b565503fe67aed2c150befba89a58b77af
Date: Fri, 31 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761902393
