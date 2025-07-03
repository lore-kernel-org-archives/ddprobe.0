Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C25726562D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751585394; cv=none; b=SmoIOT0fXTMWWx5CQAORfP4L94w5bBnBMKthjsvUEEVqfV+VfnjWujQUqaBhcVmZTY1Yrz7LtebZyFeg7AGJv8ybP14FWhQHsYvIn6uoU2kRJepJo4/ikM3Lx5zp84nLi/uXWz+HwVdHrE4QeeSzNTbmP/F/aBsPV/DpUFRGBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751585394; c=relaxed/simple;
	bh=YMpAo8eotr6zu+HF/Xl/dTjeFJkzUEccuRiPs/N03qA=;
	h=To:Subject:From:Message-Id:Date; b=GiMqOVHZ9RS1YdZBCML2yeN6p5BDNCt392LCmevfQyVGFQAwVuJyOrH1OCTooMbKJKlmo3FoIbGHWNenUa6ThRna1rblX5fyfG1e/0dZmK3DwGPDZtjLdMPzt6dU+udz1fnXFd9WyCocBUcPKvTNlelfVoUIlTRu9qYjMPD3XoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZsOx+ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZsOx+ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751585393;
	bh=YMpAo8eotr6zu+HF/Xl/dTjeFJkzUEccuRiPs/N03qA=;
	h=To:Subject:From:Date:From;
	b=mZsOx+ZDqeAvOkSgINB1Q0wBaq2GqjeOuveQd+KXbSt4/sSOjgIS94u69BSg6CrH3
	 SO9jWheavkiv4iT/6xI7xp1L76ou8dvkUuTUQiQOt+DYOpTfn4uO0yAZavxfNaCERC
	 5DrrSfcnzKbbVDgbY14rATmNDtoGUwZOZSM8M6AsnXzpr9jY+rMcJpK1tQRja04PCK
	 TZyontNf+d2MsAE8nduets9wRGIt50NmbxFfovYrOHJcV1kgZMyzegpth2pDa/FnhQ
	 yEl7EF1hKfUNRSxzLqFncXHtW7j3HBVlQVu5Iz5r1nGNCttOepHfOayjzNoafIHBwz
	 HllAQ7EOO4EBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF09C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158539357.24849.5099301389534983231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831224616d6560215feb13c71a3d97239165061631f11437a3523791b76210c1
Date: Thu, 03 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751585393
