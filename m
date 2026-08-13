Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC88C48CD75
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786635635; cv=none; b=MbhFBZSFerRlOU91mNmAWv1+XW0hAN0D3Unnbe4eStuYq0qkOzPMY/qJfPG2YpTKAhBgwr2iUNuwwriZwa8i+EueVGbfZdXzFC33BhlYsS/nBJSa1eqsRU06FM6J/okTKljkoBm4C2hBcBdv1TsJDaJlzh/41WlWjXnuxrewzYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786635635; c=relaxed/simple;
	bh=nmL6vDwYoBw1G7XLWjwWhl7+f+kQE5DJETH8DRljiNM=;
	h=To:Subject:From:Message-Id:Date; b=kHIzmgPqRd0DzC4PiTvkDTD8aLCyOBJVgq1ONoURW8Ed1uzumuyV2oSRGr6l6byr/vrzcVnN/jcSGdtJFursVxI1mMEMdExu0hJXpwi2uJtmFWS7JqFDBb9XytWOMh9Bb1dk5fVl8RvhT9Pbd+55cBdSa+FtV8+wJ91y2s8ye9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd+9oJ9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd+9oJ9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB596C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786635633;
	bh=nmL6vDwYoBw1G7XLWjwWhl7+f+kQE5DJETH8DRljiNM=;
	h=To:Subject:From:Date:From;
	b=Qd+9oJ9HSYsY0b/1drtyIIX3gAzdv4vkTGwB7TzCvu4jiuDdcUAH01u1JVEDeZQdy
	 h+D4pSZQacwUKEvet/4qJM9KmETxSoelfbBxFGKZmSwE+eyGuAau37Z1Laaj1aW+RO
	 Nvuj8FQ/kLqFX0pkCJNiGHV5Iddct6RyQUC2vBmi72zJJjgSuUKRzMihxo64pGF34V
	 IYVn7i1McINMJ443OKe8ppKweB7V3iFdZsuym7mJTKgYF8ujHqtHL/hgYDg7IqB1Ac
	 3iUEgyyQ/W0Kwte4ilJdE/E5WYv1qS8uOdDjGAMb06uBt/kh3WX1yoiTx41mKyUtbN
	 LmnH11ytke1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8499C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663563368.8490.13636958405327040708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd7d5d734f95288bae4fbd30c8c173e0fed530cc3366010af878bf6e29f46b7
Date: Thu, 13 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786635633
