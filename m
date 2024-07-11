Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CC54CE09
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720706243; cv=none; b=rliAdgltrH/hJEJb1jgQPMrATdaWUT1GrsdVqQU0sKq72OvpaQ2j4yHwgMOR3yMOmqA1+tMQHEWX9DV8l3GHGpon694OHc2kiA++KKWB9bGtWzpebNB8vcSgxoevZhOxvsSaw8M4M24Hom6ckdiLzgi43xm7+QNLkPTD+3HXsL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720706243; c=relaxed/simple;
	bh=E7TMQHOFitLuwuZELpEoALo64NHJu4kgtTh8/Z08zKM=;
	h=To:Subject:From:Message-Id:Date; b=Epp42yuf3WWzR38IWInJDb52mKkSNRrq1RQeFQR5cZsW/jE7NzNr2+1i6p0hv9sRvpN+UP3DaBF/rteuX0sqS+vRqLVaTqHfb2GDrcARoEKQizJp4gaT6lM1q7Xuq2WYNHOwoYYPYBH4U7XeAwaiI5Nn96lJ/0tQDVfhy6PrgtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+m+YMl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+m+YMl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 058FDC4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720706243;
	bh=E7TMQHOFitLuwuZELpEoALo64NHJu4kgtTh8/Z08zKM=;
	h=To:Subject:From:Date:From;
	b=E+m+YMl9j+eAjvnE/NJKvvxoAYiIrcDkp0CpxbfVXbUBdM4FuRINsxpGrYqbbz0Xo
	 3T9XufnLLaB6Bh/jFv0dUw01SmZts7bkza2hmXtAOOsS6iOV61QZ1xEwTndWMdmxuk
	 ILRgfb7LkQdOp7c+PZf57THCDld9YxowYlQ1OnazGOPpcLQk+hXP8E6Z6h6Jf63rbx
	 IAAxF52O42fUW1atDyq1C/R/89TamR4OdeRjyCAANoc4s3otpoD4Th8OGadZnjSFFr
	 toygYJrGqm+05JT+N3xKIgKJMD9K7xTXYPy+DnA9XtY9DV/5XbKfgCp+BKbBXOTFAr
	 F/aybKFNSfHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC806C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070624282.8461.97151609537268954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac0121495a3d584b9a99795abe502a05a8616608d768c75cef40b03285f4107
Date: Thu, 11 Jul 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720706242
