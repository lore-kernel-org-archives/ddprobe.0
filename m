Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A21225D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717567583; cv=none; b=Bq09kTwKLpkx5BHUA2MLT4h/v+qvuDOpWo+tf4AFxe4DZqY93jszU2QJVBTPVikqH0xlVHTq3FBTnoCyACvXisvR/doJT1W+BE+4/4IjN+m/D8OeeSQfnW7TP5JBnMYTom2G++XdVncdqyRjIJqELkXfgJh//Lo5MyQV/0fTZIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717567583; c=relaxed/simple;
	bh=Qpsh50EjFZzc5k5ft/GHuPkVqFAwnm+vWwaFTJbQYW4=;
	h=To:Subject:From:Message-Id:Date; b=kFxMma9g+7kv5IrVNjnhQr56zv//ggQnDjwNeIkl22J8sWzs/qsUWxbeV5m+Gx7D0qACNhDOuzbfSsjTFLbelAV2DVZDrjWw+fz3bY/V+T8HH3l5eXr0O58hf8Mq6Iv3WN5d4Rp+MK2z6w+Mgwm+/eP8RhKuoiSOsG/K2vj1Lxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URjfrO9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URjfrO9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCDBC32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717567582;
	bh=Qpsh50EjFZzc5k5ft/GHuPkVqFAwnm+vWwaFTJbQYW4=;
	h=To:Subject:From:Date:From;
	b=URjfrO9TRbO0bIggZ2VN+qlOJpAWmx1IU53MHcSKT1DQAvFwylULY0e74WNzLEzJE
	 5+Kc9r+eeJF6pDLnVqznGUAdV2g0rtmb7KYCdZIF43rSVhl2JPZYJlS7yU3kVv83H/
	 XYLpJBjlvhyDDaLdspUM0fsl2HyyodFkAXVoorcI2n8agNmR1kh3BA6p7etXJNkMv9
	 5fpsB9c1WyXaoGQqIuk9/f2QTV7uc4atmLcJw6GZ0RW/yYems+k721qbxUjy20Wjp4
	 Ws1Za1BmgaU7UZdzniagrcuAGMI9BcxPHYXv4NADLyYbMZlQFf7ATFBHsRTzK/JxfL
	 FxFKpWPUlWxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB116C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756758275.27984.8409416908505184306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9287d5eadd4e816591371b3b8f6129238a947e40f18c12264d7bf85c8a02f8a5
Date: Wed, 05 Jun 2024 06:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717567582
