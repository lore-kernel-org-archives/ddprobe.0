Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208BB1ADC97
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769403834; cv=none; b=qIf++psl9b1wVTjNKTmT7lpz0gfbxTEm9O6/7z8CEeVLIi8gUOmDaVc+BUlN8lj1/q8maqbuTUd1WlNLGCWidxmFwAfOjyKpWqMiJ4NO/DTWBAd1mryt6GA8EKPWg40Mql7+Dxppo/H0lv1Jkppgn8BToxvt+rnHU+fQY574rTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769403834; c=relaxed/simple;
	bh=3CyLWNqYW6Jc4Obpo2qnw2cD1zQaDG4EK3bj0pvya78=;
	h=To:Subject:From:Message-Id:Date; b=Gm+VNyvHD1XjexrlsNg8F+uyVkI4ky1ntPLhj8FkadUIVGGSsjlPKhUUn0aPB2JD0enWQX7lqT24qFUUOaWQIeMlIdPvQ5q+ZHJ35cbuOvWCyQkbn2n2HJ3l0nPOgbFh/cN/cyJfhEPkmmTXVKCG0v1HRH4Np5zemmpDLxD3We0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avQ0ddKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avQ0ddKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA5C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769403833;
	bh=3CyLWNqYW6Jc4Obpo2qnw2cD1zQaDG4EK3bj0pvya78=;
	h=To:Subject:From:Date:From;
	b=avQ0ddKp+8+raVvHj3y6/q9/5LYdTIZm9qw15+6wupDSzt3et32oe9Eubbz/0mVYT
	 LlzaeXHxKHCnC2ix58OvnpK28ItCx+6wXpClu5cGf6F96zoqazAvSt66y0bm5kdMoM
	 YuXGMWy1rCrnPi7KYOD0S5/b6cBqOfPK4XFGl7ptuOK6vQEOb18lmf8IOpBI/u4APW
	 4T2oZDYhKZvPWwURjH3sC/u1vti0Ezyz/p5kNMc+9fSdn/0IgUt+fUhMIBWRxpu012
	 J1ZkKEC9vI0cFKjEFeJMm14wFXbRo7dYmnRGwyObqkUrn/f+u7uvpTkFf1sx59OIOI
	 DmfejC+zyY04g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B9C88E47
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940383358.519.7838484402869170565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af85b81fb2d771e3fab2e6209287817b84df38cc264ab2fde3fc6de5b09dba0
Date: Mon, 26 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769403833
