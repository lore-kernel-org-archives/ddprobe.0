Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2729D28EF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730919354; cv=none; b=Lprmn1UNKDbRy7xC1LDY/fRlyC2llQgCNkXXmJkvH1at4CGDObNDWEpK9jJ0+vpiKC1Lgqcg/+V8voOGGxFRoGKasXTNPsVAn3eKH3SanRTtgHTwGd2ArwqxeHaF6skcJxVYrJO84W8MfKc0lf1N2NQJN36TduLD2fppafhMwhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730919354; c=relaxed/simple;
	bh=Hxm+mzYRcrieCz6pTZAG/iDRGiElYjt21J05gOBrrK4=;
	h=To:Subject:From:Message-Id:Date; b=tx5TD2NGVP5p3UtrOEBG1DG4umC7Yip02zGmgdOmvAaRzyCpRIH6UsF6IXxbtdqNglQOyIYPt2UiEpz/CCXJSRGdydrICbedLzPO1RHy7yIsv6I2viNen4pjM17QG2o3mhkkgy3VI1YxI4zmhzbJbEuv55/Kcg3uWs+aK8mG5FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKe29CGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKe29CGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA63C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730919353;
	bh=Hxm+mzYRcrieCz6pTZAG/iDRGiElYjt21J05gOBrrK4=;
	h=To:Subject:From:Date:From;
	b=WKe29CGpuEFSjqqqrvk7Qx3CG28LdqUE+9S6eQkoAzz1K5vD8bmXV0DFWmfqWXsCC
	 Vv26Kbyclon+djYaei9kKYvuj22BQUU/ZgMqMUX+Z6jjNkBxSnXI/ZtkjSyT7GdPO/
	 f2RUpCrdN6a2oPVvEY/Uq4kfgPtDvzIn7H2RVlmG0TZdoOWqOlqY7T+IfDX7zrVV6m
	 pW0uCsoaQ0ianw+P3GzjpKEwe06AyuZhPCqmV1IpEItjxEk5sJcbmFiGpOoKkWPWrI
	 VMRRTKsLjPys1otlq0YCei/3+SOFBc8hMQraH42qHPIMg68cBQOBzCTV2F5Nh0lZD9
	 zxd9OZqTVpAyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EE0D59F65
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091935362.23698.3430454363332904948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0ed4c667c48d2a5c13658f99f94f18af343c14737bc6bd1344f04fda947c2a
Date: Wed, 06 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730919353
