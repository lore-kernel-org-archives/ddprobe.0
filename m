Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666802E414
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791004834; cv=none; b=Sqnnuw7vkY8QTsf3wwlfyxIWf2tjMOUm8PHfT2JXKuVFUNX9ZVRpZqDJiK6EeXOvqHll5qzN6DtvMmsyytHzcmGnJgOE9vWY/YtcgzZvNua+FJxM+1qn1wTxnu1LTa6+rBqEEvcx8vgg+fRr4MsJcz6Ay5Dwj+EFMKXPrIb9yxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791004834; c=relaxed/simple;
	bh=gtRBwdmfXXlBswYBFSBybaY2VZ7WKeZ+9qtXXI2RbUo=;
	h=To:Subject:From:Message-Id:Date; b=vBa5xTN7tigeL9yTFdrjxAHe7vy6vvGgywXgDfHRhbBNe6s/BhXKtfOI4Y5d1dzDuNn/3bkzUKyyb7fkNG86R7bSfhqZtuKzHtQsWC+OFjoxnyxc2s3q2RR6EMoEyo4SIKmTmV0HU27b/nh48VXMSa8dslIyXXYLiSvYUvAy8nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK6RSPfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK6RSPfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791004833;
	bh=gtRBwdmfXXlBswYBFSBybaY2VZ7WKeZ+9qtXXI2RbUo=;
	h=To:Subject:From:Date:From;
	b=CK6RSPfcFvgSaLau0blYuttpdnrCyW8P/DKxLuxishyuXBvQW7E76d3WrhqFMka4j
	 mqFUd+6yUE3VC+2wHpi8wfLGsY7xBIvT/3kJZ6K50dJCfAxyugDl6bZiuJaGZfmpmT
	 sEQNcQz0SdaJORJyYZAaB0Gczgw8uEpQeCMuZT/fDNNtUbTZCdyOeqlxP8mz5bcTvO
	 Xp/ae+bFWdL/nUaQy1DCIVF9NCjjagSm+b4wfq2VkUGhTUpmRAd0v6z3UIUYWX5V/b
	 kzV7bJqPlgh1paRnMiMan0391BnR68EDPpO9m/ySt86CUzqJMBEgmwaKMpP3/d1DUZ
	 PnBIeKA+woB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFCCA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100483368.7349.11938194012480663707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0a41bbb29b4783d1b762fb60a23d765d3acd9d00085278a115f5a3108b3b83
Date: Sat, 03 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791004833
