Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C382D1A08CB
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727118353; cv=none; b=nulc0vmxh8hZOGYOdIYoODXlWF4AZLbl8cUzDRjLBE43WLQZNgKO8k7in3GYbQSmzIsbrwPTazJK43fY+oob/oaoVE+QUoxks6AVGcn6bB+cH5a0lrterSUh5uPhP1cOLKh1O5t+rxYc/Zg+Q9N2M3jFHH8M68190s7mAnZWv/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727118353; c=relaxed/simple;
	bh=QADEj19Nx6+eoLp03WWR/1VZyD4jpPM7nReUOLOzAlE=;
	h=To:Subject:From:Message-Id:Date; b=E7agU0XhrNBlYlO6foSS5UlfO0IBAwLw1vHIPTF3AnypPWUVNzapWMPb2dPNqZdsivfmi0eyC1gP+bd3pcVnzUDnbkYFxeXUJK6/ZUohXtla+8zE5NYw1oK1/O/xhE+5Bs2ZYOuplmyIBdGfJYsxq8tj1PAQipN0mV6Tcfrt7Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqQJjg6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqQJjg6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C77C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727118353;
	bh=QADEj19Nx6+eoLp03WWR/1VZyD4jpPM7nReUOLOzAlE=;
	h=To:Subject:From:Date:From;
	b=jqQJjg6dVQyNSrBh0MlLoQgoZnRqCPmzVH5G/UMQPoGnv+gD4guSTllm78deBHISq
	 4NYk44CQ/wnH6ie4oXToF5akEYkvw46AT0FxB0bk4+Dqb/jBNYOCIklWbUIt529tM3
	 IdMPjvzIv+aV2WVroUfZhLw4gjlZjD5qTWCtys2r4upiqL+EDSPGO1zOtszxGE/J5A
	 6UqZSGsxUv4IrvQEF7tfYnie1oK9OYcz5OQja3Fci94zqKsq8WXvw+/+2ZjN7WnRc6
	 tZctplhBcSOBh3ermqg/UX4sQi5O53X0DfStG9E+lr0jVQx35ImtvWSF7LgQtA7ZRm
	 KTrdId0ZImvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE2CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711835362.20827.7204685127483415464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedc2e3932b9e7c68dcb10fac7d38bf334a26fd6de80bf7eeb8cdaf7dbb65381
Date: Mon, 23 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727118353
