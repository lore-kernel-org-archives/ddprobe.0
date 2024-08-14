Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5B8BA46
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723617954; cv=none; b=MnFScQu2FqoQOBPWRl/tSXP80zczLMKJ1WF9nRh5/bGKULTE0o4HNzNmhe06zlTMkzjegn0GQvywBSoCoRaRG2TiziGpjCU2WGndyzuybosRVY2v+QMx0T6KYPADU9LyZ/zg6zva+px81EYkb7hfqWAqNK022H3N2rqVnBc/OuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723617954; c=relaxed/simple;
	bh=7ZX9H4fyLoG3Irh+O0RgHpXx1MT38h81nfcAbZS+ZQM=;
	h=To:Subject:From:Message-Id:Date; b=heNC86qyL6LogJr7H/+uFE9jF1uF+UvOc7Woa91PqCV8EuMlcUOPmKG9CrBq+LSc/+ghF30GUH7Oo8WG/iEvdJ8+Kbem7AZQyOW/W6FhJXXp10Jysc1Z3V0Pv8+2NYyIH/eRUupv+GTuHPfEIrfRxijn0cyQ6ri0lZMIBo5WSvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awUqxaps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awUqxaps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB03C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723617953;
	bh=7ZX9H4fyLoG3Irh+O0RgHpXx1MT38h81nfcAbZS+ZQM=;
	h=To:Subject:From:Date:From;
	b=awUqxapskOZDaplK9OTAKAQnkppZ74Y/9H+7hHW1V6v6w5TAJm64CltvDNa8CDkBa
	 EUPJd2jq6pIJ+ShHA0Un4xbQcpNr4nJB+pjwc3ab3rUuMsynq1f47lwA0olarHtDJ2
	 fvu+ZNbZKKTNSCtmtB5+STVm9Sk0W2lXXmZlae1t3zlYYRoovLWi7OQow/ihzGq3IJ
	 Wj1l1d2JI62rhNdmu0UCIYWtIwsOS8+dj5YgEARz3IF43uwAuymsRSpe0Th4+zGAwp
	 p9kC7TqI7LFpzpVOc6Y9Jq9JSDlw6iHUHeCxJqXl58YUxp6vHRDwg7TCUaKRmp+XMl
	 xBcC54+b2yAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F697C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361795357.28439.9526291433595008300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62eae49c33aacd4cf99b7bd9be6878cfeefd4ca7a1d6a264b5874204389ea0b5
Date: Wed, 14 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723617953
