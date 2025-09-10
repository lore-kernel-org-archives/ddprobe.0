Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88F8352FCF
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757515793; cv=none; b=WjJ4YQQjHiNznbnRdtrCBugm1zo1FOEj1NNCgYC62ljS9u8+GmaXiFA4sE7t7YIZMFRyyqtteQtVQMI1xIAkeN0p5IKRADSp49u4+PVKkyIMuGx5NfAjsVECrFVoEL9NOmbOBLQo5ch0U4QXJsMQANETH4Vc5bRYsv8fhxmoY3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757515793; c=relaxed/simple;
	bh=y5g1YObRpQ1aMu2bMihOsXgpgCeyDjMroCbqleus1a4=;
	h=To:Subject:From:Message-Id:Date; b=dtWz47IwtbR8hz0l9ewH8QFlXjSz7duesAM/BMVkADGcePkpLrYC3eoUnzqyIL/ifTc/ktdilEUv1a70t0reJS+o8Ak8RqJIaD01RxHFa1c9LT3SxgTvzu6Ok9ydAmvps3viD5Vrcn8gX7RXZ5Ax49dxJii1E6/VSdK2WcYQK/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjO6a7sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjO6a7sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F351C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757515793;
	bh=y5g1YObRpQ1aMu2bMihOsXgpgCeyDjMroCbqleus1a4=;
	h=To:Subject:From:Date:From;
	b=HjO6a7sqwuqoQQYJsWM1oHg3Ri6eOTr3nRrSEVjsxHq1X3a6HESxwxFghO3FOAJGV
	 EshAX8SzR2jD9Tzvvk64f6f0zZdR6cg+gGOPHGbVDJ7eJJJQppIXwkv3IUDo3BB9Eg
	 yRrhC9ljwiScarB4gJDS8EhZQHOwYvO0AwGcobIPj4ozw6gxl/Em5ZS7Cv9R0bDXm2
	 EPFOjPzIY5ofC43eHW1pbLc+iIs9d4Nz8h4mimWxFVudRKNQzeQrHGQv7FP9StpDry
	 9TFzdD6zE2GhP+/0+xe/ea287b2V4D1u/ptPjysL9988UrmSihWdYB6ESBuyckjwvh
	 RsxQ9gU3Rf12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C23CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751579358.32222.10814118048002466581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f0967a149f83475772a082104b22b02f05cbf501c0443652f392eea765a7a1
Date: Wed, 10 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757515793
