Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AF02EFD95
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775365534; cv=none; b=ipDBzYVEUmTnDBAYjsqGcaaa3ADqMYLSfH3578vBFNSeJ3NeDXF4xiUpwnQl8nlGQh/9BbbfAvfhsFNiv4fpOwxqlvry7WKJwGyC2Io7sbOgbcm/NRgj7/+2mJE0KXRE4kNmunJeFScxj3vTi5geD6cpw6BQFHgcr4mdhHfERlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775365534; c=relaxed/simple;
	bh=YvXqkOdfVWGK+NVFJfQBIWhSrxoY+sFVw1b4ylPHhZQ=;
	h=To:Subject:From:Message-Id:Date; b=BbKnIzVOy5Ja98w8bGDA1DjD1k8vLe4nYBtfYk0R6lgXHrtnME42pdt3zVU2z1wMsmcj781FbdW+7taT7QUtzLwAIu1Vmxd0lkVN/ZWWtMx+QDYFixIpqv0P2+EQmr23QEDsQT8uFI26qNcxEcgdoOpI9ZsJABk8116sSZmz9tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvuCEjfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvuCEjfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7667C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775365533;
	bh=YvXqkOdfVWGK+NVFJfQBIWhSrxoY+sFVw1b4ylPHhZQ=;
	h=To:Subject:From:Date:From;
	b=dvuCEjfTRr1/3Z+ghDU8FCBvSkeFjIa06ZFO6bP+qP5vsQpZHq9TcKopFsilp/2pa
	 ewQopQjF3x6MtpPKLoE8ktLiGj8dHgqaoD5XFnonYI3Tl6dNpKk58hIgmT9lkyweNp
	 uzYKwnRlr/9KUP9nN7ZAj+ipJvFZ41zGLYE2kY4FdPsMZjiwCFD9/SCzCs8/tV8eyV
	 4vWHzCdhcX4JB3cRPwW9GlLWpnKFbk7Fwc6Cjl+ExNCXIw58R340OiTjTvjeCQOrqj
	 kE0I+9km9l9B0Jxcs75jQK1Rooh/1mVbI9z8svmZZEuNs5M4DFSitcVU/NcSRNrbtB
	 ckg3JjUoPl0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BB2E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536553369.24427.11249022359563567687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2786b2d2d6d132abb2c6b02c44d5677893f00a23ff8f0de84c09ce65bc6e90d9
Date: Sun, 05 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775365533
