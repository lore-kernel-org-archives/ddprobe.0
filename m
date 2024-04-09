Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B57129E7D
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712663896; cv=none; b=Dl/AsboN6lfEeYvXrUCCEmrqwdBlzn9TSlr0hw/0ZyJUNXKS9PtgYIzBB49AyXeD+fCPOKgIM8DEroFtNjoBDwT75DonuNLJGsx9Ft/BxqRZ9R6MJxpPu7QpRKFqUBlbK2Q+iDpROuCwHnGO/bwoNqdOM+r/gK6QuRKiksl3JNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712663896; c=relaxed/simple;
	bh=ZkO21Ljl8c2DWJhuWvulaGMSr/DVwlGcWIxW3rOAuws=;
	h=To:Subject:From:Message-Id:Date; b=TZsunO2BVajOdp/1CdJiwUhp/+Ye+TRB4XxYgW3h17xalsNOw5xS+e/VLSi6LKK+9p+ezzKpxxOAnBPebgtF/5Rrgdzvf3I6hvoa7BtQKbtyIlk+BBqPr8+nJew5CLphbKNZ4PUhCyuRA5AyC8XmcO1+ubdwNHrMdqKNWDy2nCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gct5wXin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gct5wXin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7351AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712663896;
	bh=ZkO21Ljl8c2DWJhuWvulaGMSr/DVwlGcWIxW3rOAuws=;
	h=To:Subject:From:Date:From;
	b=Gct5wXiniU/cySO3jPg9pGL4t/psLGZ/UIBfUyX2HlAr2Ri8qvQlJsrSzCx6TxBQx
	 9Tybvu48zYjDGEWtj0sXQHqzrD8XX2lOZjUXyy1gj9/K49U1IMfRwQCvOxQd9/hrfc
	 YJAFIZeeV+OpSL6yQ5zVPzG0TbEssHf8PhbngRNo+8Ff8Y/DXu2JXwXauiAsp1lns/
	 +KhTEeUtXezQ5YCRkDxEavoB3LBpnjTKZuwJLB/WJR96rLohVq6pEZ4aFlhGBCgPW1
	 lVPiAsDcpF9jyBzUgSnO3xHioZY3Y4Z79TbyT82U2VgYTYTJz+0sxabaDkVZgqQO3h
	 doidfQJHhLTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665F2C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266389641.18477.2255737810827241913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bedb4cc39f010b8d41f12e85ece409cfc2f292273f03adae3b39385f91a59a
Date: Tue, 09 Apr 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712663896
