Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEC52749E4
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761806994; cv=none; b=Dz49y3s2091qnH/GhmVrIaejXNgQdZ7/fc8gbwapAwLIHaZPzGDbXiSpBy+nON78TS960vJjA0NBYsAuUxunq4G6K/NUe5tu2vu/xYk2V3rxokuVjghw0OtFIJa2vdHmL2xBN3Z10sf3OTudtmTlP/kk8y3/ycZp/skbtiaX8Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761806994; c=relaxed/simple;
	bh=iXKE5CUYkmO4yzZjHKxsee/JFZhpyYSFzLYtdrLQ+y4=;
	h=To:Subject:From:Message-Id:Date; b=czlAIahK+NVEHAJAlPCZ7QdL0okUsvlH46j8W3gGPWohjbtE+bcnaxWizOyNvoqHUqrPucoymKNjyw2rwg9Mc5jw8867abf9b6JFg4LM3yCkpHSNdsnAmAi3SCk5QquE9IIR4lkR/DMCbMntB11dmKDOpSJoHT5JlB0lpspPdxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxq5L3DA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxq5L3DA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A42C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761806993;
	bh=iXKE5CUYkmO4yzZjHKxsee/JFZhpyYSFzLYtdrLQ+y4=;
	h=To:Subject:From:Date:From;
	b=Hxq5L3DAmzjePjeRqEHAiz/B30MYNKFINAmX8yqnXscJr9ftjS2gSlNXOP+c1NpLD
	 ugOZHmtowjcwr0hd0AAXagKYdqhZ988t8yArFAIwENuLoO7BPk8eHH0GrXpgHTUdyn
	 sw4W3w9ysJcdAE78N4NN6/HP+IeBUMKsxpFLSrnWhscqHvKk7bACPbe5kzOIbWoERn
	 iI0aon06LKJ9q7obG0wv4QxghBzWCATVL2HnVBhak5yhihv/fi2MIPV/aWcQtUZ5cE
	 H4bfrqbu1qM46ZnHI1xZ55IayPKxbsX18OexVTc0dY2j0If3o9PQDNCmxangtA4xk+
	 Y2+33GKpLR80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438ECCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180699359.22853.4035424075828396648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a54173296514c6ddd7530a1356871a02e1605a47310f609bf33c4a338a815c7
Date: Thu, 30 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761806993
