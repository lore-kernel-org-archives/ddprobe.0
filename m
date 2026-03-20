Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0905F34572B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773990294; cv=none; b=ehD9SnramMFt1h+oqEKYGHU9PCKxAACYzZG2x79u0zqi7SV9za+wprdTPIVo95i1pcj45jd+tviAuBSJWYeVvEoKsY9Q6vIA207wBfwOmakyjCNWIFu84IFWSKbOaOzeJ1GdJm6v4CHa1ppTqWz5T3igcWyqysE3GBeVebjr1IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773990294; c=relaxed/simple;
	bh=QQi8uFXsnK7I901sEmRBDFFJVVQGjffurHcT6BK7r4E=;
	h=To:Subject:From:Message-Id:Date; b=spgRgQ5dJ47XCh+0vn7FXxVnpwq510mR9zTOtmL701a6GX1JSwjBscJGEjsVxayqfYc2kId8KOf8roWk5IdnzWGk3Ozhclx7X07gX3rJ7NoSS/bFTqXyMy0hJk2EQO1xU8xvrmCorcNpfETHOrDdXbdRc5Bn+ANbT93SRXvnwuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTRx4LhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTRx4LhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81ADC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773990293;
	bh=QQi8uFXsnK7I901sEmRBDFFJVVQGjffurHcT6BK7r4E=;
	h=To:Subject:From:Date:From;
	b=HTRx4LhBCJPe4yJW5xTZ1KdvaX2ioD7IfxYoWd4au9v1xV+5DrOcbS5icW1zG4Shu
	 FpIKfpRG/6T1GJgBH0N6bcfHOkx0FTSXVuWE9CMIbvPw/MMvW6ChK4lG8FrL1zYZ1+
	 IlGD9b1nu3WyE62rXSoOGR9Xy5dxSG9fD0edHO9MGswf2OrtRpAGvmafv6yd2KhSzB
	 i28UZ2q9d+Wknzlj4d2WCyHNCDTiZcWa7fJ9teE0cVzZc8dHEFsygxfU/KiloS7ki3
	 vwTYZZm980Vuk3Ltd+aMEeSCXE+HxW3NiMC7UlA1Kl+cOdQywHo6JniNeF8sWg6WHW
	 xtY4q8Hh/ktiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1B109317C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399029357.28265.10422851342023716738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ea28e41d96c0b2594024007ab8cb9e8eea529e39056241078977a7695c8651
Date: Fri, 20 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773990293
