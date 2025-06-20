Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55572BD5B9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750431594; cv=none; b=Ny+etkLL2Hdk92MF5wOPFpDpFvqu8e+H73mNpNWoh4SXNfrfSm85gNFWzlpLl6NiF9gUEid26IvsHbmNwExJbCzGgEldq4ZoSo+rDeXQP5wG59yYN061oPiVxl9Dfq6D/+uMqi49wanoKmKusZARpak5cfQkaWrW33hYy0eQS7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750431594; c=relaxed/simple;
	bh=5e3QPWvu8i88yoTZZndLUGhZz7j/c1LjKhK5cjhTcWI=;
	h=To:Subject:From:Message-Id:Date; b=LbIm+mYqmG5sLlo1tHD2GxMLCf43NhAOBFyj4nx5801xhB2Lh8hfHRz7Q75+8syHxYG0OgrjODYDb3+2o9kNL5fDFIcyiNYXfRwOaQgDLQChWPTL9dALTz7R9RDhyx9Qiqo8xBTbIk6/CAmMHZDwLobK/2GOSmm9MNAqNS/s3Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yrgco26g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yrgco26g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF8EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750431593;
	bh=5e3QPWvu8i88yoTZZndLUGhZz7j/c1LjKhK5cjhTcWI=;
	h=To:Subject:From:Date:From;
	b=Yrgco26gJZbNs/WW8WS3+PRuQhvJo/NAxwA3CLiBOc4DlZktAmsF3KCWgWAl4Sxyj
	 wIfp2ZjCRqT1WnvB1cuWU7jJPZHxnYw0AIO0QaEDcU/ICwcEtg9ZaLXC3rzRWJesXb
	 8qGWtiWUPxOR37tvoLXNX0YMay6/vB16QhH0x6BKcaHxWbGUdhq9VMxVVj/+WdOAun
	 enzTnLTa1crACB09YE+Ct8qunFRwV6fpAIhEtEn3ZYHxZch65StqDi3aUsj34Jskn+
	 KumunptRIN7YMSwKt8ZMgmIRcK9Shtke+6YgpU3pswr/oe8+prqw/Brtw5f54BjhD/
	 /qZRh85yX0HMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C3C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043159357.27525.1588107596448543148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047b357a610f3ddda8870a3e7d0a06558ae95145795985452d4c81f67136b80b
Date: Fri, 20 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750431593
