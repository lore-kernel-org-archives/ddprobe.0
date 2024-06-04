Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F90213DDA5
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717523183; cv=none; b=hjfWOZr1+MlKrGsQNzzjxZy5GtVefc3TVkwv+xPwzIpbiLgmZ0lMqGYPzka9P4j05zXjDEtTvAUTsRoizGZ5koKG9cefRYUX04GV4sbFcjl2rBuENpzDpULdqrRQ/E5J3zF418nb9LlgErTkOOmtTOaxtDc8ODvxMlPK9XZtiqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717523183; c=relaxed/simple;
	bh=j2K+/mE/DrKeDw9ADRQ54ZFAPf5aAQoXOCSMYMn1pf8=;
	h=To:Subject:From:Message-Id:Date; b=sMf+AToaehfI31rn/L8E4qysNA7mQTG7gASif2nevWxurmVFD5sdVXNz1ZgsV7gWGqf+mdt0CXfjRFspVXdQxXgAGB8DPz/xMWeqsnueVt1T7Og8sTyPFqiykhsUuq79WyWOowEgq22n6PWYS3FGO9hbXnPkGCB7vmoQwuI4Izs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3aq9nFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3aq9nFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD2DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717523183;
	bh=j2K+/mE/DrKeDw9ADRQ54ZFAPf5aAQoXOCSMYMn1pf8=;
	h=To:Subject:From:Date:From;
	b=f3aq9nFl7b4hOuQUVxMuK+U7BiyMV5tSTRr9gRvekzrtJmrZrdiVzHG7SPyc3YtHO
	 ZkWnnOSwU/+kQ9rov4AjjgNn/5ZAD5Q+NYVvA7qeLov3jxJONEJUivrWk6ijZ+wY+M
	 v6pDflzCXvW//mMeb+j541p1QgCnq7OuSE4vjCxRbkuv/SO0h+ISXxzS5U5L/O1yPX
	 KJEqnajkVuCqbyqMlKbosj5eYH4kl14s7+EzOpc1MGXGgJAdSETkCd20DwsjxhqYK6
	 3DPrl/zHUldh2V2XkKu4x1Y2MNHs8KA0gmhyBKVrxurr6XBggtqIauzUowGMySbRP/
	 qrgpAeiJ4Cw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D164CC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752318283.20762.2331541127536638181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed4002fde6e6043cf383ba6be66eac5a5ae1e5d1ea2e45478139c66baefe27c
Date: Tue, 04 Jun 2024 17:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717523182
