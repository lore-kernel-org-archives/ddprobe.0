Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC3E38DD9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719876323; cv=none; b=IHMJ7lcAf3hBdZ2HM8SeFvtfLkPOpDx4uoiuNpPGpK1pK0/eMXBSUs85c7S+KXOZ4oLurRMLXjoookOcQ4CWDNGgu5OB5S9FInQa8i+oANUIDtnbL9X5LY/jTh2P84wor9iblKFrqTsMwjUkQPMlfFwJ7eUHrkTATT1R0/Uwx+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719876323; c=relaxed/simple;
	bh=Xi4Zzdo7/mo3DySnDNcQvrISgRK3NayKz16PwyU4r3c=;
	h=To:Subject:From:Message-Id:Date; b=blhERwsK46ow2ZAJPnorx2IIEoSJnqcso+YpvSWsg/QCJGtDfOfX9LpEwDkIQJ0XjQEvOS7r0/OopB+O+cxlrCLd99J6uXCLo3EQQNBcbouCWopvgageYNNetVr5Bdyobjz0bcbu9KbYfDUoHQspxKuSDPlp3gg7Br+wWzzo210=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giWwtSaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giWwtSaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8B8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719876323;
	bh=Xi4Zzdo7/mo3DySnDNcQvrISgRK3NayKz16PwyU4r3c=;
	h=To:Subject:From:Date:From;
	b=giWwtSaMxxlcaweTki7Obvy96fYQ0L9VaYSmZvmiUDadUod63uUi8lQzXQ1j/aDId
	 p+CZAAWL9TEta+oGvlaCEDbWHsD+IxvGpnfvkja4uvPSpLY5yLAz9Y973/8cSbdA0P
	 5TIZ/9fFSDfqkCzO98kcRY4NN33v2Bhm1hn6RgXK52KsAg+YlrF8ykxCcE0SOwxswD
	 dBYLL2kUCeJb2baiS/2doH74wBwlHFje3WWF+XmpludsoPA6PhkjwX2RwETCrCVVAJ
	 HlfNZ0tJpiG1lf7cvALZHJRlwjKTuxxnL1BR5e0n0bo95VJnMXYFP0q854yTE+p5U8
	 XDH+6Ac/c3Nbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3289C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987632282.11200.14787697859858646716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82384d2e848a67cd604981a89f04b8075d004bf65e4105b551fd2b2fffa517b7
Date: Mon, 01 Jul 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719876322
