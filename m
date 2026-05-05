Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3B5481AB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777996054; cv=none; b=XOS/lK6RoOdoClwWnf8x8XTb4PuxHhwHxQ6k/lwxlojnSM3TG+fYCQ0s9VVPD4IU7w4Oae6uu5VmKEF8rsoIWT1lpaj0Ct3lbgtd86lN3izionPkjuQ8Rz3XTl+V2m/NbWkRr3IKx3qcdYr4qWVOQe24TTfUZ33bFuD5BDyzFPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777996054; c=relaxed/simple;
	bh=hElQ7nEaPv7pLz+lXuD9WdiY00N/6E+McuWsVkPUUE8=;
	h=To:Subject:From:Message-Id:Date; b=j3W8MdsP+Ae9sXvV4nGLc/51INUeZzwpyNeqvmHskwoE6GIPKrwsw8ALG1BOFpklneDd4RtQYnGk5D8BvgCceNZ16GfM1W3jOVo9P0iBn/g5YkmlwIJPuKNR0ZXWQsUxu0JgIAvAcp94LsC+ylwmy1WmidZLp7dll6E6Tvheo/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWb3sTap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWb3sTap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90B8C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777996053;
	bh=hElQ7nEaPv7pLz+lXuD9WdiY00N/6E+McuWsVkPUUE8=;
	h=To:Subject:From:Date:From;
	b=RWb3sTap7A5JsdUt6NaFMzWZsWRL89zhouHbHkj1uQ/Iqd4ZkedfrbNLYEzyeJQlB
	 R9HMMS9qbxy7DdIXLGayuSUpiXxrlhIcjuzBzEhPLbZyR5s5TSuYu+fu7wxnLnbMfH
	 pAPPlL1yui/NVCVJH8+Gh8FelVEMK04hN2CeJ0NG8ZSgtSr+xRorTyWWNoo+qf3WlK
	 WqE7BpGUccwYGwuklDDLTBM0B9cMb+zDsj0QD+2vaQLqX6MF3Y6cPeqIGr2WDusluG
	 SgzAo0uf1//myiN7N6NLqcMC0mzzKYokO6MsDjWSdeMptPlaKT0podbk+O1J1kdvL6
	 iMcokVPIjY05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95BFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799605368.15109.16641419489939288626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dcf1f1e9a6fb3f6e5e4b41311d95ca8cde7d97fcfe469a1e57ea41e1e0b487
Date: Tue, 05 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777996053
