Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089BB4CE17
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709189897; cv=none; b=PQSu6Cd5yD1g2DshCX7eZS09UN/M2Lo5kT0LDHUXW+1M32+RsvmSW0/sRiGoAACUCq34lux+3pyvjUPu0J+Bg7t3YEzJAcfZHphbojLa4g1azc+YkpnjLXJShUxuM5v3oDsjRQrXHQIZybhAZOjEASqVEIP1EI4SMMzHWC7tAnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709189897; c=relaxed/simple;
	bh=wgaM/a/UPWrYWjq55ITNemMFOKF65PdeEjDllE1IpqA=;
	h=To:Subject:From:Message-Id:Date; b=kVrOCyWgd+49EtR68WU/drRX6HJ15SVQR96IBtKQkkRGfdZeZGe+hqvTFa5fXYl25dKrY8k3Y5UcetUV82XDRJCYoLRzKz/n70/rUv1shr+WuQ3XawdqhPe4JvFJine6W2IWF0vzjl80S/PgWpPhlxZp1DXXeUnsxJ143JJ1QJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLKo6KVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLKo6KVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C27C433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709189896;
	bh=wgaM/a/UPWrYWjq55ITNemMFOKF65PdeEjDllE1IpqA=;
	h=To:Subject:From:Date:From;
	b=DLKo6KVqoAwGLC0e23c9S1HplnKpgIxA7YZdLsUQbr8xvwICGM+M87OxDZ4/YMqo+
	 +Tdr9+7CPU0zr9hoQk0jSuuFc+Hij7QrAio1tjcxsALhDy+8SN0G3jBVzXJqlmefcm
	 +9mKfaO8qddqeyfocwZ+MqsRnF+xdKIRqMslGP5+RwNSE7FVM5rNl7HfopKIflS1YI
	 NkcOCNHogz/OFsogHxSMLIYpHjicOm0KzubSDzMDwkLlBelGEUnQ1ynqIrIx3h0GfA
	 qa9Vu5R7lpFzyi14c58P9od/RjhAn4rwrQ4NUs9Rq7jr0jnlABPhaVcZxqy4B2jjTN
	 /Hw6NzR8TrewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65762C54798
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170918989639.2646.3887116214761992018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896649cdfb4516a38357397028cd374e1efcda4257050022df6185abf7da5118
Date: Thu, 29 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709189896
