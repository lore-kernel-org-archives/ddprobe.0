Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7E8331EC0
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789312834; cv=none; b=G526Ae1EqWkrp8axeNEOfpY/m8ZuFCU6JMFi/lowjshN4hWxBb0oDeOM0I44Ar6yOg/KlkGjqVeP+VTcjlhww15xrBrjV+HCK6vk3lDrVNh0q16z36Lq3yJd7G+FXIWJp2k5zdWkv45/LLPWyii1tkJeOLfoPSL19wJUkJFXeI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789312834; c=relaxed/simple;
	bh=fJAU30shAfMgqZqz2GfwsCXkJIQSULNq3Z2Mqhg5A+Q=;
	h=To:Subject:From:Message-Id:Date; b=TTFJnwffKFX9QeZFnM+w/3b6+OsCQR/gK7WPvtwA4xje+wkmgpHinDAgp66l4BDRtyrcxVvNdS3bhvcbvYAAcItsZ/pdpQFA/8V6FNuGc2RLvhYjnBC3fTzxkyBwL0p1as2lvYrMAhrTu7Lc+17JNUF9T48cjyaOKmI4haewpzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQtAK94F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQtAK94F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEF1C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789312833;
	bh=fJAU30shAfMgqZqz2GfwsCXkJIQSULNq3Z2Mqhg5A+Q=;
	h=To:Subject:From:Date:From;
	b=EQtAK94F7P94fLyY+M3HxiUBCE+u7hBvHUER2O2IWQsOWmdKfS6lLRHmqO1Yf2vws
	 K64Ow2yRggqhUAPw9k31BvxSPczEOyMQa3Obz0JJJXHdhcBSkIrGnTS+gvT79MfNzi
	 iLJTLVZDrJtIYZ99sJc9VFpO1Wes540+s1sds3+RSkeQE7AwV/TCuPjGqqQPQeQshK
	 +xTEeBrVDPQOPc2iIs88daMC9C4RTYI+BrbGyZNvEg2Xaq2wRlP6I/FJHh+HoW4P5a
	 7NIaQX7bmqv7Ry1YqFnCc6iAB+EvoWYplidlaEXkVdEHQXR8/qR2kfImIWYX1EAD+5
	 fXYz3DuanH7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C8C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931283368.339.7606042196797603997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daa5bbd684bbc35077e3398a35f16e1a6d1ec7fd1526dea3e9f313741881528
Date: Sun, 13 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789312833
