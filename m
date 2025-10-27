Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D39A2857CD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603594; cv=none; b=jbS9dOZ/SwU2QetUNQMt+1bJHL1AKCvwoy+xuTCUtaWxPcs/4W8NeDYKMRji/zEGneyh5gwmsOLHCyxR9ff0XV52j3diQlFbZmt/Ms+WxYGl8luq7/WI8WPQwPjO8sHl8qbsqRBuvYvZa2SAPi7zdVjaYfObKQJf1hbV6afu2UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603594; c=relaxed/simple;
	bh=H0cpMoAlzA4fuiCHmnGh4tkVdUhAka9omcG6nluWW14=;
	h=To:Subject:From:Message-Id:Date; b=hE4Ien91NgJy1jvjZAL9GQtEumjkBws2Y474dMVViG+JDaSK1FjNP+cuWOktnJVzJZu/U8zI0fHd5iJBwQsMNZiuIzVxIq6umpmucZvWC5Ok5RPlawO7kT7wP1eJPfEGMLpr2BzvZgS2qP6RaYqeM8VcczrT17+tF6pXqqcr0jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQ6q+s9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQ6q+s9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA332C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761603593;
	bh=H0cpMoAlzA4fuiCHmnGh4tkVdUhAka9omcG6nluWW14=;
	h=To:Subject:From:Date:From;
	b=gQ6q+s9r2lmC+bB2sFVpg/Qtg/qL/V6A5i1Hh6Zq9fUXS9XRoT+gFLLwzGpQsNUmH
	 8bD9oHvvvdK5kFu++n2O8gZRMtzAlQ85rELN3tg3ZBDdToa1zh4PE3ac4hzXJrFnrF
	 hUsvQ4Fnw9sOWhNF3U0lLi8sEWWjgmOLE3QysjMYH0fYbVin7EOTFxQU4Om1o5Zxzv
	 fqM/CnF56CzrK45ipl8RjbgC1T4emDw/VuVnrv2DVldN2lD5y2y6+BkiA5rZNLunwQ
	 a7wxskY4jqT3BvyyVErkZMC0KQG+bpXM4kE/E4SE32x63K2EQDHDoMz6nhbbY8uhhQ
	 ambCr6gtilIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EECCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160359359.8234.1789257606556476900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc50ec5cdff8f7ae4b53f3ff38e7d2d4675029f64a6595a453e34576caa6f5f
Date: Mon, 27 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761603593
