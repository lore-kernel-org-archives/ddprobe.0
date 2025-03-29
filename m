Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3C2114
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743278994; cv=none; b=o6Nc3w7WYkEf8frbthUMZ4iobsbXLwu1O4DTo3h+fMbNjvKjPo+3CmLSxQitv7F4R5YBmV4DfdK67KWob3KEXlk+7QKU3yii8lnHAQeIYcKYr5MIbrhrsC3boIhLsh5EbvAotADKatkujQsfwWMMPV3KjcblxwTXX66eC7waGxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743278994; c=relaxed/simple;
	bh=AFdGC5AGnZ3fniG+djOJu5OIY58GApAiAyD+BzxSxRg=;
	h=To:Subject:From:Message-Id:Date; b=l7HKJZwODFdA612d+XRs6e7KQeiiSZ5v3OV/LCfGETXKXCxNgMzRXyovR8nW6xeRqk8R4BXh0frD8ZBNyiWoWaO5b/dtWoTje9DiLv3f6DHa82JOCfcKfLKi6ZVlKjGGwpuHO1Rjy59tsYAEzBUUWl8tLO27oWY49RK39z/yZdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obIscOtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obIscOtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADDCC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743278993;
	bh=AFdGC5AGnZ3fniG+djOJu5OIY58GApAiAyD+BzxSxRg=;
	h=To:Subject:From:Date:From;
	b=obIscOtphSah5OJYjJQgXOLYEIPU7sdk2efTsJAkPdmbLy1iPqz/B9UmTvR32Y0RR
	 kT4kxBAK7R5poGLwU+AQEQc/FkEKATGpH1ijUNY/mCOr0MdjLzLSJ56o+DBkzLDIHc
	 0o8YzJBrF12dr8GeWhmdKb5haJS7mvUycTUk1xzsjvOqsaICUl6C+lzAwR26N/KyFS
	 g70d9azuxYCFJCCye+H9bMIGzHFYjqUqGUXjo5dNey93bo5MeyHs4xIi8M16E82AcL
	 eV5cP3gBeOxMeW6/t2SS/vEVtnQEtbBj4ZJJr90ivZxZ2EMVMi1Khk1/HG+IhVTQzZ
	 9lTQLJKNzd/VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327899359.13384.7220749894945666068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01ab98d28beec5e5bf4903a9531efca9086bcaa32cad45a124c1a12006b1b2f
Date: Sat, 29 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743278993
