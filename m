Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B7222A7E4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757387994; cv=none; b=ID/GxRmhGbJ63Yjzph7rflrKQ2fqDfZKXtaJNM11t/TW+Fgw+1koaEyJ/8rPx3sdyL5EIKSpqx57fcEwKjzQO5vQbDTCiPfk8YvUZZfs1Misr0L+WVeLK+RJ57XH/8Bzbd+Tukt7dJoKha1LZ9zaU0JvwEz+SlqWI2Cp6G1gEJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757387994; c=relaxed/simple;
	bh=RaK2aqlgUkb47xwocHbUrHnIlkDJW5PE+X5dJNgJ42A=;
	h=To:Subject:From:Message-Id:Date; b=DcpH4fQ5+Kh/f5j4uZU2OyN3mCUxd6uOI530EqY7IQtgx6K4s2zN5IZE5eInCUGpFLqCkxa9NpEKF1frtp9IpgMGHOUswikixYyWNnzX3PtmTXEj2tbZQLdc7orjnrbkaxpxZBb+T4RUrk+kyiYmomPIdvh7hMOFdo+lZvv7MT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psvpY0Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psvpY0Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757387993;
	bh=RaK2aqlgUkb47xwocHbUrHnIlkDJW5PE+X5dJNgJ42A=;
	h=To:Subject:From:Date:From;
	b=psvpY0XxGhx+pwPBwKy4XvYCRHIH/zDzlbCx2gF5veNtn1K0GEnsvR/aRe9tEFs+j
	 jPb7oubCu5gdibpkxa+v9O/w8qKUGutDKYLJPUpVZZiM9bkoJHmcAlM0cQNbfih4LZ
	 6CXnilcqYXmOkoSLeaQAP6F9HHtch4Fgo25yF9oZ23+G44hFCxqrH4OagwzazEufES
	 R/BYarijcJEtHW2slr0V2iqP8bO7McjnZOcl7Q+eUfzKmVpQvGOs5tp9dlCrEtM8zJ
	 3cGjjVaGA2ISeTYdemXQJ9I6KSYo6FTj7gfNPA7XlHRFh3/wGr8aLRGxB1h8ecHK6M
	 QkRqP1x+g+B6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB50CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738799357.30279.6415280809396353959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5135898fb83b1472a5fe6641e8f752643c3862e3757dc37d89d2b9c5f96ed99
Date: Tue, 09 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757387993
