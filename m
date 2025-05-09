Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF3D239090
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746829194; cv=none; b=hEN/q2yYpqlrSWR7VCAMkQU1HZbhV3SNczQmoPwBNvSUOdHP0jr2T0PnQTQOnXcNj7Mz2UVwJNQk7GMG87zlE0mMrcR+9MvuwOCpn5u/LNc+vXNFLHY1ConQsRXLRY2y5EdspShyKjVf5zeV3P1lFYZ9wS9G8+uskJKnS6GdJZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746829194; c=relaxed/simple;
	bh=DzTil/pfevRvqbqAYuWSbwJEMPWboylbT1fyHo0komw=;
	h=To:Subject:From:Message-Id:Date; b=A5UJDEJckrd+Jl9kvc6EOtzlh2M7A9tFwsknkw8PZwBTi87DuOzgRbC6DZE3GNoIdK6jmlTuFlxKqQGkQQB8KZ/wu5XVMypOI+2u+dtennYvoBHEg2jqIvQsJThwzuT/hSmdAeGwu2R0A96roJpCdzQrKp6hl3FQePyGNKh/XTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njx6WcDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njx6WcDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9E8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746829193;
	bh=DzTil/pfevRvqbqAYuWSbwJEMPWboylbT1fyHo0komw=;
	h=To:Subject:From:Date:From;
	b=Njx6WcDi7WRTS8yeS+o73/cjg00kwXgJehZsey0rIhRaHgZk0KrnwEuEnqesKO5qA
	 MMPUnk3mha40o4id9Ynwy7Aa/MlZJMIJXBwJBOivZUs0NhZXr8kDQyK0sOB/TuYyt6
	 ToYucYuY3l82/Qiw6M2c7GbSIwsyr77oc5udtqbC7vEP/Zo9BYQYdE4JPQj9q2O8NJ
	 nkwB6SWqHBf8JqTR0n5VkKyIfccxJERzGZORV4HajsH7kZWIJlEtjbWeR9LksqY5Yc
	 85AfliV+Qe6D0CtdTySL3dpumftRS8MR77g30P/H77IcfVtrAf4HPDOyZRdcotFozl
	 R7wnMwIiPHRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E340C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682919357.21858.3813680333303783110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1359b9ca4d593ead2285d3fb18c1e787c67c3ec75a1758c2240def966b84bc5
Date: Fri, 09 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746829193
