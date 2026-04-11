Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A1B223336
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775928454; cv=none; b=C907kGk2qSLjREG6/j8QpvoN6iECcnwgILY6cmFvy1IzoodiKBdipRESOulgTIKA0FmwdrrG6xOnskeOLBLsFISNmSLlJaYqtwaavts7FiEcIqC6WnZVBibgW+Ac4T/L+JoA7Fkt6OmSupoUFt6qIgzoyK1lhYxBNpcrumSwbLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775928454; c=relaxed/simple;
	bh=BhO9L6uN7uBF0crIyDNBr8WDxieYC+hxdDtIbXSi9OU=;
	h=To:Subject:From:Message-Id:Date; b=lsJDwKp30oaeALlhunuRbKpSFIXPAEIkHUqW6zHdmEVwB1n1OMeEDnUd541lZvioAlSg1GYYrG7wtQpEtgbwXRxsyXCSJ1MnUueChSTZUPMm7S46mefKhHiW9z2wV4Z1bstAwyLKCOR06aM3O9hQN/1ROpt+/A5FFrt3KYgCzyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys2MFCJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys2MFCJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE42C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775928453;
	bh=BhO9L6uN7uBF0crIyDNBr8WDxieYC+hxdDtIbXSi9OU=;
	h=To:Subject:From:Date:From;
	b=Ys2MFCJA4XNknl1B/9t7QRrDpJoA8Kerft9WldNZdoW2xATLyZJZralEarDv5j8L9
	 ozm70oGG2W+lOIcPUPe86cVM0lx+5+cVnQyCRAtH2GeIUoAhP8zKOlYjnOtV8ytfJg
	 IWnRPy7QSUNDjFn4g7+kgguXowzvlolEqZQoiPa6iwp8FwcJWr1WZlH6vXqtRIyxNW
	 pD/iqW6y24iGKLr5hd2q4hSyYnmhOKOZEm0RubLd4bCdbYX8goSMTFBH1gx4b/7iQ/
	 52O35umrkOhAT6LjEpICC9ZRaVkAcC9sYrlavjoaslHvsLV8CpPuuIs1FlVX0ii8iO
	 wF4PnVCcjHYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC071F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592845369.11552.15894329715986122597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17be4939eeecdc693e001e3c82e12ad16f6c70185b2765bed3cb41ffb8aa4f51
Date: Sat, 11 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775928453
