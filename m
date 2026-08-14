Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0B481FA5
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786728034; cv=none; b=AEq5zN314uaV/PJjXwXp8Lo7jIQvSW3IlPKVrYLpeVKH/O7WB5PA+ScU4SnLSyxu14n+H4gw3biW/FkO4AsNGVf/JxEhJJNq8vBMZkxLm0XibekRV4nPJtXaHldslgDHD76sYX1mpvzxzlV+gQMraidLhqqPBAgO2nz496N8qjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786728034; c=relaxed/simple;
	bh=wMWbFrRbeUs4Z/+OrkSb3ABqIZML/EXQpZUR0IQWPW8=;
	h=To:Subject:From:Message-Id:Date; b=t7VU2mmKmd7KLdIAeMg1PXReMxZGQXhikrnUsnfOUjDfma4X+WCkMRHxV/+xwWkw5irOZR5eoo8fkrB0w+QxMetuQWGJDawGc4jWiHrmgWczgSE+Zh6czjaZVlzz07oqWH/+0vMcEtgTrXijgfixxgIE+jSqzRiw5hN/Ak2sy8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtA8HsKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtA8HsKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF340C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786728033;
	bh=wMWbFrRbeUs4Z/+OrkSb3ABqIZML/EXQpZUR0IQWPW8=;
	h=To:Subject:From:Date:From;
	b=DtA8HsKOqv31KsVucE5Q6f/OqtQW2Ktbj3PHwmurgHkN6rzjy9g+NlNWVyyF6iLF4
	 l0duBcDaI+DQuh0uv9MvL/RJZ98aVXSSrJiKXkkedit9oHr7Dsg0vAnGpPZmO/suPx
	 0037RXwQrB2yd+8oVBlM9ZrdV6GdnAvtkZfHKL2yCU+8iGSCGHAWbpP3dF2VIZsRbA
	 JaapvV1yo/551PxEU7TB2WXMQz169jQnrV0LAK1kQE/ECMXNgvfczrE8XNzrTCoMg/
	 1vapnhkLC+SZN0LtCswmeit/QbGoWXDqbnA2tDz73hsbcf2+TnBkEeYR+cbrLmgr+X
	 ThyHBWj9Kp3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C00C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672803367.7779.14908434148301506502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d30c5f69ac9e281f3f28de2cb0b5f83628597760838ba5b51775e97657d585e
Date: Fri, 14 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786728033
