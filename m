Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5C66BFA2
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712218697; cv=none; b=nMXV21hy6QJOAYWucYbUXn2VJYQn6tMo99tZ+OaKRjSUVZX+il7okDOazf0osOjxNBOqX3ltQ6pq3TfZU8YeU1OuWhruv4LH8+avK54tTMwwHkL/mQR2legFpVHbGq7cXfmpLhJxy6jwI2skb3Qt+sn91ySo8HEAp1EBDei7Ctc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712218697; c=relaxed/simple;
	bh=sqr6hAElfGd5c0+1l8ylQyxNsmELff38h8z6o/xj3js=;
	h=To:Subject:From:Message-Id:Date; b=oz/LFmPseN9eH2ISQS/ph9kpORmc4NocFxxHIfS6B19RU5lTB6MmzTBxppWJgcXimEvXKy+Gl4kAfx4HKvtwa+P3sQOMp9WQiYXaCK5yavlKVK0Fd/tX/Gk9ymQDMOZinexiAtZfTg9YVqDyIhdu0MqsSr0T3KOf2ZcwajW4ers=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7EAWaPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7EAWaPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717B5C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712218696;
	bh=sqr6hAElfGd5c0+1l8ylQyxNsmELff38h8z6o/xj3js=;
	h=To:Subject:From:Date:From;
	b=L7EAWaPAqQt3i8j/Pta6A0jloy7wpQ3byBtANx3J92WZYcZ3aR8iGn9NgwgTA9vYo
	 i5YMfAkhRyJQHoOfOJyU2EEksSHmoks6qseab8VT8Sq7XC6Ia+kyt4LsK7SAYkjTJT
	 4GalVqmwNrr4pmpSEH8ns2xD7FmWXjVrdOO3/m0hSfrQ+NavqVbWgzbJpE2/onu9Ws
	 SxQqnNdEG9TjWPZFpjjNjrgYMdesBSBgLZ0LeM3JZoP55lA93YnOc1qQiQds/11IFI
	 vMy4Pg237yk+aEOkXiWQUV3XRe/waFESlfLgoxTKKjQY67LaNmDh3ospvXoD+8K+M8
	 Hs3D5071/ZubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629C7CD1297
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221869639.10499.6854768817188712579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43ba3c44024cc0a10404ddd562e7d22c23ad3932e898074de74f3a51bc0b58c
Date: Thu, 04 Apr 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712218696
