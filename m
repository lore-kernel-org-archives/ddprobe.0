Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882A23ACEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782138394; cv=none; b=adl+jAatGqeywxm7U+QKqutPLDuZfUDTGXrHzbUC4r8F9wCn0zV2U3okzZr7ml/WKWeBOXx8qd/twr8ReHk10WFLJfcrCv+XMpTJ6jDfqSSonWy5OaiwBgsuG3LjP06zUQIH9Rbeq8+YW4LEZ8teHeSis2dVsPRlvJsCXKOQz44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782138394; c=relaxed/simple;
	bh=UHdhxEnmtS0HzEkORLR+bY3QunBBeFRqEL9oGRmBUIk=;
	h=To:Subject:From:Message-Id:Date; b=vApUEXIPLjEzj+CIjfAT/yNvJh1RWyB2fZZ4ReUlv8qGq/T0Dd/QnJmzOeua9IrQWyi/PrJRAMVd+WVwB17jlC2PhT/CeKJhYuGe+P8ASNV+E8E+Kq2uV8T+NPTpxs08VFyG5M2Q3UYMX+76Ixh8VJsMtJftVATNOEjS+fE6Rqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzGjfUBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzGjfUBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D884CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782138393;
	bh=UHdhxEnmtS0HzEkORLR+bY3QunBBeFRqEL9oGRmBUIk=;
	h=To:Subject:From:Date:From;
	b=UzGjfUBOCw9lO7DVM76U3kx5Nam6zBFZtZj3qESoPJ+ng1d0L9onbh/nvGidotIsm
	 BCFzrvQFRJM/MsGt94R3oMwZyFm5S7FVSiYHOviC83HEpYBaZGGBzGUccJkUZoruCS
	 bHjqHp+L8SqHe/P7LQChmnMsg8mREpcpxaNgXQucGL97QNKl36mKi798YXAXTg2mbk
	 2cB7Xjy+LoJHK1IZVa+Zsfo5Rt9lZMQ372hqiJ1xQ88WKy6Lbk5tQYoQTznvNbDUeg
	 mbiQMqgDppadvRFVgO+PbhJD/sg9/6P2liM90LYQXNi5T41zPloDofHa1PU3p9MAJA
	 pG3O9ea39C6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B622BCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213839373.8184.15510478564765186735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3fdc2ca10931bead0c28bfeedf048571eee8351986a714a9ce0fd5dbd75aab
Date: Mon, 22 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782138393
