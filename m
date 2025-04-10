Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472C81E98E3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744298394; cv=none; b=B4jQpW7nT/HbSMZvEIW3nxJ3WJQeiS6gp0HjYI3VDTKeQinfdvNLoOwzgyonXDFzOXtJbFGjfsNLQ03SW03V/k4IDE1/sHGs2Mk626HwNmJpB0JB2McX8InVzVnk3LwF6zbDT4ncctUJRAAimq+LIThducE2HcL2WFKJv/g55Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744298394; c=relaxed/simple;
	bh=OYrjstV5ji/quGzcnL6BHVOJRdNBZx1pvX8flLSXvSE=;
	h=To:Subject:From:Message-Id:Date; b=rpPfG7TRZP2hWdD1qf33c+UfeQq/fKJ97x/+Ak3yVR2WRZn3vM5HRobcyIlST6wsqsDCp0dAvXhBG9cAjHceluaUkD1q6eRi+HwHVzxOr05+DmlCovOZLCzRCXSSUuV3fa101KzfS6swLNTaoKMluQkjLvoq6Sboyin+KnJRNR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC6Fx2VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC6Fx2VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744298393;
	bh=OYrjstV5ji/quGzcnL6BHVOJRdNBZx1pvX8flLSXvSE=;
	h=To:Subject:From:Date:From;
	b=tC6Fx2VGxwwoJQT99C3gx40lFNcb6QucbIHCX1uu1P9Ukp1Ep60oWyEe7c8RejaUt
	 1mueIOhdDgl8xycFEwwJH/RLcPwelVTYdlKg4hOdT3rWT64nJx2KwJ11eIHM501JOX
	 ZIN95QndEMKfh1oOQJR8amrN7uSwsiD3C3xuSQG/WKPv6/AbikcJNNTz6DBQ/azbPm
	 wWOkYd+rDBRJz/x/0jYAiu29mgi+HDBicjYl9prC8Bua9bfrSFEOwIfcKcdnQ/1NYh
	 ut/9PyWACh8VV7AUDrz3kfd/5fcAU8Jg0UemTMRLMJ4/DYUS4NItA2PpM8EOnoNEQi
	 0/6C6rx3BJtTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC2C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174429839362.5693.10261937865557878726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a9c49267e3330b1ba56e006d60a04b64972edb33a40d7a256f5732225cc813
Date: Thu, 10 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744298393
