Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6376017E
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713226163; cv=none; b=AkvmqOYTvB9urgX9HUawM2aG/BK0tTvi0tjXIvj7jkE4bk2gEyCOXw7vd4D7Ab4y3d3EW5T1MqCfT7DiVia8d9PsZrv367M/ptmu+wjxz52mRQ4Jiuqiba8HATEEy7JOy874JxNO6n8U2JmWX4Ar6y5FZlml/pFBE3CThaoFri0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713226163; c=relaxed/simple;
	bh=DARMrtCjEXwFl01XlRrG6KiYRlOULBkWi+CVvZxwPrA=;
	h=To:Subject:From:Message-Id:Date; b=NkAzJS4GbYwqk127tmWi0LvsX7podvKpYD85Ko8PK7adhThTg3//IQ22yEa/F78i40/81iNZEDULkHpyTS06ZZJwx6Wv9+YfBQ4BwThp3T1SqUIslZiUiibNtxRcpizFq1pYu6Bw1W+m+4PuCHQN79oTkIAQ3iKYxomMZ/YmAV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYIskJ+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYIskJ+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9276C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713226162;
	bh=DARMrtCjEXwFl01XlRrG6KiYRlOULBkWi+CVvZxwPrA=;
	h=To:Subject:From:Date:From;
	b=eYIskJ+X59Ytr0MWa4KDnljoyNWsGgDTXKZki3Gh3an+XgntrPfdyWRp8rY1DiRrl
	 JMQvK1rBNRx3VyavxRn2ANAS+KYmrj77fo3ObQ/MQX+SfN+KIMZlMJUk96MHx8krKR
	 sgnHpLgZEOss38OGSl26/qbR8CgoQwJF+YnwtkXZE4q8w2rjHCccg9K3qfRq0iFkWB
	 bhfNM44HjctrrRWU6kzHi1PWnILt2jiNzMpLydTLc7ZHxqTlWCH/GHLQzUxB9ZlCDP
	 Pw2L2leH4EYOSEChjyadflF5J3r790W9wH+jzskucbkbs/q59Bu/dQG2TM4P51dlYX
	 E7B5EzMM51aXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67BFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322616277.5435.17414293275654670082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0b12d921aff961bdf13c7647d4008c32a31628bb471884f282d09f7c688ec4
Date: Tue, 16 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713226162
