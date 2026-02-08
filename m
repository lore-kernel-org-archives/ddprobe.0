Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44751344031
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770594234; cv=none; b=B1u3XlCnoGH7CSOwILifFuWmHHUs9AXvkaFHaKv9qYjjn0A551XOQ2XgmKt6gul7SW9wCoGT22vxn3WPlh0TkO7L7oEXRv+HA5bqJlYVgTw/XC5UOZTTxidD6QFMyH4g2zkM+6sKQkVrMSqon7hVK2GznTWEX/1LfSh95c2CGaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770594234; c=relaxed/simple;
	bh=GNwIG9pcgOx6i5cmW71U9u8egDoS741y/LpluJr4e7o=;
	h=To:Subject:From:Message-Id:Date; b=ZJcHT4eppeDWkqO+jMxwfedFYvwve7ZO3l0cuud5UTPGhUA7FCtpWurJxUISx9I4tyh9NinvOmjVO/Sonum5sr/VrQshY5MHfC1XPioeWgjHq2AkLz9A0fD5H+rpuAmu8Fz4qSFQ0n/zqhcRJemza9ZAnfE1NkBFUoyAXlF27aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNlwVqxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNlwVqxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770594233;
	bh=GNwIG9pcgOx6i5cmW71U9u8egDoS741y/LpluJr4e7o=;
	h=To:Subject:From:Date:From;
	b=CNlwVqxVewXXYljOCVg1WPQHD5N+XxQlAsTFhzMMoExVzH0SMCUmI6/J5hbuQuwn8
	 JfmVLnhuKtax5udoG1jFBQV/pZOy0uiVLM0NC2AJ1+ohsW1LKfIE5+qDe6rKQk6QUJ
	 oo2bbWClkoLpbAQKaO7KzSmB/ChvZL1fjswQao06RevbBEKJ6xXjeQxk4JgWH0H5JZ
	 FMGYogMfZliDbc6iH3adNfW8XwxzYxKv3S0haxqDCMszx85mjg+yLL7wDYoSsYleaN
	 Y60nsQgz0oq9niEIW5ZWye/iSf8xXONwX+tpprByv7m3o6vy2msWHrQRmWcDO3urWy
	 oIqfFz7kt056w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99793EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059423359.21361.12258924990806013629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609f7c95c138504281bbefe43cdfc334713d3908ae1ab2767ca97cad6a7b01f3
Date: Sun, 08 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770594233
