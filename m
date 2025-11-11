Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A02459EA
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762846794; cv=none; b=Fx9VpTxnYpe0FJnXBv/aujoAhM+jhJ05ODHE55a9o2JITNgg+XVSIAUBGdcjj6QklxF8ipFqGu+dOuqaoMYl8+p6l1AXp7cuo+jQnjqBeVuzsoIQhsGsSOJY3Qy/GwiuK/LgZiUMT0cfAbfQKO+pOr6sheeabot0gMsnJFVqz5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762846794; c=relaxed/simple;
	bh=QjUhHxicKJKHrLdTX1haPXk+aKofbAhRW/4NSwIE5kE=;
	h=To:Subject:From:Message-Id:Date; b=ZSodKKPLwISOAwUJbeUisbBE8Ad8AhC9Qp6FMdv5c2N6BtIUFlFHfPD9i3KPcJpIvwq+NEte+wh0hiaTQpeFh1RdudwRXrlWVLH0m9CAHazomASfkkYgIu+TwltMviR4+f1yqJ4Iuf2NnycilEWAjK4+i02YV2oIMdJg2ThtHUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtq69bdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtq69bdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF252C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762846793;
	bh=QjUhHxicKJKHrLdTX1haPXk+aKofbAhRW/4NSwIE5kE=;
	h=To:Subject:From:Date:From;
	b=gtq69bdiF7soD/kKZpjSF3+Kruoj7/T1YU5ANerJHBaSFKgcuJjbQeuUTMy/TL0oc
	 5NPFX8duFzEnPoA8R3KE2zZCebPGHKil08+zK4q8FezOaAL+u/8GCe/lK1EER5zQKB
	 daeBM3Fphtpcl0TIwfdDCRi8IzW2RSS6yz2ExtfrUT7C0Y6iHjrk8OByCCPUF+A+Qo
	 kzU3Ev7aOkpp2sKXFpvWlTLNa01Y+JzYy6X0rI7LiKYDRHQ1Fi7st9vnDWfWpHxt/p
	 O/gQzcQgoYbeEMzffVv7eALOUB5LD7Q0ZQw3s0UPHBaMnUgQIsQihzfgasaz79YWd5
	 jTY2hWwVHxvMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F7CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284679360.20840.8810693564066372482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa909e604a29fd9e196059243f1f714db9a17fc574589fdb394850f8562fe009
Date: Tue, 11 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762846793
