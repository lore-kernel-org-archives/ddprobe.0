Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB6F1C693
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720219523; cv=none; b=jJj7yTeVJVRBTeMLgvHEYGbr2dXdwWfzBQRd5VPBIubVm2jrUIybrcah4WkNWvuCU9+exLEJlNxQQPAbhREKvfpFgeKMi93Ch3UcH66B+RPAMkz90cXkXzManxgfQNMzhiOWaF9XK76uqvBljFrjwBKncdLj+0uR3QFcWx4oGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720219523; c=relaxed/simple;
	bh=4xyLd4Bt6FP5Qcf3dlCg7Pe1VJv9GD2Sxd+46PH03Gg=;
	h=To:Subject:From:Message-Id:Date; b=Pg3hA2VzmlsuA9TnCpDCeet0zoHwy4JxL8TBgvM0aTMRyU2Ozgq96DzmlJUJI8ccFYt6sRguQ3SfscxxzmE/A8bJpzA0JclA9+Ct/4d+/roT1BMCn/iHGx0SWvCVw78svZWz9+zSmGjRmnLgmje9+eUsdJKj1iYg2cOECtFlXmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWHune+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWHune+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EE8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720219522;
	bh=4xyLd4Bt6FP5Qcf3dlCg7Pe1VJv9GD2Sxd+46PH03Gg=;
	h=To:Subject:From:Date:From;
	b=HWHune+M8z3k9raroUwNOq9u4h3mavh6skSN6oc6cAZ9KRUIdlFNshcc1QF32HP17
	 CfbMvhO4GWY2TjBj/wiUtUpwxEzvKofbkiqqfWVH8TSAE7xyS9kw7Nliv0ArY5ADZ4
	 t9deIRMUoAwkXv4zo3bF/hWBMO1lPz01c/uRC6G0sbzYtyhplQGor3KgkzcswC/zdm
	 USHVcFgCa3ol/7bbmza3lTLMPM48yb9FLyWS1rjRFH4RqTMbvqwIy7HL5LwA1yXGqc
	 gIZn4dX9F7V2meOBkUaQ2u9Ib0AjBdiFCGTguKeF4b9vmsIN14ABC0u3uK2IBWu72L
	 O0g68mVz2U9Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C486FC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021952277.8821.15930827749084534352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5da814d78fba2001e84c222d69ac257ff1d846da34e140373e1d33154a5dc29
Date: Fri, 05 Jul 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720219522
