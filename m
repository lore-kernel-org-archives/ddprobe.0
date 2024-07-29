Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C78F6E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722279954; cv=none; b=mp+U1jjRG4CWL221tsex2knWCYc6594APiaBloNVoh9gUbcp3m9bsUMt9SwJv8vf06qyTaxgGUTHPilyTWRu9UB7GRa/vhjZDcnRDvSkNhXXlMfa3PKlrf+0MFyu/uq5j1EDvEOB3HvCofBJSA6sMsfT92ebHWSFsTP6qHH9TeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722279954; c=relaxed/simple;
	bh=YgZksVfSkAytgRqNZ04evP1yEVdua+7v95geT3LM+tI=;
	h=To:Subject:From:Message-Id:Date; b=kaxY2BS1PNbgsmPjo901CXhX9EkKW3pA1htPeY2fpmyLIDNu3c/L8wh/Q5jKFqtfd8JgDgl4wVFPqPktKsL40J/PMbwW2HuyxSkPBu1veUW3DOPuY5tdVTUXKEgtqyc96d+P9ObBreBi4qY+tKZMmjpmr9fQtfXnctnLrmps4y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THFuKu4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THFuKu4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A8BC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722279953;
	bh=YgZksVfSkAytgRqNZ04evP1yEVdua+7v95geT3LM+tI=;
	h=To:Subject:From:Date:From;
	b=THFuKu4AF5jIs61K/FYZiZ2MbYXJHNsKdqozGUd11HiVM9lON3gjqbqMP5rQaxso/
	 b3GbpongnSUGMPCy5TXHM6++0hnBWHH7ifFuEMlVP3q8hngZIYpxnWG7YQ6Nj7bJRX
	 N4c6QlUzRPxM/QAJqG2oHv6215GutEQGao2/MJZEs31VdQjekUnwIVpZxc6kgu1Qi7
	 xkw494p1dbA3Gyt/PCcajsSblFEwZdY1B2yfD7GGBfKW9799s4zVU+v1I7A6YCZOhf
	 TfkbtUsH5Oh44FHpQg/TIl8UrZiVBoK97m2sawhKLitG3j7/g3UTJhgrkI/b6weGKM
	 G9PPebzPVukyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD3C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227995357.23274.14405465905329320405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6bfb1039e6b16b598ef36bb476f0bb80ca221388e0d754209b96cd7e2ae898
Date: Mon, 29 Jul 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722279953
