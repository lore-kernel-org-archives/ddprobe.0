Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFDC2563
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739087154; cv=none; b=kF02W9ddZSoxLAaHoiJ+qQgNA1mHUaM80vVu1DrV861bHNwFcBF7eod9EbD+Edcfsz4cf4ywTP4TQV8EOdcUj+J0pxNYEmYCa6buMRrhsHENBjLkRpEkQvlqY6wVEIb2Y8PvruIEqZqCdBHLMwuHYyienXLt6EFWFp+Pwe12rwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739087154; c=relaxed/simple;
	bh=66yokgutusdeu5QMhJd2XTPrm6qwMWTnYjkK4/fJkwQ=;
	h=To:Subject:From:Message-Id:Date; b=E0dhFfzhfIeh0e2OsWw1YKsOBinkujnZRl7y7SKBpjSd++A76JnmBJCSEjFrSipLUrslyZzoZpwJz3dkmu9AbAqu4gnwEmS9bMjAJ7b89svNyJk2jkjlEgIQIYmT+Q6/4v8vnlfTsF1bXhRyzY3q3yqgPCsOyDvs9o++15o9dpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vH2LBBxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vH2LBBxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA797C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739087153;
	bh=66yokgutusdeu5QMhJd2XTPrm6qwMWTnYjkK4/fJkwQ=;
	h=To:Subject:From:Date:From;
	b=vH2LBBxXJlkHBKt+wpupy9pzDtbqlFIQkZBwUTbe4eb0NlbbNlVYf/RuW3GcKoqYt
	 WP0Ik9xeAOp7BF+l6bX2NCkLPXPxe2WVFEqjqwn0NGmHWCENQYjffRuzSDfrCafzFT
	 f+rBgrq/+PC624PZT6V8T5M05knnsCD+GzQtMo91uDSX5BB9mWiAohI9SZI1to+uq1
	 t9/CotKF69b5jWkN5b4na3d3lfpdXZY358Vmwyqh4vSVLs9OlXNLsHO9r3crzJh7Un
	 3xHEF3nTnUDiifhcbXzruHphpSnHVg4u3Qk2awjOQjzzdU1rwYO7idqrELXGOHZ1wR
	 lsZTJrLDDecfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A52C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908715359.29075.9626720348060661130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcae484d0091b2acf2d36b30b771e112b2ed184f81b1713ce7662b58b2eac6e6
Date: Sun, 09 Feb 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739087153
