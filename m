Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F32F1353E4
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708109897; cv=none; b=ILUbwWmcPoEBhmDsBxd0tck5L/CDk78jkIxBadbRVzBLWgGFAn6y1y+azTrBfzHBk7/Y0g36i5MyVmr1yvjJzUkaCU06mxhTmeM2mFq1/71jz+M14CthEcEoyokLSMoFrm9ODzBHojHUyKVef6VxbHs2vZ2TW8/izvaloXdV/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708109897; c=relaxed/simple;
	bh=qFqdr5436bkn7PnwTbi4UCrJT0JQ72a2sEvPQJlSL8A=;
	h=To:Subject:From:Message-Id:Date; b=t/i4V82PyCTJMjOE3xyBlmlyba0jO6HNwjUbH9B4mwvPSX6QNl++z2FVr3jmHI5FD7UPujEJVbZeBtk4NpF4PrQojf1ifryBghc9P8icuOvD5+Y0S/rYYVUWaIjZomKnkocvr6ThY6E2K9VKxPjqttR9jQ9eUAApvWywSQHfRp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOOW6uAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOOW6uAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856B6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708109896;
	bh=qFqdr5436bkn7PnwTbi4UCrJT0JQ72a2sEvPQJlSL8A=;
	h=To:Subject:From:Date:From;
	b=oOOW6uAz9IU2rIuiezEhWNKmEE5h5Utljm4eCrkQfnfnJWAnWUsMb6pfOX6NDoVXT
	 68iyCkNRcT5UlBq7tPDljQkQ7Zf3BmkOz4uc0Yn2L2ezfAb90szvk+R65yFEGCypea
	 XzjDrlzOJIbMvPT4kDoCLxEnYVTbrOVZqnhsRb4KxuOfwx4reK7d1eHY1eshI8mHT8
	 MZCEUyBu1KdZ56gNamBpqibxlulkkT++paCQQhcMSfE4bPlTWdpiE4qgW3oQ6vdKRL
	 ZICq4SGLdyiaYOSkGQZTnZipMSAdSSp8spN4b1VmmTJnq9YEtwM0wjXiQNS/85LPBZ
	 tOhLXKU5q0toA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68156C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170810989641.1783.16322743794642724906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ac856a6103da1f9e9c11e1e3722dfdb4bf9c0db913e90c78f542e96d2b5a49
Date: Fri, 16 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708109896
