Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F99233723
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776356254; cv=none; b=FqgNg1vlGXbxgBrMLMeP8De8293Vo/XLxLsq6f8HKYy7H+uQTb6TJxnrJ92qIfSHUhLzyWGWGknXWqjV/+lvAcaktpIbIbE9lLX+9FrNlByk78EiloCU0vvxUZTFWv+FMk5C1GAG7q1gWSiWqwFrCbxKdLNn4mI2MFyHvCA2tkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776356254; c=relaxed/simple;
	bh=Cx3GHO2BV0w76QPb2/c+39Q8Z5QtMXcz8R/1XgM/J7k=;
	h=To:Subject:From:Message-Id:Date; b=Ph1U1iZ8dsKbRJl9g7DcENR2g2ftUzP8ADUXubCjdEyiyMKvEn7pTzf8DDBbG5T7l2uzhGYOOeDLeXRwQt9j8OPgSZA3wKyUp9Sxto6YGx/t1j0puLZeugcRSl+/ZhzCcttiLbFSWxTy6Aia2NWte6w5OdQc7jx2zGupq+ZJxIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHDbdZQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHDbdZQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4903C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776356253;
	bh=Cx3GHO2BV0w76QPb2/c+39Q8Z5QtMXcz8R/1XgM/J7k=;
	h=To:Subject:From:Date:From;
	b=jHDbdZQuYOWlrJgDAgmCb39z8SXiZyZm7KDBT/hsAhgcV8y3pyPa9IOdwm3T3eUuS
	 QsqRGr1FrerraGJaEujXiTPLK5wEsf9Qaae9cLJSyC98WTNUVOoWOjUBtngHmna75C
	 K4hXuBycqMmwGtX8an+pj9/jW6pytroZN4yzwXqv9dnKxY1AdKYXMjJ2y+OEUMiRMM
	 Fs3NTdgSwxdhSTKMMPO1lKEdTebgDLvqxF8bK1WQs73vKf2Vfv/HRbHbgC6g5k5ynh
	 xLn8rdjFF4H5SEJ3CAK1Su57vricrsAkdcexy6XvHjyVueBhRf4Al3Ty8bSdfj/QQu
	 cEBRofZjK3t2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E00F8D761
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635625369.28726.17635851590162530574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558a97f58a6b810d9c996962ec697395c59da0874bd47b6f07c1900831a7d685
Date: Thu, 16 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776356253
