Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A794383983
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781018734; cv=none; b=u83q2Dy3AMMVLK+CkzFOkAguJwyybLbro/mWSOZZYWXgv/1SkL9Zjvxt7PuqIrP80/IEvffj7xpk98w03aNqZerpUk1nbwr4u9PUAUFXkY89p3sAyn4n7gDyTa+TWKPVK/H2jorzwU4OtNYTKHZYADysgat9yBa8v4jsJfdIKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781018734; c=relaxed/simple;
	bh=ki6OZlPpWEabWC7m9TErtNFYnKzBifDTzdTbAuo2U8o=;
	h=To:Subject:From:Message-Id:Date; b=Ll2DFZzPR1cvYPY4kldedwUzsXPD+jubvJQNoZ2oLKREaMBy7487M05fG1FwI8VKMvDP6Ufb/pck+QK9uxDyTDmuFSTwbkAvcVJg6DVLWscVcJ6jmcmGC1XIb6mt1S+wmUrKPPmlYOv0kQzFNrvhQD9OZNIYPYJm4Vx1+ARUDR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFA47sRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFA47sRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C17C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781018733;
	bh=ki6OZlPpWEabWC7m9TErtNFYnKzBifDTzdTbAuo2U8o=;
	h=To:Subject:From:Date:From;
	b=iFA47sRdCL/Lzp3BV2MXCK+vdxHdB0eO++WWU3Sf9qqS/vjKLTpyq1Yi+HV6oEs/n
	 DiuON9BaTBSCCcWib+iqHuktOmDGKAPGMP1JG3tEqn3dFsuq5AUSPdcc2LgOJ2D0DJ
	 0y+fnnSSexseNfN+HPMmhOClQ6Xd2uZLYMvXV0LxbDWcOv0DIkgJOHOluExYOuS4qA
	 15niXB8xHqOzr0sCleBTE9N+zFDfUy0zc8nbqrRjeZOKb/GzapOLgED21w1Rs3jjz1
	 ncKlKcXe6emmbBvWlUHLSrMKeXlbboEsoXyb9RoBGeV+HBj5BhF05A60xld8vUQFZ3
	 HZDcMMaeRt7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81CCD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101873369.25642.6602103675946066663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cd6cfacd121551fa223edf407f34bd10df96c2efab39ceb3c19549638ea283
Date: Tue, 09 Jun 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781018733
