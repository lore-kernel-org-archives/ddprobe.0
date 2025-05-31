Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F494C92
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748655595; cv=none; b=CfEf1sIRoZezc2s2t93pNf1fIGTnA8vqBU625o5aC4c5EU2sxmk5OkdK+hHV1XVfSK8rxttDfKI73GZ7aVD5IpEmwkXXmLwAUKjbFNuGDNiA/XlFlYJfERsMo5rqcp0WaCcQ2dfBHsL612wcZ8TvUyERpfiXkuijXQALRa9BNnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748655595; c=relaxed/simple;
	bh=Z1SWL6GzCVKDlno0oLdNEUuiJFvUSYnvpO9E1BlazSQ=;
	h=To:Subject:From:Message-Id:Date; b=d+6o5/vbkWQgQJ0L4lqP0PmEEMsyJls/yE9MDL5FCo1PrParzTgPQsQJPvnVTEudq8avQKudVShRjStxSj9PmpEzHgldpCcuvB4pJvZIbWmkAtHzE1buP78hKje8nbCixWdvyON4GDQQWRnDikTirZMKgHMlYCj8j+4OUvRpoy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGSfDqzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGSfDqzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748655594;
	bh=Z1SWL6GzCVKDlno0oLdNEUuiJFvUSYnvpO9E1BlazSQ=;
	h=To:Subject:From:Date:From;
	b=rGSfDqzA9n6STJdxPqZz5k6zTQ8N4MaRT+X8NYNnEDQgyOSlRMO9Xy7637u50rqFm
	 TuXOpp7TiowT09mJwLt6bokoM59UiLpm0hZH0WJbuoslwqSanQxg08Q0Y3QvZL24Az
	 YdM79pw4xtLmVkyaEdO49Mnli7SNZjjxdMZ5P6RVIDs1YMBBYx1ZEOkSY8QlxuJvsf
	 8ZnJ0qSPPkk3XZL+fKwoLTMn1jbGIodEdWkXQk6l0dfZ9VuMBo110F0LKfDL6Qamrp
	 ZyB+QrNiLXxnJcO7ivO34FDzAL9O2xZ99kQIG8xMUvhdaKiUrMEDYP07uE/toUNWzT
	 TTawg5JrVzJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF5C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865559357.2590.13346026077399355423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b374a3b97517af1d2d686ad58454ef3068e515c6b1a7bfca82413c99ebc8a69
Date: Sat, 31 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748655593
