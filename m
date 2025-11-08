Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C9220B80B
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762627194; cv=none; b=jYFos9xjyC1ttfQ0vFkrqNS5a0Cd1Wg7VjpXfFOtqzdyN7flreeJeEfCizMahQ3VooeDfXMhBXyEiyY1A3shTBXBV6kR8u9UTwcGXoLqdjSGFKWj5uJv/4duvcXse21drJZft/Z0zhpMkyNtUnfdNNLIHZQc78oLq+eZ5Qxqrkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762627194; c=relaxed/simple;
	bh=LSWGi0SUT/pnbe69/qv837rvUGNO37WW53jC4SyGDCQ=;
	h=To:Subject:From:Message-Id:Date; b=aXM1vmU4bJzcx40mOf4zxcHog9/RAm3g/4AJhrRuUdxucBfhvTxhr09KcHFOg1uImQajf535QJfU3Ax0qewKj7ywgPuQdH/M3ZHAbHmwVbsYzJALUWoVerWj/pJXQeTI1RYW90BU41b/EDmGn/vVyaxtqLDz+ocvgOcvopMQlaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdV7Cjng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdV7Cjng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE38C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762627193;
	bh=LSWGi0SUT/pnbe69/qv837rvUGNO37WW53jC4SyGDCQ=;
	h=To:Subject:From:Date:From;
	b=pdV7Cjng/k/JU4cfxg3vbZhvMo+R2XBY+f8CPtEMm+RWEfpI/2AR1vl2ZI9PEP36D
	 SoNxiTP9pgMPHUcV6Ke7M/M3/xDou4QoOOcZ03g/peKV/TSXfVs3Q8ry7Ly77yFiiq
	 gw+HjY2euoJF4h8QFOBJL3fq+f9Dd5sHVQPBN92zOxvwpjBMXWvvQOA18C56ItTUx+
	 RHtI44kqq4Jm8l/ffB6+SQnW7flSyK0ru1aQzwOTW8mhP5RJqG5N2UBj7L+A1TfXL/
	 umC1eA1oQ6OAYZgNwY2ISkcd5g/TsIC17mTMm9E/52GEysjcdDbYkLTmxm7c+men14
	 IhvtjxWUWsNSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B3CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262719357.3818.9223606431261440707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3917d8107a2391cd90ccbb90ec0c56741b2f1ca75d15cfa9b4b3eb8b9007610
Date: Sat, 08 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762627193
