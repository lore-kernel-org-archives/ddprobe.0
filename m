Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE537E575
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732243554; cv=none; b=R/FHr9QUGaAhQXsYW23jwaV84EkBJX1lRX1cxJYwsBQWbwPzxwuhdenFSVU/rr/VFSi3nqD4mHF3vCNFwTdZMEr1/J/W1Kd5gOw6FIN28tDjtPxld59/wnx/qxCE9ZF6q1/2yvh5qf8jGSpbLlAIPzFScUoUNzj+XsKDARBV1Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732243554; c=relaxed/simple;
	bh=IfsRdx5P8Q/wTsf7DY2i/zX/itqrEhehMP7DKpcZZGA=;
	h=To:Subject:From:Message-Id:Date; b=LfTwirOiiUst+TPG6g5S7xfE/VjIbLXCfDc/LcyLz7UVFgj8F+JO43GfQlf6LJ5XfrKxmjh7/wrjmZ/o3FavMrosRGjJk9p+B+UNVUt0VX58oKzcQZ7562AgeNlBiQGGmV5A+WVxiLR7CXK9cmZdlVmKOvtc2tQaH3a0ii9I2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME0q8FHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME0q8FHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973AC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732243553;
	bh=IfsRdx5P8Q/wTsf7DY2i/zX/itqrEhehMP7DKpcZZGA=;
	h=To:Subject:From:Date:From;
	b=ME0q8FHM5QRZ29NyjNR79P926rNg+aC+p/plsFzk+wJpgQvJ/l7FMWc7hCvES1cXa
	 fVLugrUNdxrhcUmSC+e6F3t7ZQp5r/MGUku/gTabrq/Sn8MpCbfADWJK+ayqmt+uOI
	 dwELPwky1J60iVPuUr40dcrZyhNAPvQXQFvRM/7uLlB6t+arQfwIfDh3xaiORN1ire
	 W7QkO/bpLYdQUx7Dfx3I38lFsSBzX7p06/NHL89yGJdMmFwEBIoYNBaMdO5ns/ieEC
	 rp1RQJwUHNA/wF8l4nnFalgjtC4Eb/FN601g7OFXhhO1r5wFBc2h2RXBy7Fqgp58+q
	 DuyeFHldd4udw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7AE65D14
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173224355359.24535.12832913869350093310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7b1c38dee04c9a4280b6e1670c9bb261ff872af8443a4d21994c0493ae695f
Date: Fri, 22 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732243553
