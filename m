Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964A3207
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754125194; cv=none; b=JE/rrhheZWO6oQFNoVNsQpnfROIF+5de4FKodTTH6bA6XOLMO8lcwkyk43V0bfYCQB+PKQlBem8b5h1sgn17xwSasgXXxhZUZzgs8Pr5Fgsfdh9s7fsuU0Bc4FV8GoBwEJGR3Sty/EF/T0dfgAdzq24ERAHlJFBhmKq2r4BcZtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754125194; c=relaxed/simple;
	bh=QUgyR31aLnzcXCZPcs21a4rr+Hh5fWErVyHwTMuNbHE=;
	h=To:Subject:From:Message-Id:Date; b=LPxHpNdKtmXEOumSUKL/Rf8kNq1Wt3qW9NjQ7jleGwP0/SWdjz+lkZns2V/xuSWwaqC/BwrCKYa7Dtf4azWg74LB9CWOquYr+5f32hrDtqFLyAJ13K6dlG3xd360vfGYVUP3kjDjUnI0rCqiB6Shgcg8owBnRnPTfeeQvOtNWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWmsCqZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWmsCqZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B61C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754125193;
	bh=QUgyR31aLnzcXCZPcs21a4rr+Hh5fWErVyHwTMuNbHE=;
	h=To:Subject:From:Date:From;
	b=DWmsCqZUpIxP8dV9T/wI1OstkmEql8p4xJUZ8kyO6rqfd/3fkiYfdN+0NxYYR3DAS
	 YAjgjc/xvZSstjI5ZDzWVz4Wsu0Gxfpoknuk50uypYTO6KiGeJdtP/66iY7XSdwzTB
	 VojyJMWeXR4l4acJEU0hX4QU4UK2yT2kksfwidX23NUkghFJR2+UH79XWd21TOVLPc
	 OoTivO4OYcZDHhFUDh9K6Y6tOGngS87+VH9TI4abrvuJhQ1sTAclpsnpBaFq1TsfC2
	 1rty+k+YMjw4faYSxZAY4ha8QG8nz9SoN8agCGHw+q3y5Si7sT9XK3MQ179TurZaqX
	 N0wsgUmsQ5nOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE6AC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412519358.7703.2697833154492384880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da0fca6b997a30c5b16c4c97de46abc437e7a7a6a14eda57b9550a1ba215f6e
Date: Sat, 02 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754125193
