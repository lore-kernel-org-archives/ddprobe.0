Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C7C30C340
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755774594; cv=none; b=CZYITKTLbOc1K+sRKwxegsUiWes1Itpng3jtIi5jeXCZRqUMl6pd36QFH0U7dkJS1WNKFw9Y2o4lcm2q0xS80PxSaLIOi5uVw9DSbt+82AyH7+OqCieYlj4hLQb/6NGbSWZ9/s3vb6pROv9DQecUfcUKqAQDmugfehZiW+RjxmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755774594; c=relaxed/simple;
	bh=wf/8swySIgpUq/42v0EY2Fc7BZFEnho2R0HaHuJk71M=;
	h=To:Subject:From:Message-Id:Date; b=msEA+SpxPs0LjR9BKomzEnGh/reRRjVoZMWgQTvcj9Y8xLCENZpb4vW4H+AVezh5ItJQYB1HLUIidQekziV903fg4ItTyAmLVTcaIbIZSdIjQPo+PjRh9weXN0BSenKXySuWyzNw8JAGh2U2humWfMzHlfdocp1lSAYCZ9UGGy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjmmAx6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjmmAx6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA9EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755774593;
	bh=wf/8swySIgpUq/42v0EY2Fc7BZFEnho2R0HaHuJk71M=;
	h=To:Subject:From:Date:From;
	b=SjmmAx6PwfKJRciZkEAWJzgM5/qA20LA8XbTlWy+lUuaOk7z/iTKiBQbiQ841Qzfe
	 6icq/d2f2xsho6hVr+VA1q7Z3kUP+26eXT99MX2M9oKhsokQv726ek0TLnLUBKanuY
	 6+FWdZ2v3oLUs3YwDIZ0LbAtt/p68D+Igvxq7ZjxnwOzXVkUEVpz/9NlXOo7cocgjF
	 7W8SFMmdChMFJ54DOEk456rz6S834HyUTVFH7676CKjs7ehrEr7wg4M8OSSDK/ebzb
	 pDzZu33akJsiE95VCr2WrIp6xJbB8RlBFzCCeHxaNu18YFf3lKYJl/SSnKzVjOl+RD
	 Veofsg8iEwU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85CCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577459357.27398.397457097503978624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026720ef570459eb24cebf8b235e19a3cfe0bf828e1ba7aa7d4710d2b9f7a3eb
Date: Thu, 21 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755774593
