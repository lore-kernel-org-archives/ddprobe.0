Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD91DE2A1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741370934; cv=none; b=smeZhOgTiTfN9CkZvoodHWWu6VyNMyB3Uq5oGq71Y2FlpRAHIPtROn3bqKWy1i04ANIacA94coFi+xRqkCKYqKFKlvHLZFM6a8idg3tK9b92045RO327F7ffYwkFWRqmDpoAtsGzOZUl9U3wqUa1FntpBe00Y68AQ9ygzulL/Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741370934; c=relaxed/simple;
	bh=Fy/y4GqQ8L2abfA8eJbyUrb3IMRO5hEv90GCelYN3os=;
	h=To:Subject:From:Message-Id:Date; b=YM/HzcZ3qVmSe2SJVoRWIac5WFYP5rWQ8CEdTaNGmBqKj7xVwk0WOGGX9fT0NEQgopWiDK5g4WVoEHmkboxc66Gvaxbzcvy3EO0pVB8ePLbM6z7Qbj9s96XXlV0QqLlwiINzLjrjhoPaPtXtW6ANgyaP83e2tH5dPxxRfS1PMoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nULRVc6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nULRVc6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8970C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741370933;
	bh=Fy/y4GqQ8L2abfA8eJbyUrb3IMRO5hEv90GCelYN3os=;
	h=To:Subject:From:Date:From;
	b=nULRVc6+wWWfliWfuM/s76PA7mP9CEwgtP2BJd15HMcskaFUk04pWzmGQBtdzzhKU
	 wCj80yYpO/tAXLlbMuqFKwHeutXjxv7fTe1WS96d8DmmnSERDpHa7pCDb9XCGTlkdZ
	 DTBYHxhG9LLpg6i+cupx5flKAXNxR3/EqnbonULmT/QWKDb5pG2jXMQVjMwEXBAXRC
	 ZgGOUUOtr6zEqSLOVcFV+0eaNJwN/hJ+O4d7OBeKzdQj6nHtCTkBf/7SPq7fS2V0CL
	 mzXNWhsIyyzGhQAsw6geXBc+K+OwUxBMw2GWaMX8rGWsQ0PZ5Z4LO14XsebytTXVUc
	 ilqAagHxz0gyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94121C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 18:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137093359.19706.11880357834417679888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2989c8c60732f82d4faacd4c03db44dc4e733eda80a6fefdd831a4380728063
Date: Fri, 07 Mar 2025 18:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741370933
