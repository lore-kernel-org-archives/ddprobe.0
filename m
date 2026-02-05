Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A471D5CDE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770261834; cv=none; b=feSPbW5BQVyCdjVvJ5LSmySRL3xONz8Z4qcdQlosURXcU0wpHkvFrAwtPL2OlwI28OmkXv4H3YG7D5DtUlZdLD5EfS6vbWn8mfWVdCcD7MMv0xosz7Vx7o65o7kBiS+Jv2ob2FPLd3YiZdDccFvRz5nYg8HFfQJJEntg07+KcCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770261834; c=relaxed/simple;
	bh=BB5x9O1rKFXptkY1opjYlYeJ8qBXQkBjU/oaSYX3SfM=;
	h=To:Subject:From:Message-Id:Date; b=HJ/OXvZIt8EHKlTN3BfEa9yHGZ4Wmz0AXcle0go3vMHwai0PrS93w/BFH50zOF8/vQHdWO8o/iHM1RRAfQEIWajdflQeFvxyUvhZDwspam1BEa7vN/8z5/Wzcd9J59QuX0QeoChf5sXLeQCsReoVmcISVIMpjPTSm1nfR9ZpSAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1bKVwjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1bKVwjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E0CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770261833;
	bh=BB5x9O1rKFXptkY1opjYlYeJ8qBXQkBjU/oaSYX3SfM=;
	h=To:Subject:From:Date:From;
	b=Q1bKVwjCGoemhLi2dop+63ahtWHMvW/T1Zmcc3MtcrAgVz4PGtJjwtiD6RhF2HILU
	 5TphzinVoO/ZQJ2k2Z3MF9Tm4qYPZYp+tjlR8YYjUv0jxQhEP34K45VMBcMxZkgJhr
	 DeduSMbYLnAYuDzgP0uSqiuT3plIW5ZckKvnbwmW2frwO5tm/1noJiLO6JI3lNs/be
	 RsZUmLZDNeEZzwkVb3ZnKyFIX21gdcOOcWd0ny32ReVIF+3bV/xMlUpylHtxdWcecG
	 nrNrs1332MJGMxugMXVZJYvwPzcYNLy8zKp/v64fu/+rYHhz92r2ZZsYsiaOk2ojZm
	 h1mIDXMGR+XAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997BBEA795C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026183361.6375.4318868550490236184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d0f1d4ee056eb1cd5c08e04aaae24c194adde71d2262d46ea561547a896fa6
Date: Thu, 05 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770261833
