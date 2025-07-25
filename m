Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A932E371C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753409994; cv=none; b=EBBo91zlNawaBNrd76QINGyxAfhRwFnVbDtiY0mKQzQ9n8IuT3H6JP//cWgXURYee1A1qSfzAwen4zD0807aPbx8ACgxWM45EIvx8Ot20+DlQRACwsyGlitAJ6tQAjmgpZE8lWsldcqCs+Hvy2zI8RkEAXLOiaPWMMgwylbRhHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753409994; c=relaxed/simple;
	bh=drBk/IXixNTo32FKybuwIZGVCg8OckHOzpzbZ2K+jkI=;
	h=To:Subject:From:Message-Id:Date; b=iQZZMDPJcwjNW3lQKRYgYca3OV3UQ9FH6YOdK8ChS/nH/hj+P98Ak974PWyrnmOllhU1jxh1whYsWQ1772zqR6RrhKv1j+hXtpEyvonCcKHX7X54oqqCyUBKatn2FoV2qNCTYWhLOr5ptF/uxUBUmUfMl4BqsKfvdZTMHFnLkO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGhJweUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGhJweUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753409993;
	bh=drBk/IXixNTo32FKybuwIZGVCg8OckHOzpzbZ2K+jkI=;
	h=To:Subject:From:Date:From;
	b=SGhJweUHkWE+tFlly/EHGsv2UQoHkHUmsn99qiflpMv7c8yEVqSA7oOJ48NeUOUwD
	 d1dg/OBtEJ9W8rZkQlBOEebzCaNgVdqDd6QYi9kmhf4946PjQSZNX1TqRJ4Wl3uFTC
	 6fCGzFYXc3DDuNTDMDA42R6eFix+04W1DImkECWYWP3Hbv+/U+JwHOrhkuxIWcknkg
	 23qmUA9IRZa9AzjnXWO5aWDAbRP7RfNaeHteyeszUW3qGbsHSNR4goPGKIBVJMhABN
	 72X64zLx0DJWstS0DeMP8eEco2TzMAopTwJ9xIYOaljmoGo3rEHcZqHVjdM+4xYOqb
	 vEIHZi4FusEbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92095C87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340999357.21974.11267323940764195201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99be8ea20b02c6abdc69814fbc196bb68eeed9e30616598286598658b18f769
Date: Fri, 25 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753409993
