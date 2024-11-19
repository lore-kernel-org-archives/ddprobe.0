Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F1F40BE0
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732057554; cv=none; b=f4FVb7hZ1Lz6JbmwY25xv4qfzK5tm4ekF3Wvw2wd3gdZHb2gLw8WQ7MxNIJKZ/6UMMbXkh20BNgTvQ1LwOwCFxoM4SOYBh4ZnY6BueWHYsH2aZmot1njb0boBV7/xxdSKmBsu1KzvZXUBkllaxj0NC/LZmpXrPrqsHeODGbhQgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732057554; c=relaxed/simple;
	bh=dESFV+XGIBnqgeg9xQ9gQq0/5Fps8JoVEtHw8Lh6hfY=;
	h=To:Subject:From:Message-Id:Date; b=kLkK2oSFGBdS/9Nke/OqT1i2ZmJo2BMpj65W2E+Y1V6qhdXfo7HLHqoU7MXMOxlbsCELd01heiFdZFxRKqqr9jRM+DXdJcKQ5y44r+lLBXf+4hq2F76UpeGj4g8w7/Y+0ag8S+5scMuX0d+hMtmY06HFGlSDzFPDsr96pMNvZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cby8y8WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cby8y8WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAB8C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732057553;
	bh=dESFV+XGIBnqgeg9xQ9gQq0/5Fps8JoVEtHw8Lh6hfY=;
	h=To:Subject:From:Date:From;
	b=cby8y8WErChYebeC2NG5T4FgIiWIDCZodAL1D/hFTiqRT9t335EILOnVGt/Qemuet
	 16O0Qy2aEsuDBM4RB0yU1E5KeHfUt00syZwsMXF9XSyfrFa2vYI/O8b+ESX7MjPsQT
	 cslNzBfyjDkgy6RLpU5GeNHY5B6W6f5iefXdrdkJ1ndpJAF7lLpfnbSf4LjnQIDQAo
	 jeEJ55hopbVOlTLJtUSzu3zvKuW6DLWBOWUsAxwthCb/nhgudCXTec6mZcdteT1ZlH
	 2EQ25SuRYhpirxDzHxd138F/Pq8O33O6eTdl75KX7TQ/PI3/z20z609WIzuJC/pnXq
	 WstOIWXPiJs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96872D6C2AF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205755360.2377.17742614841788584152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c6c27b10e8f955c1def80b9e89d36a0288f8b0983d489d14476b11b090459b1
Date: Tue, 19 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732057553
