Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554683B14D1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788101434; cv=none; b=JHobvDbXNuozC/nS22urd217LnEKt56ypfPNFm9PA9IrxIYSAFffbL23m7b6iP52Sn5QpmT54RgaUXgm/X+dea3amKMBjBVGcTKS8voNBX539+jvAmNLcIB9j5w6WLGIwwSlLN3K/j+EnTFqGkd7HnQKcmH/KkRsNcMNgrzqtGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788101434; c=relaxed/simple;
	bh=WaqZmXcfwpaI2PRQEwjYljJ6TNskWkp9+v90571UXng=;
	h=To:Subject:From:Message-Id:Date; b=ne3mNqczx84rCD10+JQX6VX2G868H8tEZyHkYsowofzSxB9AB4xxV7dc9U0Bwel7BZFf9zpe6tbNL+WNTg8GF9n6P+SPnjJ2eHMSucEiA4xZBMIr945vYiaN5EfJMRYtHfOB780bK49cPdrjvBpauvC90QBHHM5sBGDIl/OTZUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTXo7wDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTXo7wDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7126C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788101433;
	bh=WaqZmXcfwpaI2PRQEwjYljJ6TNskWkp9+v90571UXng=;
	h=To:Subject:From:Date:From;
	b=gTXo7wDbyQIP3QU6/0Ugi7k75m++SFHS0U8m4T2ZW4hKMS24BUAd+Ll1fYW68FCR8
	 28Nhje47n60UsqjvSCIKWZYyJFUvsuP0W1Ogpea8rL+5/fJJVctQeuOpyv2iU4LFn+
	 e+Yo1jMsu3e2cZgUQETHH24+SXo4BvB480HV3FXlD9Otxq7OngNB9JXNDVMf/ormyG
	 proHu1CPHY/5e7xydn0y8lIcDNxTnT2kTuBgHDusVjwpVTocY6dafMEv0Ug5zG2Ck7
	 fMhJvOD1pEA88a19nNCGtrgOZmSR6RVznzlledVg13Rpy6VbXNg7qC7K8RLzY3f1XN
	 TNdleUftxFCbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3130C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810143369.25262.7369918541831448818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d758c432f2fa5020ae59ab66db451e2bf7cb604e1fb4a601297f78fd0657d5fc
Date: Sun, 30 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788101433
