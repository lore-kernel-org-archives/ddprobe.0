Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A7E63A9
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732938954; cv=none; b=FpbkF9qpSjKZkkr1UOxu/AtBX04L2ecpYsMqb5HYjHpfWt3jJpMatGfqFI06Tw2tPj3JKbXhafUqXwRdgfrJn4tGeTztuW8K5ZTytjzBrXqDhVmMJWhwa5unOneeHsnUClVJG1fketlr7JRc18e0GPWWkWrtXehZ4eZpP5ujzTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732938954; c=relaxed/simple;
	bh=KQ2sBjoOEasVR4RwtWdg3bPjoVsin/2iRftTvvVINRE=;
	h=To:Subject:From:Message-Id:Date; b=I4JiN9OqoDtQc9AErTPqWtS4GyISRVqTm3OQjmlduZQle5aq2dZ3izZDMsiFBLKdoShs270I7B7CrKabXL9n59zVnglgWFIFSvAV2IWhhZ9sKGXvbKIonG5/var9lniGXTvExTG92/JMWoLoa5mII65M20QDoYpfbDvIL4dFyus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5Sx5fbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5Sx5fbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BDBC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732938953;
	bh=KQ2sBjoOEasVR4RwtWdg3bPjoVsin/2iRftTvvVINRE=;
	h=To:Subject:From:Date:From;
	b=L5Sx5fbGlKBHnuJZx9utZBpVqmcktEl1WD+Ad+6ALuCr4jsnxpNKgfvC4szcOYw0s
	 YgyrdbasGUBi60IYTu7kGEMr40HyT8cPjmLpi+KRhHT9fWpckSeNypv1uBIJUrDi82
	 IdJSQY/ITXU+/GaVSdyDC3Wbfmwy9/jJwjY7Y8+HydgkWjnXkSu1n+B7iiJjNSFJPv
	 rfmoqpkfCYZhzL8XQlzmdE0GXy/1CYIum4inTdlzzlFqdymrhmcClIF8a3l6CM8DGP
	 RjmZZNb/Oh4xofnGylZPSVkVttfM4BSHJQxnK1YQ/iqIyNEo7gz3/pV/N6q4wa7Sbl
	 j8yLY1txt5gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEEFD735F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293895363.27333.2165151905781822833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d52d5a883449512701d53a427ebe9f118a155fa232092c8baa8189c919be18
Date: Sat, 30 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732938953
