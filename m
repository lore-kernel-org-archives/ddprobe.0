Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459519D8BC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767928434; cv=none; b=KLw5FFBQ9wWcb7KYKpFBx2RPr7lwTtxXkk9y09pJrLXYr8AjUXGnjxb2lePhp1S18aRoQ5em4zXaojdxIGE15AVOzTT5f/U1YVJFhE0f/Nwn/lCbSZ6iEljS0+F6AGjC8hA8EeaB5ONkDKHAYVRvSQREtcGS0uqh/rt4lZ4VjZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767928434; c=relaxed/simple;
	bh=ZS6sRtHw0/vP7xEFpppcMm61lNRllVq1EI1lA2bH10g=;
	h=To:Subject:From:Message-Id:Date; b=D7KhA34BAWtOnEcrg+etYhYl5L4O9IawhQiXNpgfChUNkcif+VAXE+A/365lr4kxDjId0zI37w7HrQLJ5ZAEtoZX9bN4Fxf3ppNy9ZFV0kBwBb2j6a79vaqmufpaGUdPrdPQUOOH1cbuKdGmVxIt7Esk5CBVqiWbzb6+X53DdcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrOkwKY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrOkwKY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE3C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767928433;
	bh=ZS6sRtHw0/vP7xEFpppcMm61lNRllVq1EI1lA2bH10g=;
	h=To:Subject:From:Date:From;
	b=VrOkwKY8qjv+hVbqYcke4g8O0tSZQuF9kdzr70Y392qVE3LEKZKgd0krKY04Z/yev
	 PzboXwjZQ3fO1iJhgBYli7JvvG0UMQPYH4W9+XBU8lu2wwnj+K42S3X8BDX1NONRTN
	 +QGz7XEKmgco0yoQ/j9ZUfqQJzpPAjkmT8bMArdU6jgkgqzx+fLiOLgt7dQ0wnMg/m
	 cB5dah4KAu2z74V8YyhtlCg1T47Tv6WizfapSfpZ6cPUHeaaiol+lNWqqip5hbbXZc
	 4av6RPJoeJBhvULyBo41dqM9VqRe9DScoz0t691kuSH1+m5EHnqCcpMhvubceZXWzn
	 vHyukpz0T5S/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B25D232D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792843358.25684.3305619302481247795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27c9557abf025a4cc8a59a5864e8d8d1296d17ac77e670a59612ab0ebe351d8
Date: Fri, 09 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767928433
