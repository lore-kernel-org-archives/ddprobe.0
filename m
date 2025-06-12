Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2EC10957
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749752394; cv=none; b=R5Quk5i6Vi4GWehh6DImlfkhRC2PvZZEzFGUSoXCdm71c0cKYIzMyrDt9uVjirV6v5HnN9dYcPNjnkSTcI02ZQqse/FasI+F8ZFpL0H8rXhw24ipdmn5Ne5ls/jNU9TKIxHrF5xwBkqY/1ZomaNwMKcGeVbh3UYSEd2WYoH8Y/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749752394; c=relaxed/simple;
	bh=BM3KFWovVEk5kV6BinEmh6DzjMQtxKsSvErD9b2s3IU=;
	h=To:Subject:From:Message-Id:Date; b=Wblc6taDwxwn4X1zLzuQusgogwhDmNuh6eyU8HgMpC13402+Xe4cR2OWrBi+f4fZFSb1uHSQwlOSp0KzXbkTs4EbYAjbujjMYKIDaujqenGAExdPCIjqk407WPICgKeFb6moKNCQwmI43AF6uC12+BMsaEFez6znDRDXwcI4ua8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNSB27aB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNSB27aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA86BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749752393;
	bh=BM3KFWovVEk5kV6BinEmh6DzjMQtxKsSvErD9b2s3IU=;
	h=To:Subject:From:Date:From;
	b=UNSB27aBJNifJ93gY+4yb30wzm1siMDlMmiB5pNXzZ2ODhnAMQKB7cr8pfl3ibATN
	 sOqIRuAQL6Oow/ynMjyIUlZ3vMsPhv1B1w0GIf9mZ2azuP5fpONlPQOUn8xPTSJrAt
	 zpSp5RaIJuDl+DuNL1tvzPv8+DyzA3Vgwo/DVT+5e5IczweNJMdBc4jno31CaoH6+R
	 JQ9+qpSZipyua36CXxFbrKO7z9b0g52flLrJxVHGRBHssdzKIw8eO6hqPfIc8zfBmU
	 k4ri0/umuCVw/qve1scm+VLjmnZeZLwaRZ6EIS2CxEdyaEKEgzEwVpUGMy47FWUP7G
	 LCnmSMSxfvIDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96719C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975239358.22219.11791120980010795019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f0587029254390c12509e4a66766025cd1acea2de56150a835efd57d462c33
Date: Thu, 12 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749752393
