Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FF379EF6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775770054; cv=none; b=L5tCOt5mx7SpXO8zpmIipO73Eaau65fYe2r3XeQO2IykkRMBa+s+qbo+Rue2urZWIkLOXBylyM/cKOW5f04IsrU+nsmSWb2EhVi01HyBeR2t9rqPmMJqgC7crAfZbMCuIpUKAj3pPCTDpVOdYqOBHa0T62PgR8JF+kKlBdPo0NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775770054; c=relaxed/simple;
	bh=7jdCOIOmTGzChujcMYtCeL18Bp9K8HbqlAmR4knC6us=;
	h=To:Subject:From:Message-Id:Date; b=oZ1qG9xnBPqDOilY+ELoEu3CX3bkIQk3/DIcGI8HmGJzusOoY+mnG/VLcDGa2slNDnJ4IA5Hm+h8jojlshMLRHxvEJaxs1UNQ1F3C/EMsWHqXa9vBsPt3FKSclXnfmRnroVeMn4W2gedwH6/2HKJsijX3klSaZjnBUzbEuO7Cfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOvgmK75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOvgmK75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6CEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775770053;
	bh=7jdCOIOmTGzChujcMYtCeL18Bp9K8HbqlAmR4knC6us=;
	h=To:Subject:From:Date:From;
	b=pOvgmK75/ElOFoST1QxNyRneRE9Yr7o3DwViXpB0/HxXdqfi4sjy9veO8C9b3kh6+
	 xY9ARyQGxPm6ZuW+nsER0HktCQ4/1WQ5P/CEgrdmUzwcKo6no3CUfwrQukj5sWgQGP
	 J2JxSeBJLjvLlnB3xwGeja5UihbzPRWZyLk8IQFOA+UZweO/oCX9DdyO61wR8J6M7L
	 gD/wwLAMZzATy+eHpbrpMCZtN2neUB4bh5JTDL1WJUD8b4ty5h0KXxJj5708W07fc+
	 SfLHc5iHKmouawZY5GYnpGgvxMRZnt/H6wSu19yQyw91BDEkKIiQNjOWUd1xBbz/8R
	 80mIF9OcJvCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA212F364BD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577005368.9623.1905637070026805086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5e8b58b74d8550470285e316ee0db056a0e9c9f03cd30004b837be7e4e4781
Date: Thu, 09 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775770053
