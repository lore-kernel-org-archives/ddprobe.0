Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576966EB56
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719476063; cv=none; b=R4diDVAFhzKvnSS7T33ut7Fs7KLYo06vmvAT1J08rizj3JEj+q8uopb0RTCa4N1tvKHffGLSEZzIsJpUsvQJnny5oNmW4ylAuznUhOED7+lQVbNooOK7Pp9X07D8ZyAQGWDnzsioA8qX2sbGG+DT3XvlHAFYsAPwUXSySG4q9fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719476063; c=relaxed/simple;
	bh=7PWtG7bG3Ezde5r+hik4JcwU1wfhvUyPc1n01gPWOWs=;
	h=To:Subject:From:Message-Id:Date; b=aTTHsnX6gOImHvxOUjt6jsbOPmSgNjScDCsdf+VjU50eIXPdx9Yb07thuTnoI4ZW/3WdKSaAGXrqMxatzYMYDKzRLOMp18xN6och4AfwFwrMiEfGyLG35sONzEIneWU1L100wP3LXv/PjGT9FW9bUq8HXnEK7hmhdY09GNqim9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipHNyRzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipHNyRzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EB3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719476062;
	bh=7PWtG7bG3Ezde5r+hik4JcwU1wfhvUyPc1n01gPWOWs=;
	h=To:Subject:From:Date:From;
	b=ipHNyRzKSoM9jFKKr8JVAeqTkzCgqcZDy+Bixld34JUZBHtpM90RdlsMFLhK0GrGO
	 vjT8KQKuZt2Wl5AUe//OIaTNkqkvPLVG57iE6U+p59TwZJZ27GB92slsFdD7KkSOH/
	 xjrJG1FDV+np2vXjOsPIbrcSTjm/tcBpJi4klDTeDOpntSlrpqZSRqhK2S5NDnw9RE
	 X8UJOEH7rjTE/2xl5Uzi6UTrUnnJ56xKieXyzqZlNOJbbBNJrS1VpMfvaUJVdwotSI
	 4DzqZAnLSqIEhONyaphyv56tWy1hNLCv38Al1zmMn45K5svYAnEy+fS7RboNUF4E0G
	 9OcZLpJW8KpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F28C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947606278.4525.4571479975301223949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6cee780c731a87d9061ded3f40e0742d25cf5fbe3587130a672bd87de260ff
Date: Thu, 27 Jun 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719476062
