Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D90F1E492A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760759994; cv=none; b=ckpPLhM5h4UM53rETnR53tJItLhwC2KBvxl61jKlrPxlYUBdNJS5x/5YSFwyt4P65uJ+zjCEX+9RvIDycxXhiInfi31rFfI+tSu/qu5GUNLmDt7ZtZxWE9o582hznZp3DmZVQIqwpPWduxS6Y94/0zahUH3vJiGoPZNlmaq3QTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760759994; c=relaxed/simple;
	bh=QnCJxbTSjdXffV6oDUQUrnbwRfsDEnLM0gXNzzcrSSU=;
	h=To:Subject:From:Message-Id:Date; b=JMzw0crHHby4/FC9jpjsIdHnl4ZCiBzqeCBbr/arwFisZS5svPYJDpRuMdFByYXXJpYvhOsuWbUs9A04qT8/HXvAW6zTe7kP96rb4n9+dWLAafNjDoj+/QSSf5TchMSXvzLYUnxzi+zINDAidzEQyGf6z6Ecr0DGUnSK7RubwwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr4hnCRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr4hnCRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5C0C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760759993;
	bh=QnCJxbTSjdXffV6oDUQUrnbwRfsDEnLM0gXNzzcrSSU=;
	h=To:Subject:From:Date:From;
	b=Cr4hnCRh6M02rQf65zY5H0HW31CUtzHC09u7jACWdt1d8nlYJjh01sXPz0O6CgGhZ
	 RGAw0rUzOMiZUNqGinL/bt2BsWWd/yD8/uGBYfUYV6DbNON0eIRV/Qyn8ZTjcrtm1+
	 ELghV1QIknRHh8MiYOYvnoWC02GWuRhDxMlpuOACGY/kMITFHEbCHhvOqkfvvaVgvI
	 tn3iw6Hwh6KQslaVjJ9pMm0/qA+7sFpkzrj90KseFXZub0cD21aPh3pfcvTQ3kfaFf
	 ons96y1VZIgDGQbwCJXdZzNRq/Tb4p4YHJoUm7HiWh54kQoJyodf/HWIvYthKUHqV4
	 GoeHUbPe/FdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C0CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075999357.20679.4865833376699635026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbad9620e26f134fa6b0dc32bb9981d54e9a37dd9503dbc6b5375bf066605b7
Date: Sat, 18 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760759993
