Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5980E342CB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770827694; cv=none; b=QnbdJSvwSv+TaDqraSxL7WLhDxHIZTggoObKMgYLsOmyfIbhSbqX/ehJaIsPPNSMQmEm7iDibndQRdEIZdcEthfD+dTumqk1QT88Se7qAiIkMXSWpgO7k4kAjizgRzW1SQAJH5XBVQiQCRFcMYbDaig/OHKFOMt2sc3OpYtN9fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770827694; c=relaxed/simple;
	bh=GPwsKsEobse+iWMhNaqmNpLOn/bMxY6l1F86tzC3f7U=;
	h=To:Subject:From:Message-Id:Date; b=hZzQODy5qDsZ/LkYfNFGiLye6lT9QE+g7LDqH2vdHvYIfdnpybJSl3XYBvtttkcxjG+u0V+kP+7jbY1OJrnGxOJ9tYbjft1F93moTVC68PtfFEACKkZmqakzPMY0wg05pd/yZUhZFqytYsqb0qUDBZZmRwsHCjarXIEoHItvoww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2FEQ5Yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2FEQ5Yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D550CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770827693;
	bh=GPwsKsEobse+iWMhNaqmNpLOn/bMxY6l1F86tzC3f7U=;
	h=To:Subject:From:Date:From;
	b=F2FEQ5YlC6BsHT/TOGDiocWfP6Gwm5yGeQz0oVgWxQXJ+wsHPHvVFEsjiXRpOM6Rh
	 qMQN8Zg37yLEG1seuGUilMO+yt1vefDCD+jTk8q84EHYt5oitQxgzI3v9+sEn+7N8y
	 qfsd8dyFLuPn1x98xawAx0d/y0089V+lt6i+KaDSqLBEHabjYzFhJqdrnPZFmTI2mp
	 z0leHybD5UpnhOYZg347ngQXQzraWAor7pN7XPk7HZyU1e7ya6K4sqglWquRDCzpB5
	 ExRBKebsBN92PCfgdd+r98TVuAR3rgwK1J0ZOpewyLmOGH6ZDMbbxfLPtYhOIps8fk
	 sN8cdyT6ZdBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FEECD6C5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082769368.26733.13727751266506089510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4d6b715683313073a23946e0fc35daa7c08bbade0e977a7d79c90efc08126c
Date: Wed, 11 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770827693
