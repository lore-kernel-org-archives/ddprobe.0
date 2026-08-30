Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3352ED84A
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788075034; cv=none; b=of9XgkHzwuJCfBtVOyx2kYiUWtdO0wmNpzYlTE7Cz4HqfnxlRKsOWwaBeY59ahLR2OwMvHVAshjId7UmaQtbZgGmsArf5udQvtZBiaevZXZ7MlGQw/5CfzFgClQuahe3VTSVdSoDSKEOPduHtq8mOCsk6XZhlOcmyh1MnYKy33E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788075034; c=relaxed/simple;
	bh=ouPZJ6B55Bpk2TvDVcEuwGyC8jvdSysWmq9PqkbWDT4=;
	h=To:Subject:From:Message-Id:Date; b=Xi0fqjEq4OFEBONcfWZDWmeo9tEU5K08JUZ4KechtCarsQ8suQBlaNyJVDhF353nahE2y5BBUx022t2SKrDi7FaWGaXWL4NTx2BUMDCZGyasa17kJSZDpJedgbRzWBuTKJS5lTcRfjyXRToz8nhBcn8cjzhuOc2CJ1AHMsQHFO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSylQbil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSylQbil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF90C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788075033;
	bh=ouPZJ6B55Bpk2TvDVcEuwGyC8jvdSysWmq9PqkbWDT4=;
	h=To:Subject:From:Date:From;
	b=uSylQbiljqFMJtoJul1gWSSI10/LwvkfY1dMzDSmM6MLtSpJMzNZpCP8VEubFv1Jm
	 ZkT2o3nMun27hrnGIvobsIXkbQQBz+k1UQGzjbBecH9Vj8n6vrq7HHFd9M8NWxhIOK
	 anw9rEanTV2q1/Lf0Q2xGK2gV4QrSx165CUKX/o5SExI/MWPwN/dl1Ctjyd+XfjzPm
	 pAkru4e/NpnynTNLxo8mImc3odwyAA22aHPEComdDYOyliKNi7t4PhOEPEclhjtpzx
	 bBeI0+kMF80lxbfAgti/008P59aFe0KuaYF6RuZosbx03dIh50mRaRjlSHRqpWFV/r
	 OSvDIDB5mqb/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE32C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807503368.21381.12722616972270635921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd00fd420719bf6c44925dd8c69a311ffc07b162e04614a5d8c9a721113a6f3a
Date: Sun, 30 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788075033
