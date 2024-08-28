Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493D919DF40
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724872554; cv=none; b=b0fDmGXYIm3RQx2rTfsRULYyQ6djHg+6ECIbJQsiYZZZGiqSojgrbCVcmUhkhiNPsXnhvufQbhRZ0dFpgGurVxg6404YMoFFYVjwos493WDQPN3PyLcSm4oh40R5gS11P/PV1RDOSbL1ukbidbmFAPRV8EHrRnGrim/SX2zPiC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724872554; c=relaxed/simple;
	bh=BAi5Yi+yEAaDhUDamfVJ/8/+al3WWRPBWqJRWeqjgwM=;
	h=To:Subject:From:Message-Id:Date; b=X0aZbyA73vmFupG4Z1rzsQfKsME5l1XGkeZxgIQjsZ6mGyxAPGg9wVGlCWrznKrfirBEp/npDak+X+Sd76zt2+Ql1MAh5tXpRFQebeFqG8DvWHPuPEUy6kN3a4AT+Z65J5MO7mBqnCXaosF2fgRjTG1zacGIuSjwcKU05jqF/d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/5vALMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/5vALMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6512C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724872553;
	bh=BAi5Yi+yEAaDhUDamfVJ/8/+al3WWRPBWqJRWeqjgwM=;
	h=To:Subject:From:Date:From;
	b=H/5vALMJ3oUc+w3z/9KIPRkOFQTHt6sMikBVUULkNpaOtILoOW236cd9sh1fgo2s5
	 fYyItcQnyPnGWYzWkdTDA8epon3cAE60PwZ1kMS5l5YUthvgcFDl9uOlfmzbknU+07
	 uRPieXty5F3J8IH1rnjgYaw6B1/txw/u88TDoI9WtsllTC+JaI7NfR1mz/7r+MJPcY
	 emsXlLQsXfxa8pWsbVCiBYlOI/2lBzNwMFZ34DCc5RQ7ukmJOZ0GVWHjbF6bw8M8Qn
	 gKPtMZmOuVlQMThVFguzL2qGoEUUNKJSc88reWjK5KWNMWy9wY3IruLAFBeCSfCGm7
	 /FSFdJLRsKBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96653C636F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487255360.12205.16798722001625538075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f58b1132d779ef780b215cd339907df73091f2be84225e1ca1b019940fdf6e
Date: Wed, 28 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724872553
