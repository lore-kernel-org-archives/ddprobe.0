Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3400019309D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724942754; cv=none; b=syptmV1xAyOF+g/o1UzYC1nBDR7qY1LjroKTaMs0KHMkggqeeEK0A6WWhzkWY3w3VbXchmDQpz/NLoRZCEcr16aRb7YFf2/OT5aCq3qiK+mYqUteDfQy8NWxXm08pKSoEqW9LSZeW+2FSpVaa586YV+UABMcqA4WmZPWF4roLSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724942754; c=relaxed/simple;
	bh=uA9sbG7QUHbcx6ktHB8GDgWlALeSKbNbo0APR6jYnWI=;
	h=To:Subject:From:Message-Id:Date; b=cGxhT7a+PNfMvk8TcXuL9ttFRyREm/LLkhwHMp1gO9h0NpKQdASBWU5BKLFvTuRjyv2pIGt3RyigSzniCfm06WZeYCBxnFt1POxNMboffJPgBTq4WYHRgZlwUfOAs1vV9guTAuSnxq34dVo9VS/X1KFbcJO4yNFPDUNmqVJqy+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC74kThh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC74kThh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F9C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724942753;
	bh=uA9sbG7QUHbcx6ktHB8GDgWlALeSKbNbo0APR6jYnWI=;
	h=To:Subject:From:Date:From;
	b=AC74kThhkLTpLLNhjlI1h9AaH9SSgjeEeRCZ1WGyNgmuVECEn0FYpHK0rZ+gwkplv
	 qfcpWGQC25AkblDRr/iRVqt3o1kaOVuCrN/X70IFr+Lz0/kIa4VQ+ihKJJVKlPThNS
	 haWAnNNTxqnrkYVf8zkMeqoce8FpCI7JC7/awVzrJlzhZp9xwM7CtZoqKmdkcwN535
	 SlLiqtWQ+DjgGgz7UF3HjmuGICzTYmG20ZGklipXO4m1Dh+t56ur+HD0MxwB2gUyzD
	 4DmDBguTeUHU/ZV0U1Oi5bYx1RSt9SU4efkU64lAriDkzUdUkWU12zJpjlL4+N+JC+
	 UuCu6fshrpz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A5C83F2D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172494275360.14455.9416511291257560834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb31422befb0503fc7e43f86fb85cac963d4df3df39155036bacf9ef3369ee1
Date: Thu, 29 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724942753
