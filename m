Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174452874FB
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756198194; cv=none; b=IprwWnbm70E2WtIinV8FGYm/as+9RFvxY3V5K1yGU0P0FMDpOrlqBp02cZUiYttaSdOTz4xewoCbf8BCAkQQwpEQWEtUlnrg/h2QVAZerBw/eqB1U/wtbJsMGcnlMzsE5Um/uTamCo5q+ZPw3DjXDPkOCpGkwe7/NFlQp3iW9nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756198194; c=relaxed/simple;
	bh=uu+IPBAQysmlKT9cn3lnXAriqrYzrZg1RXA7VQvcRqs=;
	h=To:Subject:From:Message-Id:Date; b=RTrOtl67tAwbzzhFpvac2OSJxKbJFXw5+spmFjCQ5FMcNeK5pz/QwSnJ7A18+SBY+dtkGKxUWGaJvmGdPxg2NtiqhXiGdBNM+bcmmwnaOTG4fFmqRa3hoC4I6POUqlroA2t0nBiVNtYOR0X1tYZOfaaki0e7hderorwYETtMR2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUfRDO06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUfRDO06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F05C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756198193;
	bh=uu+IPBAQysmlKT9cn3lnXAriqrYzrZg1RXA7VQvcRqs=;
	h=To:Subject:From:Date:From;
	b=QUfRDO06OERfNHCeKXH14JGNAN/BH8/eNPtud1iOI/4XqurS/1ttmDdN6N76PalbZ
	 ZxI9zqLcLNZskPPi9aFmRfPAOapes8Fd6OnDUFwtozl23POeGtxzJUEGmjD4JpO4LY
	 Y/w9wd8KhJB34J+eibhUODd6Z0d/Fk+Z90/MntO8qxALUw75DcGj4bZoBkQ2JDsbYC
	 u3DRw361hg6dqCXz+9DM11x6VUSez+shKTE6v2fn9m8u+UsK4IcRF9oRoidb4RclCZ
	 7qj/pODyWR+zIq/cWQsHBUIFjl7NkNqaNS1abz5L72XYj+pVuO7FqTO3025OxvucVh
	 7m1dvcyy1AFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE5CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619819357.11731.14160305252015967130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e94f7cb2f9073eb845ea374351a4429a7233c03a32b2ad8a1c5ed178d868c08
Date: Tue, 26 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756198193
