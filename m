Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1841DACBE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736160954; cv=none; b=I+iZoDvs+MtAIBI6sNa1c9IsNHOQZnJkdnzw0/oUCrLgetWaaFebV2VrxsgCdzkLTdZoqcwoXrKZ4izVcQciNaOLwijdCDdhIMAmG/2BITTv94ffjwjXsMXWA+sJPdxfWRuRpCBa8jyJE83MimbUz82pjCoA1S1/3+ug77BOsKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736160954; c=relaxed/simple;
	bh=6jqIEHPWp2+mrhMSkZd6p2jRQgBg/4KbcDSw9FSLb0I=;
	h=To:Subject:From:Message-Id:Date; b=tbBKJIGFnMhZShy0WB+5up9eCYLOd5As09IhUgOk3sCBs8bdRVPxqVXhsd4AseiPuprQ+C7CmZ9rXkrVeQ9vNO58tXh6AAFr9n4UpHmrp/s48mmvWqBv5EQt3Gc/dl4lI43RuYMFqNh7qFJQwcdvZPQuWhYpR/hLPRBU+OkJz0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Std1ZoMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Std1ZoMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2618C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736160953;
	bh=6jqIEHPWp2+mrhMSkZd6p2jRQgBg/4KbcDSw9FSLb0I=;
	h=To:Subject:From:Date:From;
	b=Std1ZoMAR3WAqmKhp7upmKgzqwL3/EmorVl7zR04Ysl5521czGrAqfOxrChRE2ZKY
	 q2t2wuiOj/e8UzVWNbTqhpMwO/5uWe45D1X1V0jj5SALdz93IHfwadvNkw2TqlzLvq
	 uG+IzvJzvj8pp7Hu5u/KZs4JK9479slvL2dH16HhWHEDsf59Bi0ewlpjPXQPqKwDzx
	 xxIrIltbJf9KhSPb6O5alzTZJDCf1aqt8dQtmqZYhm9gzF4sLjX9Eg1N4/moGDWU2q
	 0dqxA9dBYnHS1RjFZEmt7pD8OXYjaswnTyUO2AouqbmzPivt9k/KODk+6EH09eQTOR
	 GG2sMCNXyH1bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92771E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616095359.2141.12486834040441862933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e314a47c1e2018f0f9242f4b56eff4b35c1bbe26d48597d8a9f90c07585a01
Date: Mon, 06 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736160953
