Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5B636D9EC
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772533494; cv=none; b=bdW10F3ps+srzVzefJmZvTY2gnqQ7/gbhP0/v2lw7th91hve4RvJhV6Af+fuM2FCEyJJCsrGCTJVsFmrhtQIh3KpaUZaViZoQR3sywTEA1q1JblsxUhgEL/DWebmyNIjASLaaWD6ffVtHdtcxubizFAaG4WDR80H2GKK5Hkmluc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772533494; c=relaxed/simple;
	bh=wiofIRZ+LJo2F9gTmnxa9Qkw2WCvSV0KQSITrWv3VAk=;
	h=To:Subject:From:Message-Id:Date; b=kSrjshctiTAbXPkoxgkPIKcJZlivCv6azkDcmkosVrgl6KqQRdZHa3INcTemAML+3V/qYDR/8zdu1LulmpW1X4ahkF2Oo7pmL/Oh8DFXXNPz19mY/3JkQiMcYvamkddhK6tKz81HqJ8DFNG3v9VbzA1XK7nlbALc2PunMsjqGX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6hKt4pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6hKt4pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCB0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772533493;
	bh=wiofIRZ+LJo2F9gTmnxa9Qkw2WCvSV0KQSITrWv3VAk=;
	h=To:Subject:From:Date:From;
	b=Z6hKt4pHdsWRWrWGLA4xnmJh+KyEg7TBfri0xJvq/xr6ljYzI5H19iko38W72wpR1
	 FJMn5ulacbfZYSqICn++mCT7agwkBq2OjglkB4AA3IGRzN2NAqfUgws0Kx9jcBTnW0
	 TEJcI7/xiQO3a+dcVr/6q//QUE9N4ALDNignE50QIiI+k4C6p5lBdic4jcQw0W0hoe
	 BE8BeCtE+nEuTIakRUiM+KbuFRPuo0W8NENC4K4bzjcAWjD0MpWXffBjwIO3uZ6h6N
	 cFyKXYBaF+g/sqqM1VkJoBjXpo5zn4NqJ/23lQPY3TWDrsaQqt+/gyHJaq5RbcpP/s
	 xOAkor7NdHJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F13EC1422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253349360.5220.5607950409996283455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691c90bee896d75942857b5bf68d3ceddec4c450242ec46ecb98fb90f964d545
Date: Tue, 03 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772533493
