Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52418171E72
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715385143; cv=none; b=LHb0MeFDueqOuPGZapKTvGRdViSjo46OSRtkgpEI64drTMZjzbJw0DqumQ9JKqMPoG969YdtER9OOR28uVAq9/2XsDTB7ZTj8hQjGyQ4iHad6Oaffk1FradKY06mYftk4fhYKW3XBHxYGaqGHTRl9LKFjbE8ww0xqpfN/eDxc78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715385143; c=relaxed/simple;
	bh=xN/nvua0mrQEBb7M/zJ45fTmctOVZzMJtXU4q259vUk=;
	h=To:Subject:From:Message-Id:Date; b=uzUCaAyZgIlNeweiJIlV46ljEd2TpwSnGCiD/ml5rmq86FMxqsMlL6ue7s3v5czywb+0CY38xmAr7ys4OTR3xNUzxQO2fuzsuWtLfFZU990I4afxQfXqowlyqzrd+QKf+CKicOj009HtLaR9C3zeq5JGWBElcq5LulQ/uiGxML4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuaHzjK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuaHzjK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20A8C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715385142;
	bh=xN/nvua0mrQEBb7M/zJ45fTmctOVZzMJtXU4q259vUk=;
	h=To:Subject:From:Date:From;
	b=iuaHzjK7Cb4c3mspOxNm0QvWfQ9IVrNPchz+HR3rO31htxLDgF+bHuULJWPp9ist8
	 IyQ029gN/ExHS5n9v3XQ1jb0dkJpwIJSJL1iKizkvqi3gFOSV2bJw6BMAzAgik2ZRG
	 /IU00VbvkugfnfwefK++zsTL0DblqAzAWRX+9oR8BYH7HfjHmHvbuijYoXryFzCLhQ
	 jCbp3uIYluh6NkwVuXVzNs+7wQPrfLvaC/NAVYg2ivjnBqlb3MpZitnbZO1bax88o5
	 KYLgys4wIKZYBWXkYQN3xO4jCzVyXlNATF0vXXmdp/s79KWrwn2I73qU+MzylFhGua
	 3filBhpt0/Lfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCE3C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538514276.19110.10566900657319005478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345beb7662176b348673dcaf85cfd83e6ff5bee19cb1261b1135cba8175367b4
Date: Fri, 10 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715385142
