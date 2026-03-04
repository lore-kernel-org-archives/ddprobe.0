Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044D6390C9A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772613294; cv=none; b=ExR3nD09U1qw8Xt6Skbfow7nbOz8SKneVdyw59oWkvEYrQRzUN5YQlJcJ8dKBGxc1dY6+WnJvArYX5xm1AySKkAKrv9kKDUE5AVUaOplqjM5VI1VLkvz1RLKbrf4YYmmRzdYqRKHFXFPwjQ1GPwXnNctZAwN2UMBXCXujDQ8XCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772613294; c=relaxed/simple;
	bh=PLZeGqRy6ZmdCrQQVjLDSre+3XsKGvbf2ZB+PG4lUBY=;
	h=To:Subject:From:Message-Id:Date; b=WGC2DgXW6yAOS/YA1QSX8GEPtTJJamWy4jKXTy1HCOvkTPe7M0yWSaG7MB5A5cesuJJ393/O9TNUwtYizEocldW2NvmQCAE8C9HqFUq2vL/wOFmWKGcJFjVlmUCSmCD5dBrDPq4tXuHtrOM8QQpBTa3JqodQp4vWStcWDmu0BD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK+x/lgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK+x/lgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC85CC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772613293;
	bh=PLZeGqRy6ZmdCrQQVjLDSre+3XsKGvbf2ZB+PG4lUBY=;
	h=To:Subject:From:Date:From;
	b=MK+x/lgGPK98PKXWL4VAsd5GydJszYx8nDz5+YC+Dr9VOwXcUD1nLaf1hEmuX99Zb
	 v8AGxEDQEDijCcAL3OnPLnQVej1DTPgxSPNCEjdUxdM6AzRXoC2QNPs7GdwGfdosUD
	 +EEqFd+ORcAVpsDJxYH7nXnlzgY4BIerBKCcl/yFwUn+66m1D8KNbmurHbEe0mwyQ7
	 tJmJzM024awfhxnmH5nk4NRD5K+4mtpJ7R9HL6mu/ybH+bRtI1/7Mk1bg+uN5neG+i
	 EtRWO+AJ3L/ZiwVwVpDBrwuxFLekqEb0yHDdRNTXxRBgVqG9XL3ys5tmVlOYTecfS1
	 dPQDQ/T+9wxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD2EB7EA1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261329361.4576.8999524009528294380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0211cc2e8f11c20e7b90ac7f09fc09d20b9d3edc6eaf91ddee46e6fa1fc341f7
Date: Wed, 04 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772613293
