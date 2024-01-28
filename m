Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88B8469E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706416097; cv=none; b=k01sOdJdSVSuCO1/jTqD/aCM6cWh2OS64Vna4HNBjU017iKZ6JztyiIPCu9zOm+2ngfqtdUGSX3uPL8uClL5lH3oU5hSJI7ruLVeN4SCEqvqjLKNgAMRRyJRfDNgva7cZd9FRDIcNUzoMPKzaX5W321SJIdnGZHy1ncSLkWH3ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706416097; c=relaxed/simple;
	bh=058u8YFA8fMtN2vcU79UOW3DFg4B9lbco0cEYKz+6cs=;
	h=To:Subject:From:Message-Id:Date; b=sK+JFTflewnEZ/R3kG3ZUqA9qm2QfsJVIAiST25c0e+ccDJk/Vfgc6bDgmqAu2XCpZeeGw/Vul1KWizyBwmP6NrcQWlUDpoPSfDGncOmZB8qHw9KgNj097YYoD8+QlbvHiQXgrpLHrjbpn49GdrfTzLyxgjOWqe/o8J2WAFZKq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofZ9zqLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofZ9zqLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79333C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706416096;
	bh=058u8YFA8fMtN2vcU79UOW3DFg4B9lbco0cEYKz+6cs=;
	h=To:Subject:From:Date:From;
	b=ofZ9zqLf22NrezhIVokLNHNzfma9K6ADPCF5HFM/zFRRcKw8g2a3ZOxw7SZYjMicV
	 k77LhRJBQrSDgQKgrkzbdCcddQdQ0IyTslpUt16KuILtFNN97iHnOBRAawoRa1bwQ3
	 q9BpICjsCW3x07eWUy69q+U3m7qr6dfJk099TY5rXaCZS5jH14ffuHH7a23FX1ug+F
	 9XJme5ra2NvnH0Kbq2V+HSW1qAqV4fzsofFexAFKizd14DoJX1gzTHyg33lAOyjeIH
	 tazOhpMAhean55HK6Mq7lXp4SrB9kfaZuMu+4iwRnefQZjNSToIznS4vH9vtLnQP+B
	 t+FSBPuXZzB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A89C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641609637.30241.11388223651102764087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340b8ff4a3c37e07dcd250ecc043e054b65130297a2e98e5fbbbe7cd3bcd8e8f
Date: Sun, 28 Jan 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706416096
