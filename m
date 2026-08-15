Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A9338F65B
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786817434; cv=none; b=NOb1ZvwIIiPP1lFjwyiPro8f/D0a6MGe1ZCYI8QeT5w8S/T48h8xq+dX9pqaWSzuduz7Rmp7C4ZWi/tcnS7Zx/k3R0wERLGF0rCgNVOa2Zjyr7mL25dUJn2anGl4HcAVUq40DUEC66nW1BIGbnxB64BX9LHhBHfjIJQCF+y85m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786817434; c=relaxed/simple;
	bh=JGwb8R1rYh87svJc1fy7UuWPYYsvdcS1hlzNnwoiAPI=;
	h=To:Subject:From:Message-Id:Date; b=UUutzJaenNeEywTPpLSGOHslzy+tqESRWJuANxOAYQ5kj+P6Jh2KDaPMgQeXz02BcRElI3KtaGoCaj6Zr5rPHcgp5KI7defsmo26gACSfn6p5fj7+7SpidyHhrAE2xekmasxGUXVci7N8HNsl/D8SIfjJGb+BN+lr7DJFoHSA5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQhLTI15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQhLTI15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA311C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786817433;
	bh=JGwb8R1rYh87svJc1fy7UuWPYYsvdcS1hlzNnwoiAPI=;
	h=To:Subject:From:Date:From;
	b=OQhLTI15hoFaY0SArShUw9iEhjpPFsY132SSah8JnV2ugH72LNxmx6rsEEERwpkb+
	 pJ7GlZLP6lm0NP028e7ojhelEF19WbWCBAYYn8aCXrNOwWxMU21avTnZgtcqD1C2lo
	 d2104qQT4IKh4dXz49JlgT7fmBo02EUeW3JRu36oiegOgPsb7hy11VR1S8S018tsEi
	 Q/Ef/LEOT4bdz/wMjMKmA8JHICBK+M1XuguVQST8V1ep0kGDolwUFpH0jsxoS1+O5h
	 X1LxiPDy5AINdxIQNdTF4WeB4fORk4FAG35Qw9aE7ZEfggKMTCz37rZaQClBS3G8OK
	 VDXc8VayG7vVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B716DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681743371.24004.7674006621712024320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da78f81d61c15f87841b9eddc34a34f4bd1909e6f8f76abda0abc71e30c83162
Date: Sat, 15 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786817433
