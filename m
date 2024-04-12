Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521725490C
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712924363; cv=none; b=OcW4GRH8KuAyGiyCYndJNUeh0kuABvUjl9OOSJVU1ojdYcIPTEleHik1vXlHQqvd/wrkq/+RkvxXqVeIrgnA0lZjyIFlH7FDgbcN7Ym7ROcqt8aQHoEQOvPvgT6mUB4p8U79LLwoVtuCQJe02vQAzlye3xHEO9hnATSrVOj7V2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712924363; c=relaxed/simple;
	bh=B3sSdE//GVoAj1HoS1i6DJNxcS+2VvRvFNknbHigkxo=;
	h=To:Subject:From:Message-Id:Date; b=o91Ep50Gd3vI5NqY9L6rh1Ps+S0qEgIU0MwjwZ5XbthXtSn9+4w1l4WpGEe9CcmpBAicXM0e2B7Ym7nQyPaJ50bMuMK/nWuGNTVJgOl75msYgoxlCUpCuJjaCYh+ny6eh7mykWl6EowolPEIpld16HW0c74k939UTKQASY7RBTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNKq9yjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNKq9yjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D324DC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712924362;
	bh=B3sSdE//GVoAj1HoS1i6DJNxcS+2VvRvFNknbHigkxo=;
	h=To:Subject:From:Date:From;
	b=KNKq9yjRvi2Duu0ltxycrukZuOjegJLZdn0NIW5VPdQt0AQHDaGkEDoRHmGeN9NLV
	 ac4o7acZ/875jZgjPmC5nFKE5/rVn+SuSsQlEMnsgg1L806uoLrdg2LP8Vga3O5U+g
	 auK/ESG+KaQQLb4jDLoIwfWcbGPhKBL3psaZ6u0jCAkifRCs6PoejHzA/dXhfD3oAB
	 OC3APtAIXI0pIaaERF4ACL0gITMITI0UBIruG1z5wDdHpbv+UBcpbwdyUKdvSU55QI
	 XGHKrLDXj6uVWglTQWbnnXPuimi+Z/wkVR0xI+HLF+eqZr7e+C/B95U5DvmXuvWIFf
	 KYq9mUr1CWEdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD099C00A94
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292436276.3726.8092379979226031726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaab71f749ede202485cff7f65cd2a1ec80d396b29be6eb92a54d783e294b8ae
Date: Fri, 12 Apr 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712924362
