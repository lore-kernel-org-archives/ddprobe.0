Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536AE3EA66
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785832834; cv=none; b=Qn2dBkLp+OtBwJ3s0ZyGJVlhjpLiC/g4u/2WwCsayV3t09mXvkkBAMfE8NHpe5rTm2YTOjqTCLXJDHAE5GAJ0EvJyDQuRGNDlEgDRbl9FQ2f69G2z3v3GcjXpL3Owv/CW4wn5TkcWSglwZKvINdfF76l14fcRWbTYChtC4kS3ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785832834; c=relaxed/simple;
	bh=MREQB2gmkOq1cDN3hpYc/MsoVfXCJ4krCs+8PZjEw7A=;
	h=To:Subject:From:Message-Id:Date; b=V2/OziljHaGN1LeL2rIYLK9rBVUVgR8pFHVwtX2qVDlCeWF2eAcWJaHpa5Zbjod0uajexvLi6QZsOYWYV1dvvkfFgEg1sSDJSvFd5XcKNrNkT/NVm1dWK3GCkaEWfC/dNzifQhLwAoiRkBVsYkq4lf/f8Lj5aJ67SPSIHCI9tSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNj44iX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNj44iX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D585AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785832833;
	bh=MREQB2gmkOq1cDN3hpYc/MsoVfXCJ4krCs+8PZjEw7A=;
	h=To:Subject:From:Date:From;
	b=fNj44iX4LoQzLx0++6dtF+1leKSXCpgwj+EE42tTN7lWDt1CLjJrTNM4KKPLvl0pj
	 3KDVJil/lYictZC1r81u8CRfTt5rLuSWOUjhuy8lJbvXN4Zf0R0zketuKkiBFsovJI
	 dGWQ73mGy717a8tNYXRElWrhP0dgLI96Q8iHlM8hjLKm7R8hOGCOTFcDEOSXizJMgw
	 rpb9DkGUSKhUd8WE6JI/TU7lL2T0d8vZh2ZSJZwP6mGKNaGIsCpBMMV5WW3B7ae83f
	 FNPxggy1ND+xZrUA8q+e67LfFTJ1DDOYjvwcQpOul9NEdAMQH5g1xVqvI2VkS0VlW0
	 zZ4paYb1MSmhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6AC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583283369.19380.6811741066236974941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec4d6614a42c0eacd643840f8d6ea192e693cf03400fbc4a8c426ab4bf88ac9
Date: Tue, 04 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785832833
