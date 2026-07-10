Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7051B7910
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783645114; cv=none; b=hz5LkMuAYtM0tWqi0WQToWcPINcjFaQmN4QOhkO0b8ecj0aMP7HKVnRGaKnRixNMEgz5NxQ5cEGa3zJiZfNZDQlhJmvIU9oEKck1q5u06ze/6p+ST/m0a6SBCKRCee8RpvDqStqOoT1oyBr7YnpGN0DXvpbJCVsHjTsSFhgVxwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783645114; c=relaxed/simple;
	bh=J07VTa6CAIZJiointTaZqJFlqu4+UdUPN1dc9JejJdU=;
	h=To:Subject:From:Message-Id:Date; b=hQTYYW0R3IDdL9zkoWF4b0GLDZnTfEb3Zed9cz3VXQH44vX0f+JJU5JBeuXRFDysVJboAs91LsUQyXPP6XIPyB+uXbVMhiEvx0iNum9ckitj2iWt+DhsyN4FBQqhDkzkCRdnyQt7tGmkF77L7kNMrGiGBRpXSxVGAUjB69EyTJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2YkuUvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2YkuUvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43F2C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783645113;
	bh=J07VTa6CAIZJiointTaZqJFlqu4+UdUPN1dc9JejJdU=;
	h=To:Subject:From:Date:From;
	b=m2YkuUvhjEyD8cwA2bZj1xHePsMIKCLJl5DONEBMrlsZ8qAqiwpXCNmrxBJ/jTIzT
	 r64fop8+ktCeP8vPHIJrLdEt4AYKYaAJzdd8ZwvbklMKuROSGuK6M8PJmqclGBze1A
	 bMRrmSMWtL2BMFwJF/Th/MXa9sBQBPSr9rl2WSbns0JllafR361VqYIb9zqc0AKTzQ
	 QIjjBGQGoGGNMqVebcMRxTgzC0mzs31AeLuPT7MepnY42ZRdKEyqqyuMKWNqHjyH+o
	 Dzb61RSHs6h/Ag2S7PbbUviPlSkwcCDjDbyNnGyIG4YqCYWqv6IXODFIaxDidpyTFM
	 mylRDXiQMdBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AEEC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364511369.11037.7284550209733750528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207bc7e06e0cb5329ee7afc49b1e1e912434cb18a97d61153a45c748ccb67cf6
Date: Fri, 10 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783645113
