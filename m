Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CCA1993A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717593983; cv=none; b=RBapx9BMZ78xFOEb9jJh/DtFz0Hg6SVFf27Ac4Ir/dbBPB5Xax3r5YpyBo7ecoY56x+zppcNoiN3WBDBJLi1OF8Li9JoC4FH8lL2P+U3L+xiUUCIgZURfYChnGP/IowDYJ+i58MiwZt1JvtQUT5qajQ74SMRewK50LFhVluX6yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717593983; c=relaxed/simple;
	bh=i9Wx79aKckJjrCjRmHW1HAQdVG5E6114xMAvvOlDuwY=;
	h=To:Subject:From:Message-Id:Date; b=a3vC2U3WyBT2dixT+5l0pwQ0+lG+hQmufh9T5aFL/MBBbsr1wZv8XLuRpbUWvj2C0khKxLvvh9APZoh7U4EGa7QjW7j+Q2mb+FGEM/WFYBVFGAf6fdvrLsekrKaxfCCLiXgfXNgWVaAm+CSVUAfh40jJoizso0Q1m7krahT2JZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/JgxEln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/JgxEln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E79C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717593982;
	bh=i9Wx79aKckJjrCjRmHW1HAQdVG5E6114xMAvvOlDuwY=;
	h=To:Subject:From:Date:From;
	b=R/JgxElnIjb033HEgD8weBpm6RMEG0dU6/DHbhYmGH523UK5gNfPUYOFPuH7FODYZ
	 XLCMLmqVh+TNyfGsDa2TBmi1ITY/Wy3nmhQEJvGm+Kc6f9F3o7kTNQSk336DU0iy1S
	 kk66sIAuLq0GVx0t0EeRW5vtGA91+SMMqtamc/Grg3+EftwhrCP9HOsmzGG2yKobhO
	 Y2O49W2V2ewium122F1jyJSdcUpdMeKHEKkc5KkXLgBXnHa50KwkZzwFr7XhLZF2BK
	 bhOMmv0HRkpQu4rQYVTrrHYWChNQHzYXKVQc8hpIbpjiiEyE3//DePlhqqaNMtS5F5
	 rf4RFW2Z1CfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEF1C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759398276.19162.7391673865704815811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b215884167a4d4e6262458bad6995c68e52b3852e004f0b07404580c9b6e3c
Date: Wed, 05 Jun 2024 13:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717593982
