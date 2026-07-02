Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286F382292
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782973114; cv=none; b=JYSZgncZvMY2akpGXPucpySpqWVcStXTFyqcX2bua0GGWTiv9TaH8IETgnXSWwcQCIk3+LDZi9VE9/a75MyZSORbfvh0snPE9rcQLV81Xtm/42BUVSY51kjqFKfE17VTJV8cNF3LF4nR8mBovP6dx98xvlFepRimXRve8rViDLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782973114; c=relaxed/simple;
	bh=fxUb74ZNdS5MwdR47yDFEf1I1nbJeVPN76drgAqQfw0=;
	h=To:Subject:From:Message-Id:Date; b=G25bYYGpO+3d8A+QZE3OucfLMd291vgT9v36Ri+UF+XPqU9aZ4FxdkRwjO6u8M50S5Uwf0rYP6Y+LpSFKAODch/jdwU5cqseNpqRX2LF8WGMlL7E9eUJDHHdDWMTtQJMl56Va4OtTG/bp/tmB+CueCL4K0E0DzgP33Ws2IX1et0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5Sh0wmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5Sh0wmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9763C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782973113;
	bh=fxUb74ZNdS5MwdR47yDFEf1I1nbJeVPN76drgAqQfw0=;
	h=To:Subject:From:Date:From;
	b=Y5Sh0wmfLIi3mduBUOJm7FYtL2GNVN9GtcoP9AkUEr4DMPGRZoVHrGoX3y+n/3mLZ
	 9JUlX7iD50vuuTHQdhbKsj1lTjldiPKT1akocisrAANCOIKU7Vk/Xupr7wX3rTH7g4
	 XTIPngSujSgHrqpzHTlCX57jf3plbnkXPch+KBMmpR+HW1YeOZh/YXV/ywXScgPz1+
	 wNSzxx8vAOGZF9++5KxCrp0ESi79gkT6JsAhJmcja9mot8GggCn3PyfYnykRXAD93h
	 KmNiKoa777j99vp37xSK0gcX7furJERq+QfGCAbrKIUq3xsiPYFqF2DnG4vBq+iFSw
	 VtyxuN/ghuIRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86B1C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297311368.17349.1450931243717226104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0744326adfa7742325ed216c8f4bec6d28c68ba9c2d1579acb30b909dd62876
Date: Thu, 02 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782973113
