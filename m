Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FAE1A9FAF
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774595694; cv=none; b=Yzn8xDQOA0b3x+NUWYOcwGZKNAs+DAJuD9GaUxnniNe2UmLAXqt8+/1KY1GznNyCQqkBzbw5L56p1UGlYoPMiCAaH2dduwScywQREanbbR8T0kks2lOcZe8qsS16Rbw9t+bWIO1lqfiNAc7YBejSG2mLuoS9S+DWGaJYS7i/mq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774595694; c=relaxed/simple;
	bh=+MeRtr3bMy2stt77NSfJTLia9G0cyj36URXHugxHluA=;
	h=To:Subject:From:Message-Id:Date; b=dmi7E9sz0wd4neGftssRgwb/8QSoq6zTljh6DNEpVXKGEpPbamRJKlyq/CGVZqfHSwIvMTh9hOUrkc3LMbmyz5jTCvOcGFdKdrxmFiZQhDvEsaaHlCSnoiCcFAXSxA8xQyxC1ip9sUm4RuPtYI1LrrFmyKXtBz541x7keKW5Ijc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuvX5PNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuvX5PNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795DC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774595693;
	bh=+MeRtr3bMy2stt77NSfJTLia9G0cyj36URXHugxHluA=;
	h=To:Subject:From:Date:From;
	b=RuvX5PNFsd6CyF7o/VVw0wz8/Tjt1NT1Gu5ApUpZ4rfeX3uNt6YOpscSFkyWhInC9
	 k0Wwruw945T8xdfVYz4nJ6NVGBX/sACjKw4frcv9IW7r6UkqHlnEqensCNJlXyLoaW
	 pC4L1MJrSgOJEyB23BIQXlmW+wpHA6QbUl3l/R2lHFxvVXy6JY6rXNBB0oECs93W4H
	 uImCsL4NlkW13VvTZmXhUJDBf2/F+V/hNYvOsY9cD9YFuSQ4DFPz1BAQYmT/gCB764
	 sTZfMti8NGahbbAoro6EvJ6Fv6sxDNDQHhZFWhHmmSbAvVummzgH7papLmvlJY3D+Q
	 fUdTa/ILTVE/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBD10BA430
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459569358.29532.11754320028177928353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e8ece0b138f554421bdaba1acdc944414b196e930497eb4ccbd747ed0ecc0d
Date: Fri, 27 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774595693
