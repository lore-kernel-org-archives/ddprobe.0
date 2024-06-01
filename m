Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780841C6BD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717280723; cv=none; b=VvBpm40iuTK1bFIDqWsMYZ1vn5/4CISo+5pBG4pYG7ys79yTFaotVds1Mte56vXp5YQD7/BPleqcxAXQctYPX1852qnqeB7VBHSyVGE56Fatw7s2nWqjeaSFwetlD79Mk4n7FkQIeb+pN6AmX2Jtjk/0qgo2AhRKX0fsX67enRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717280723; c=relaxed/simple;
	bh=JznuHIdq/fvKSg2ooXNwegTdPqGXoED5AXn7EXlg3zE=;
	h=To:Subject:From:Message-Id:Date; b=tYZy52Tmu9IPewRtaRbahPlDIK8+x82ghGb36HnstIQjB0hjMBlDMwTaNyPGIfTvO59hlzJ755dGBpn2QIh1nZhnbLWlTx6u4Ej2m77//cYBtgXE41IUS/OE+gSCkLY0jHhGqMy2kOCiG72dmL9EIuZ+YrCfn15SHONPNLTf1L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEMifu1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEMifu1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7735C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717280722;
	bh=JznuHIdq/fvKSg2ooXNwegTdPqGXoED5AXn7EXlg3zE=;
	h=To:Subject:From:Date:From;
	b=KEMifu1HsNLlbGx7BoMnEraiXtNPtHi+sYhsGg72eD3Kk2matCYKYWGnshIzWvfmP
	 OpnD32RYAzrSO+9BMKa2dnTK/y6+KAdJeCkA6CZ+AIa9HTNW/XoLCu0GfrnBU06m8q
	 pPPzRxpzxl9PCFrKLM0msmYTq0DX/OCT3fwPpl9S4XXYhRbH7hPEKc07leEi2ixo5Y
	 Civ/Dj/4OgbA3IWnT2+w3GI9BpN/Y6LTH9uKbWSwHpgn9vjR2Y352CBx7DYb09diSN
	 7urzfjJj7oL7PWEqNjrcJhPkJfm3MCBGfnN1eX3Lgh7D/WksUj5Esdt1NppX+MXicR
	 Lw4Zm1NVI1upA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE882C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728072280.8588.7407442137175580601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e54a8ec776292340ead2e07f909bf8ffbbb975ae9ccbc32646030b6ed9b53ab
Date: Sat, 01 Jun 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717280722
