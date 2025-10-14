Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF22C375A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760470794; cv=none; b=TK6gCti5s1Ga1ctdPteVf4YobympCdEJxViFXkyIg9/JtI2OSa9edDKivu/qTh9eDdGSBUmubYMTr/AYN4NF+Es5ixO+tTHJ8/zZRLFYMmCjPhvHuBRhL95wn9IocRrM/Mk7prSade2Z4c2egq7P8FfdpXE6cGV0pZXKbsVbwzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760470794; c=relaxed/simple;
	bh=NeDuEr2OUY3mGxjSviopl8EeOUlbi9+Q4yemrxShAj0=;
	h=To:Subject:From:Message-Id:Date; b=VILMBZr242quSFT9ywpnQ5mmwLWwcyatT6VKU0kfZmLylwWcqpKL3IeH4CByxNERwVGXfiE0rOLJXtui2yyzHMCr8mWvwL40O+eXHe8Il9INheEL5c7vqhZCMGXCPViFhHbiiHJXM5keYNfs3QFyOTa9mOaglS553hqbB3rAdOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StRqSjHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StRqSjHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3861C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760470793;
	bh=NeDuEr2OUY3mGxjSviopl8EeOUlbi9+Q4yemrxShAj0=;
	h=To:Subject:From:Date:From;
	b=StRqSjHQOJLdbxqT9SzYgKt1YssUe5YFSfMwoYcodYNxBnHrka/k2OzmM3OXkCEy3
	 rGj6AN+H/JNbjm5D6Z39WGqfGQX19ODN/o7VLQYv68Ri/ZOoTBIE2UfAvg9A0EA1gM
	 i35sHHy5P9CKbzm+RhG6iCtJap6PREt0KtZFO0ofr5FeLwH/vnGnHy1G3DnaZiUg1Y
	 /M6Ql2xDntmBHboYdWER9nkGHtyopNTGDVdLsWzIwnNbkvyttT3vlZRTJsWnfKO5A3
	 RSnNYoWHwJqri72GBhlkf0ZdBUsyZDpo/e5/ZtjIRcQbdT792woWqVvohDG+FCRE9I
	 EHERSOKjPanig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB18CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047079358.21803.15998909842467481550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862067a5f3ff97f30d52af8498f0a85a3cd7f427c19688290cb26d41fcfce9ce
Date: Tue, 14 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760470793
