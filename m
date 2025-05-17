Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C41A2A1D8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747497594; cv=none; b=uRPbl7rprCEFIMJ8JZx+feeVtc3a3sIzVss6Agw5z8Gc2zjVLgsqL+LXSj747TMni37mCmWGOEfMy+LJnY+NgUHxZOb/5XIAb7tG0TKEqz/x6QppBpHoDStGsDG1qf2/+zlE12s3kt+zQT4ktcsRGojavZNHZi1ZClmsTm9XTzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747497594; c=relaxed/simple;
	bh=vaDtW8fYTe3XqLru0SiXLTX5Oys69feKveYEqoqwGtg=;
	h=To:Subject:From:Message-Id:Date; b=de745JbTMkABhhLuKqMOdUUdCQRTVNMHZfVxXV55TJFExR5o7uGYTkxxufx+76BtzlFjHZgx37n8brzLnwLzIdckGAe1K2JnSdWySbFWMVn3agBW2xoOjvQ+zA+7A7PMfnH98DcJTkh+J6Lq38nWVdhnmVOAcMV+3a9s21H86Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA3+yZzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA3+yZzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59ACC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747497593;
	bh=vaDtW8fYTe3XqLru0SiXLTX5Oys69feKveYEqoqwGtg=;
	h=To:Subject:From:Date:From;
	b=SA3+yZzN7nj4/OtG6DWz0k+qLB54NbjHss2DqsjcaT24g3bD66cfbcl667ihzFLQj
	 pC33+4mv4WrtO696wEDAlG8ZW5zniKHCp05ESYbGU7IXoyfJP38fyClnBgztJz6xAM
	 j3V8ao2XyauMcA3RgwY9e00DtNDtnECbKf/jogfYC2Ha/scxhO6MDF9xihn3Pa/J2m
	 m2wVe0VmVOLkV7xQ0MEiL8bUGL4Zs92kEqPA7QBxP2QfIZoRSkbW1KLkRTqaDLsTuE
	 Mo4pCnnSauspJPZs5OGxLaxg9YCp1yOnxbE8eGnmLMzwIApmVwKxU0kBM9zEZLVtl9
	 AW56P/QWV/9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA0C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749759357.19105.374283532597574922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c8706ce224b0d642dee7b5615528da88fe09aebed6a45f3223615f6ce60d59
Date: Sat, 17 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747497593
