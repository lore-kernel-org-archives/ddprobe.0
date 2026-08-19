Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671FF4052CD
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787128834; cv=none; b=RBGu3vd/7mRxDV3W2lVDtPVg+DG3mCszHmWp3fX2jGNwh0/vvvcKX/Y2MJbLaCSdGq/vCzIdLWSD3z3k/I/8fZ4HMNYx0gMTUu1mnO6wBBV9QmoJYABm5WzeXzU+riqRtLJA22MWp2R/h6IOTaP0gJpfzfN3iPffueDljKMNe4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787128834; c=relaxed/simple;
	bh=AGONp0evOCBAGEd32AW17o38D9VrbnyGyvPx1wzmXIM=;
	h=To:Subject:From:Message-Id:Date; b=NywnHM72OEFp9Q/0VSLV29d64YSC4e/V3zwZQ+LoVNQeYn4Fb4g8IInzjUD+Fch/ffKrUTlxCULjfOhrqqs2yo/LIhu/BQs4PVrqwQeAwOrDzYwYUsnEE6nBLgV/MrnSJszmc0oeA1mF5CBBP716wszXrY0jQzMyux9zXnOGtN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asDkikAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asDkikAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1267BC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787128834;
	bh=AGONp0evOCBAGEd32AW17o38D9VrbnyGyvPx1wzmXIM=;
	h=To:Subject:From:Date:From;
	b=asDkikAsCG3BRYrnJZvMXp0yDmOzSRZy8K9shsrlBhu7DeMJrelOsgEqQ+Ng/ALyY
	 Ck/XReePbnDg9D5CL+pOlotMhGcEe0fpVDM1vqK/b6tBYeyJHdMhxn7R0HNIaij8KT
	 hdI9w0t6vAozNa/3q1qrI3j79586xdXQW88nsJxP5GJvd87bD/ELJodDMdz7IEBcaY
	 jPaG5Glo9/vFM80FunhfIHBR2MRx55JW/7Z1EA27MKHytxqjH8pOl8P5AF8nCETkhp
	 B23fmEULab+1zV5hQBOp9n5tX9bMkaQeAs6ijZmOulXct54fXYvdQ6bAE63RTgylqb
	 8u6wkVSthr+Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BE1C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712883387.10405.12701778331430193041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481295ede51433dfdee0acb4bd44787237c9f3284a4a09234c7e86909d445468
Date: Wed, 19 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787128833
