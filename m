Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8B1C7005
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745990394; cv=none; b=PsKknTTKssczY29A4JQMeBFzUZ7zKbHgyaRyKe5bOLj+TYlnVUdHIGMvmjQpNOPxU2s4J+WhibGoK3+v6TAJGxqVPhOyQzC0FG+fpA8wqldmVcRxedot0I9nAVexkehPYiCx4VYv1oGqpnZcDi/FqMvieSuY/jfhBq58LKK/iZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745990394; c=relaxed/simple;
	bh=iADZJeHwQQpPvfuI2Vf9CsXy64v6q/AMp3YT7V+O168=;
	h=To:Subject:From:Message-Id:Date; b=NbHT8A0XRjdWDj2uofi9WdujE2iHWPrC0YnuTUR6Ay+NIDxcsJo/eSFejVMsRxjNtj772j9sayHg7Ik64KFfAhwDZwoICpaUa0iGwlyKRiaRl5ZUcCcKyBII64ag+lhNCo1H6wXO3NdYs6FtvLUYVqIvx4wXaq2npegtswcyZa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV6oJ/lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV6oJ/lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D33C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745990393;
	bh=iADZJeHwQQpPvfuI2Vf9CsXy64v6q/AMp3YT7V+O168=;
	h=To:Subject:From:Date:From;
	b=BV6oJ/lgPqXzP+txEFPRrkX/kQ7bR0KYQPDgsgU0HvMthezrVTjxw+jZRLPAPO4Wu
	 I0ISVVekHdfumWdYpjP0NA8BKk5mfp5i1CHpTg9nXv3enrvues4Gh3iTMx6rjVqW71
	 1I7+OhMZGMl5gf0l94CgRenV/kGSyVXxK1r4m238aBjceNMFa4Xef9F0tsZYVwYFNK
	 4UopKXw0ww5G5Inb3M+aUs02fKFT8v42ja3vJqrfyRJpn/1l4IrHVGflCSHWgz3ejl
	 zotpcORySrVrfeoBM8RRUkzHSpu+qs7SEnvQyq26Cj1bg8hbGGQn3ZnmXfAZofP6R7
	 jyIwjtEEShAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F926C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599039357.23951.15987867741653826243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4277ed88fa51b13e0d4cca3986e0ed1d058782d942c0005a8919a0359a8e572
Date: Wed, 30 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745990393
