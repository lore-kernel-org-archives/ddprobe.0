Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D3B2D12ED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757492394; cv=none; b=XwN6+qntywgi5o2WHiMd9dVbPWSDrsIeR/m2Lsg0Q+dWX9E9+GL+Od5SXtfXG4pgYBfLp2xzP7PsuI1b01OpqYDgAxFKCQk05K+WRXyKIm7JnUzKSZw8wFS+KabTMyGWywZi9/9w6sZsLYqnMHELTldVXX+M9auBb3QGJiLruGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757492394; c=relaxed/simple;
	bh=GUC5Otup3dHbYOjkfWHcxaMLNSUseQjMLK6ZJS04d+4=;
	h=To:Subject:From:Message-Id:Date; b=HJHrN3RZ1criLfX1SNxbkAXAlj8nO4miZbmvmfmFiIqqvR+7e0ZTLS3j6nYMK21vAU3qVitwqNiNZ3me4bdECkrxdGHRRfcr9mE9qSxKF3K72AG7QDeE9haV5icBz1zC+FuKXeYxAcQt7Ecdr7d205AdBoOpM0POS317NTVq/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOeOZbP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOeOZbP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13ACC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757492393;
	bh=GUC5Otup3dHbYOjkfWHcxaMLNSUseQjMLK6ZJS04d+4=;
	h=To:Subject:From:Date:From;
	b=gOeOZbP+rEOE/Brqq6xi19bjxKd4ubh6ONBFKja2/2cCs2FZXh8hjBWhjG+NjUml7
	 OqJFbUzNKM5fDqADxPOPnj0r6RK/hKPIxWzCeYEUyUouYvPpQMX+iBhFveVdvB0T1H
	 IQh6loh+qYtNMefrKV0E+1jnRz8Ce2ypFpiDX3sjNMSfRxolm87RXd5NOZDn9B+t0p
	 OpVbVvnkhh0Q+2j7ot2oVnPwlycu+3vokExfiSGoExXd3QpXhnvardAxqslx1bV3qN
	 ygjLLLUfn9FwryvrCNJ/zfRfuWQQYe87YtjqFLetv+b5LX7MyJNoes6grme/ei5qVS
	 zbQc0GHx+9F6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF93CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749239358.12066.5580062771367668595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90bc181361439e494b0e834c9707f47b433947a9a54b1c9c2c901150d39387d
Date: Wed, 10 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757492393
