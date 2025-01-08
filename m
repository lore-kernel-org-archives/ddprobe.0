Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15881FCF43
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736344553; cv=none; b=i8e1NosJ2TxA+JoAY1PgrROO240wBzXtMk3u56Q5vTrpLPVqzmc/1B0OJVZI26DLjluLHYd0p3xeTAPRbsjVlsiHVS27CfRWRDHIOcqIT9KNZMBIhzJmgZ6IONqnQO7h2ne0SGgLL95CVCRaJnbtZmip5ulSAMMgw8Nzbiw1pN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736344553; c=relaxed/simple;
	bh=JXOSCfZOwtixNEJloibOba0gUB6BULisAw23kyPav2c=;
	h=To:Subject:From:Message-Id:Date; b=apJEfgHmtWdWZQoYqigV5BtC4oitzZAnEJ2clOQBsJQzho9KbKNUHg7bBUW0xzRG1Kv0daz1dfbvgbX86bD0fsQpXfiRQIhzfYsYTpv2ruaBkAKJyF/34JAEdUWuogPuYGNr69Sq7/GAeWdbWZqdHSEF+8IF6UqJVIHjM122tS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGTrxbe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGTrxbe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BAC4CEE6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736344553;
	bh=JXOSCfZOwtixNEJloibOba0gUB6BULisAw23kyPav2c=;
	h=To:Subject:From:Date:From;
	b=iGTrxbe6FU5N3QLMVKXEI+BmRiDiL32uN69AizmiF4BF49d9u/q7YIl6u4RrG+KdP
	 4kfVLUH/hO1yqb5EDbWQJBJiU9cqnrK/LqKy+XQ8jiOuYO8UFuMTsLP0BKhmtIO+eb
	 UHa4W+SMjJib3HASp+D79/ZzpxhLOejzD3I/PaDgXJBhOlCf61NxhILBwdvsZ7FwTm
	 zVXi/hvr0MW/ck4DLDzihXxs10WMvjacsKraVVm37k9TAVQU550Gjo1L7CBWNrHJjF
	 tEVKWk1KeTieMg4TUtNCTKqtc1b5iFGv/JFwQYzx48RxuC3PmCZQ1ST8j5UVcnwRnr
	 ruIeVTFcObhsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B08E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634455360.19726.4064753612938664891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32a60c3c8484cb62b6fc926649aa2edb0853a8da006175fab716dbcced55265
Date: Wed, 08 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736344553
