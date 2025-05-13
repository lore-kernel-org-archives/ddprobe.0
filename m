Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B685695
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747097994; cv=none; b=TY+v2cN73G61IZRoQ87THqMPnyVK57RAWMSgaXiin+Bveo6TyoCpGgq14IgWZabWnYX9KvEZ/j2f8/az2F6FSQY26LX18nCVX3W5kZ+2ueWvHaPK8Hc+l0U5VQfDxOUxlZxWqDHwwse/Pik3Uv2zPrf3ehYs++jWcfe8oncLWeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747097994; c=relaxed/simple;
	bh=/YQ2K5kGFb67jlz8OJvkozSHzem950DNWa8DweREc7E=;
	h=To:Subject:From:Message-Id:Date; b=JS3nF92QEXubvqFQxdasTH84C6NqJPBbm0wvmnftUuZ+npjKtDJb4F+aZhmwM+lrkncnMgKfHFqonhfel7YUw1rGLVVe+bTQLMRvaawXG0vcJ2xZO1wQVMloYJJ0DBKfpZDsySqRIXNfm82YsVnz75j85Yl71XffWCPz74+6fIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JF/RTj0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JF/RTj0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4130C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747097993;
	bh=/YQ2K5kGFb67jlz8OJvkozSHzem950DNWa8DweREc7E=;
	h=To:Subject:From:Date:From;
	b=JF/RTj0FVIEdAtqHqATT3L8qjuKNuZm5OjQLAdRJA3BFMfy86jLEz4rABxSl09BFG
	 9bJze+D9VAWvRHmCC/YD7zxqlTBUB/NXWrPTCDhocYhdaZH1xJAKIOtEb5Ujwh4Ab3
	 SIsu0gwcBiAnOVxlQej8cvrg6vTnysBqeo/BCgqd8S+c+iDUNn7o6DcJKK2k1DPla3
	 1w7IW6XW9HG7nX5czc3h1ZdBIc14vg8UuP9l9fGRfK5np6QovCgwBdDJwNyBsTT8x4
	 Zl+QD/s6PIg4Oxay8L3qA9cjTNodA+3nc0dUhdm7UGZ99iiZ4G3UR/fdp3VZLKQWgq
	 O29lfuQpCzYkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672FC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709799358.3381.7482512600836716093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 138ce133a935d61dcfcd5452799b46eb332c6946629c2ce023a27635bf692032
Date: Tue, 13 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747097993
