Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3415E8B
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735592754; cv=none; b=T9JRuj2nJxR30BVnS6CJ0314uS6k6PQ7u5Bzyikb07ZJTsuYxbJZFn5xyFeNaRoIiFD/kof3jc6jcX6IbkaoR8V4yAIhxmSAx57yWVOe88h3qfjCEXSxoQc3bdgxNBQOpTobYbbqB/hnjDRG4CGO3GDlUWSDuhjZfmNPXOwRu3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735592754; c=relaxed/simple;
	bh=OyV6QJfxwUsMnHSb5Jp+4qbjqumpKWeeD1pdFkSlnkw=;
	h=To:Subject:From:Message-Id:Date; b=hfsW6Uvn6qVpPwHSQkvFKxlRAj5Mq13er9cDiHidjwCha+XFQJE+ZRd1pbcafH2rXi1ccPI3Pb7AgddQbFLYBLVp3hsfVLWckWlgPmQk+hqMAV9GnCMPJTTGqptimAIdQJ9qWbRHXw/d+HaHsJe0xBAWe3BS1JV/a40hnf5eko0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjWlnOmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjWlnOmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5150C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735592753;
	bh=OyV6QJfxwUsMnHSb5Jp+4qbjqumpKWeeD1pdFkSlnkw=;
	h=To:Subject:From:Date:From;
	b=HjWlnOmhCGcQjqkCsQ61NgO/BTu7uNOlPy7zHz+iALMAMpKNT77sZvGsiOq1+mVlh
	 egM5+gMSQ3sXhV6z2r1IUxdchcIlDuw4sp8s3541tfW1lnCasqQvYL4QgTIBe5Futc
	 9h7jR9CI/M1amz3aOA6nceY+zIrv2+D4Rgz9frMVGC8rQYpiM7pHeawRa+leOyxWe2
	 2uEMNdWcpqWfMQs2Z5ua76f1ldrAH2ZKINzfulp8qk8qMTiNVkI+mZPcht+et/PU9I
	 BwjiiPRzElZmIMtuSGrqqR7zwr7HwIkAz10CET5YTE2GjKixIYeBogB89db1w1VJSZ
	 vY6MSAP43z5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B8CE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173559275358.20850.12474391604484466003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39a0464b109080e6acbc52b6ef1db02a71295719c9224e624a1d22ab5a5a1d1
Date: Mon, 30 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735592753
