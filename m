Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57503748E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718246303; cv=none; b=snclKq2fH3Sn0iAK7US4xBBhqoKvVaKiklIyWiFl1wQ2eyDeCSL9JopsTIh/nMIiDoyTo6xm0+ww7mMkphKi3VBKYzeR119Hyckyoj6Dtf4MvNR0btBJIqJhrvqiwb+ERbuY9hJNwfGSHjiL4iqtoOGvR6j6W9eE/aE2IOd2EIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718246303; c=relaxed/simple;
	bh=s+hpAT+N+iwlTmtg4RaznHYE5L4GP77zdvcp3YE019w=;
	h=To:Subject:From:Message-Id:Date; b=SlBqOD0kXL408c6nLl9q+PS3bZz92hqB2dQTs8vC28J0dK/pjJ/aDtijA2yrma+kzWi7B2xN3cnN+O7o7g9/xD6OmROcMhZdWNN1/RJ5R55FSZbPF++gGQObLkRUCG0NDSnpgNxFNn1drUxOoXs1eizf6nVjGNRAtyZRvwjE/TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ss5B2UV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ss5B2UV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88FCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718246302;
	bh=s+hpAT+N+iwlTmtg4RaznHYE5L4GP77zdvcp3YE019w=;
	h=To:Subject:From:Date:From;
	b=ss5B2UV2FODOjes6cxCrzkYRo0dq7oOsR1buXPsjLUYvXahjPy5HjO5DctoWRkHmW
	 bATTj8eiAGeDHET8trIy0thXFIC+xF1A9O5wWsBhzjiOmAT00jAF2dwtpSB9RGG6dM
	 ixG5Ve7X/+a3vk6M/j2J4ItF1mjnIsQ9HqJn8QpAF0/Lue8MoqL05SRS8cZ/fcoS+b
	 qncvQ6U9NNNFeRwSWmuip3BBOVQVgkbNDAQCLlKTEUrDV+sTKtI8qHC+L94n+Pr/G1
	 fAFAzlQhcPFVl66EfhV40iNmPvbiUANoXueUgYF4CfmMT9LrP3BbNdFnd12ONkN/uC
	 MI9RUBLpkkXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3831C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824630278.32087.5189997624619058987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e93263beb7cf9a9730cbb5f8043f2740864b2713e69f1901f4a9967e8e8306
Date: Thu, 13 Jun 2024 02:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718246302
