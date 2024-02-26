Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F093212B153
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708962497; cv=none; b=V67eRag8MOu/OMyne4pQcR+EMky19OtrSXsBrIhNCFnfxnowF20397pTm1dP27R+QlrlLk9+cwgDLBK40JJqW4AwZ8VQK6vmKd2U2+lhRX/FlRPZOOzNEzY5FRvev6v2GYNcJRi19JqXYLeM54/3YbpS52/3O1ecyejJLuA9hjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708962497; c=relaxed/simple;
	bh=w2Duqks4v0+mxVk8lqPOi83kQNlAdEZxnzWrpdvnsOw=;
	h=To:Subject:From:Message-Id:Date; b=tLNlLWBmtOVTiSur6U3MSSH/9sGlFmnK5j5dy1CKWj9wlueedjiSRo6L2W6ylUS/Xxb77Vo2+c8FybfSy8vygEu3/s9PmFx3bjNcK6viEA0Ze1dRoYkWa0CEsW0bSAWEGinGBmH1lGRYIu/Q0Z17f5XbpA21vmfuAWa4wrPxN28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIAfWjcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIAfWjcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79290C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708962496;
	bh=w2Duqks4v0+mxVk8lqPOi83kQNlAdEZxnzWrpdvnsOw=;
	h=To:Subject:From:Date:From;
	b=GIAfWjcng/AHC1sK3JSsIFLoevKF1X7DRjvwMke7h5ddElUxYpbShTm7xY8VlFYyk
	 TQj2yzoB5auubfvJyt5CrdDvL18b5vOp0q3WlfvCUq+mrT6UXwiXpaplpnHnEYdfwg
	 qJK4bewQRS87wKZsr46mnwz7841PuvnHge4VX2cNbl64frUfBnokky6v0aHOl1owRi
	 jE7tLvH6gD7gQ5HYNkCKtGnjlfyTOwFpRfy+Dot2HJzAFmqkf9PEAWY5c+8f8+aAFZ
	 3M4zIFpcsfiPQPOn/FdvGSboX6I3uj25pqO3Bwy7zL7hn42K2ENpaJQp4B6xhAJFcE
	 541jzuC85P0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDA4C48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170896249637.15255.5086488624725237968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5195829be57607bb3409af8e53ea8dd3d626adafd9d8a5565eaa18526707ba6
Date: Mon, 26 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708962496
