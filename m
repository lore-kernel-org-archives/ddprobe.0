Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397962B9A5
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750811994; cv=none; b=X8CLgo5k9xL/5aFJ95E934tXd/3c/caJKqKe0OVo94IwslPpZvRCyucy65xvQGmJedo/pA1qF9MYODrgk9J/9WodVtYA2lTqZnOGTcPIDS3QRGc5GXvCza6op/g0gOrSKJob8reRwDyitnRobvpu8FoBzZZZQ5XFovMNsxsS3ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750811994; c=relaxed/simple;
	bh=JM62Qsh4xSna0jtgdrF4f28Rk0Lhkbz5ZU/6ogkQrXs=;
	h=To:Subject:From:Message-Id:Date; b=k30ngdweWJaETyVZM6Xn60/sdnmnaxuzoTlKpXmG5rnIxvlxBXhIhNjV4CT0Lg6yyVmC9oEOlQQa79fYrz3Z0Pc2H8fldOKfCYSxohJqww5w8eX3BXAxMVKMTaa1jchKCv/ZuynQQtEmaGvq5vWHNRl07GGHRX+xOI6JSfETvYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLvtBdap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLvtBdap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750811993;
	bh=JM62Qsh4xSna0jtgdrF4f28Rk0Lhkbz5ZU/6ogkQrXs=;
	h=To:Subject:From:Date:From;
	b=fLvtBdapAEFQzmi0N4k3cLpk+ymEbzfP54bNgQj+pRyCbHjR7NUKzbzWVQNl7SlGh
	 RDB3SaSlvaWJQ3K/cU3AOkY3/PlUljlYQ+lSp+rMONNtUDH0w42HdOaJuQUDXFdwRE
	 6ghvO+H2i+qrJKdKvi6DrdbRMg+NAj6vNre7Yh6X318saUJH2Q1SdiUHzcQ7XXo4HZ
	 VUcBYM2r9+nJHUKmqMcO5dH8A2NmaB0+fN8k0HRfzEVj14VSr/IS/U/sDeHXbZDNFL
	 wr/Ad8AODGo0sRMYsQstLXmKp9D6IAOpZjIPgPdU4s+wi3ZuBPrf8HBbsIZ9jE4OTS
	 tFPnOP5IkpiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91446C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081199357.25469.15852584901696800895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac9d9daa944477951534bf8f2e3bf344f235a562f9e1708d9db41b07d04edfa
Date: Wed, 25 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750811993
