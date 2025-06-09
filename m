Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910B17BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749447594; cv=none; b=IVW4q08WXcLtKTKV9rup6hFbxD591TXfVebpmjYPyBVUEHx8M0FdckYWL7l6WDf0new8dphPYPCV77gTAEs4m5HketTQ/b3hZXd1ciQon5GzFc07xdMQhYqwcyiwmWQIjutYAmw8lQawd1SZmNoWhLDLZRzUWX78JKLzx9thsys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749447594; c=relaxed/simple;
	bh=JDTh11hJ57O+Muu7n0WC+AtmnucugQuZ5yPPcZW3bvY=;
	h=To:Subject:From:Message-Id:Date; b=H/p2zSp36WTfPdpHDAlKfTh3J5v4rb5OZj73M9oeBZebdHzDEgaqCywaMz+/Da5Lw+Ar0Hvi6nkBig4pMBnEuZj8R53ECflAW8vJ9pjuWgJI2T2i8AgyTrxgEexfSSLsLRRNvqiN6+4inxt6gQFl2rtZVg72XcUp175/qLfC/YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxE6T8bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxE6T8bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749447593;
	bh=JDTh11hJ57O+Muu7n0WC+AtmnucugQuZ5yPPcZW3bvY=;
	h=To:Subject:From:Date:From;
	b=RxE6T8blLJwIBaZjl1bOtkxOb3mYvZitRhjAFCXi1gDMUIc6Jr4VP3gxvBpO4eUiQ
	 QqmUZngf9JjkFx7TdaU9WlxeXHBSUsiN3Drr6/pzWY/35iSJ4VpjECV0RbxW8gqBbC
	 ovmqsE4CffxtivUPER21UUMNS641+CERuWeV7lB+0E4KUKbQT+MQeoPgE6WIJTefKw
	 JOJr8kUI6ISdKCuH15CrZLqVwzR3qeorrY4WCyy0IgztnB5k+AOdnMY07sHPfR2YK8
	 jmSQf26j4oipr2xNTa3b5JIGNKL9IkC3Mr8pTXB8jMU6+alfGdNB/QmdwHkCUJ4a8d
	 3OEDTwh9ngMVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92369C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944759357.9594.15219455559598372435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5cf90b5c0b1b2202bf2403697bc0aa61bdeaec774a41c4022aa8c004fb34ea
Date: Mon, 09 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749447593
