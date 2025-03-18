Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6042F211471
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742332194; cv=none; b=mx4cgAHRWxGWZLxlyO1P818QFumckLvN6bqapqRNLuO34UELbjweJhKLz6W1staQGRfCmIfCR+mLAPYDpwgnU9iFM7e8V8KkFTw4oe4VyumzWM4KIp9M6CLxA09W+SaXRYIiN7DiHLb3Qqe8NOREr1qU2zprej1heVFa6KB08oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742332194; c=relaxed/simple;
	bh=7w4+vOcWUgcBXvrCzXeXrnbUJ0CGGekaIirKi/6Y1e0=;
	h=To:Subject:From:Message-Id:Date; b=DZrlM9C4N0Udrs6U0hronOxpiBRSF+BKCvDnFsaK4XEvC/mpcNsaQPVhfumXFnx7y++o4YD32+fF800yJ3VxbHedeTzjolAEpA72wIKHsluLTK5A1kExXTzJzgz8DJEPCoItuz3FlxM2313Ak+6F9jskDKa5m4NAO6AcsFNKGPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuAmuIms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuAmuIms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07FDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742332193;
	bh=7w4+vOcWUgcBXvrCzXeXrnbUJ0CGGekaIirKi/6Y1e0=;
	h=To:Subject:From:Date:From;
	b=LuAmuImsQ2jIA2tVCeO6AVvHps9XN7ZXsY0lLc5JCrTuCYQ6z/waU/SRNSqYbvDzL
	 TZ5XuKfVpVCYj4NBD37aqj0wKKfgiC3ZuYzdr3t15dQ5ApxJ3ft2KQfDjo76vF8NC6
	 QofmLZIy4WZVZCSJrgfN672VJ0nCeMeGdZG1MWO8TqcotUeBF1HTAkFz16NxWqI3SS
	 9Op11bbTPOMSYTrQIfEnBro7CYN0aYlZ3/xcR9KDkYkPTqW92pZnonSKb4BH3BUFiq
	 misM5MBcu0D557dpn0kTuorKI0LZbYrKwECf7C5v/hnHZ5Q50WkenGvHg+1DAQ9ILc
	 bNfey0bhB58pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4016C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233219364.14469.4867805789156574825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8c91062e8d4d9b0b71a5198bc99612fe7b64edce19ac4b56f93bd43a6f67c0
Date: Tue, 18 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742332193
