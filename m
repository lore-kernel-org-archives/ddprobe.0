Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F771197A6D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718648303; cv=none; b=h/+J1oW8hPhuneXMuvvklZo45NlT0Ca1VtzbjF9rWa60dAgKn9iSUhxiWuKGXn+icL6TeODHRjnJ1shGsT355LHBlMeZats+dmXOMNxyRCaenIEtMSx7CmE/XnU+IcjMphAWaycdM4Xtw10nOTHHkUbnNLDwbYvQKagCimxLYeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718648303; c=relaxed/simple;
	bh=QtihWu5lTN98/oYPAbl3Pa56psx2wZ6iCtoonQ+S+u4=;
	h=To:Subject:From:Message-Id:Date; b=jOS+EMW0gFTqCtWn/+KjOBpufrSLnzQI9Ilppr9xrQr1NmZU83Wz95H8oXgV6Hq26eDKuOvVllm5qdtQLQgB6lzhIKwSEbmmVi1VnVjTGti1QSV7z3x5wuA9yh82kg5vGsr+S+27Mmt2vwz3y7XU5twTnOJYeT2t/0W/PqsTqNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/S4aF47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/S4aF47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC71C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718648302;
	bh=QtihWu5lTN98/oYPAbl3Pa56psx2wZ6iCtoonQ+S+u4=;
	h=To:Subject:From:Date:From;
	b=M/S4aF47dUF9a+KEG97+vUkreWaVEXUUj9pE4F8RkmvJ+yjHd0Nrng+2G+e/sWboz
	 TX45W0Tzk9M0TlLWWco9eLHO5Ge3bkWOlO3UGQkw0cFze4LMqlEKNmW9EE1FYiIkA5
	 qmSSErEf3QPQXIJgWHdNvQuoE4oE54LVWrXI6U/bTobC05SG82LTtxLBfLdlmizl72
	 6urp/8+IYhjp/ba3nRCsJ13iiXFyTWK099H7iirt8orKlpeD0FZekSk2snjwDb5QXb
	 +UFpK/8ILJ39D+HIfgL8z8YSqu2DiHWbm7d2nlRAolgz75Pe1cBT+s7DcWIfSYoOkG
	 YIgJsVkCCVPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E00C2BB85
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 18:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864830278.5980.8198272651412085048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fae94a7372bae158c88004184c5e94f844b33b125ac3e9131d8db5c85a6063
Date: Mon, 17 Jun 2024 18:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718648302
