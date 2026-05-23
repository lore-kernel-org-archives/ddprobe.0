Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35C38A717
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779537754; cv=none; b=eXEIGmD+NlCFmqFN3uOrm+vGkoumYH5Rbi7DMpGyugRIMddK22mjWLo48oXqEBkRlm/pJa5e8jG1Ctlv9IqVhx1QDcTX9Bym3Oq3N3Lkkvoe847wwqABn7U99exdePH5GgBomD7fCQ4A9wEPIV5/IULnrKnQ8DOz9Vw99GpEqQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779537754; c=relaxed/simple;
	bh=zNpWQ4mTIV2RULWywIkB8Hsx5hvkc++FsdIyIh/Xt0c=;
	h=To:Subject:From:Message-Id:Date; b=Ch8CMlX9QxGSdvwVO4XDFKGft/+TEdZS5CvXnmwYIyQPF0KX4yTgMkniU0pM28KDRMfTZvxr44kBbgB4z5kaI4mkqX1NELBTKyS1SnRKfQ5r+tpmo8HZLr5vwxXY740tGwvVA+Mrsk9T9+1vkToTSVcipdVY4ZMOiWPPqeuvdGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhU9p/bV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhU9p/bV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6237C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779537753;
	bh=zNpWQ4mTIV2RULWywIkB8Hsx5hvkc++FsdIyIh/Xt0c=;
	h=To:Subject:From:Date:From;
	b=PhU9p/bVHKzDv8LghoiT3zGmWnR88fnF596SovmGN7F4lkyKnnOC2PeqDfgenjeXE
	 TaRjP9Fy1LQ47pgG+lWjq1BFvoRTTPdFrs0TjVq8CL+JJSn5Po0cwMpZeey5+VNK+U
	 wu1hsssfF+EFwBQa4sdQduwpk1/XG0LuzyE1F5MH+k+n416Fb3pv0y9Fz+w4Qv5hz1
	 kt6u/hK/aGQHZiWTB/riWbGtDDrqC6H12vmcBCDwrM2vUfqC9t2VROWp3QUgRgHc8y
	 nK7d8957zzhEohUFiib4/EGGauOQgG7N7SSDkZfaWr0oRnaNvd4w2hZgUOKxtnqrhP
	 38pb5pyehs1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF53CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953775368.21491.6806835934731554990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe2f24109df627906b20acab576bb5ebe535a4f85c9822cce1a23aae36dcb93
Date: Sat, 23 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779537753
