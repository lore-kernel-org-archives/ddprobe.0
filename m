Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2399D2EE607
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688234; cv=none; b=NULh4uQRIGQrzZXIm2LnCUhQgGa6hrfepNMVwBPyMQ33o6hEa5kuEEIjy67KYP8vVoh5hZZpmXyYFqhKHmicwY2xIz/LMbjvQdAiqhjoJxTk7BMl7AQn/mDU8HAvN34QHFO9NyxTgTh1bQpF0ivSsoYUQ683JatnVSeFo8JEinw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688234; c=relaxed/simple;
	bh=z+1TGdCuDN8nK46A34RX6ZuTF+v5g2DfC7XqVly/Hhc=;
	h=To:Subject:From:Message-Id:Date; b=eZpAxkFkN+TewmqnYbIxjhyg7deZHkboo6zmMpLBgBVexcY5uF7jS3EzwLpAzLMckXUBb7Rn15jFGugtYsit/eRbBL9dXR/qzlpsKtu95keklx2QZeCjCVZ+SebQz7pdDzcdUIs7Lg+TdrTd4fum5tS3b5aRekAdqvw4ggrvcrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zms/iZDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zms/iZDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA1AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769688233;
	bh=z+1TGdCuDN8nK46A34RX6ZuTF+v5g2DfC7XqVly/Hhc=;
	h=To:Subject:From:Date:From;
	b=Zms/iZDJEBNA/tsKgLo7iyS0kH4PpTP4Fj3sOqf+87XvCpY3UijNDP6/srkrpRKRS
	 k6KnWJwfX17PkyowyBD/GxWPS9FyDwei1Yjog7MbGQD77OOQvNIZUQk5Q1GCDwh7Ic
	 JVT2OQkdDOOA9T4l0uD1COdKIQTv5RAYuHSIF6AiBFfqD1hhn60r09k6b57rXRMtOD
	 idUADSWHtcbpefQkZsSop6lfcO2DvDBJDuTaxeo4xnaOpoQMJcTM6c+gvc+qtxYFnb
	 5Kj6ysy7kOamGj173upKZNBxjl+OnU8FCysd4DAOtS7THy8XosYsZ2/+YyLpBiMyVe
	 ZVgjN5IWAVpnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99637D61009
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968823359.23151.7216907332263089765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836778b42261013757baafd7a2689681a06a4db106682ea3766dcd454e5e6cb0
Date: Thu, 29 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769688233
