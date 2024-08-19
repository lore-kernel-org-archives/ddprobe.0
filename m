Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DF2DF49
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724027754; cv=none; b=HuIOofa4/IiB4ck3eUNJN+MuCzfJ21u3NLfvdrtqMQL+8RWc+rM7DxanqB5omdkUxYpm7N5TjNTseMpW+yl79g8DTaa2Jd7wfS+8P65HkAeB4FDM/UL0nltBXH7NYsj2BHdlxEbTPw/wvQWUkVfKk1E3ruOXxZS1hSbqulYpsQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724027754; c=relaxed/simple;
	bh=nuaGvR9xadk1GV/ozyEwaUhLP2YOeYDVv86YSsI+Ukc=;
	h=To:Subject:From:Message-Id:Date; b=L+gFFXYvH4mL1fDZISSzCe9Q96jwFrINJdC8AS0a39RdOF9dMFDZCL4Fdq25tY8X/uwzzWcB9ByhyH35Oa2hJTDRRva3YipQKjlS2RGOqNHYFwfiKZI6QJof3chSqle5147XJ53ltfuN7S5Xh3G72mXZbQvDXJG5m40EkNuQXMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk37AKW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk37AKW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5456C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724027753;
	bh=nuaGvR9xadk1GV/ozyEwaUhLP2YOeYDVv86YSsI+Ukc=;
	h=To:Subject:From:Date:From;
	b=mk37AKW1/5eNEHsA1Xer1VYRHFe7b1UXirW17OA4ekvNGcd3oCpvZPXLPOimYvDHk
	 9qFzvArdpm90wHy4r3UkhmDEnguxorKlPc7F5S2EurBTZQ3ie5EwTxVYVafSTyoyjL
	 SMfCvIdet8rxtoij9s8wJOy/zYKcrGm5JPtSxDGvvOcWQwQX/BbfLLj9+w4NoszRIk
	 PlokuBLZS2rURd8o9W5Cx8oSKypyxIOL5DgLYE3Zb7eXqmTXwYHt7gTyaMNA4mYdbJ
	 Q+Q03kEULAw5Vr4eTIDN3+L/FJVSWJUyMildSKPF+kO0ZfxWrnJUtCOb3oRm5kM+Z+
	 JW1nJFUCyJ7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C75C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402775360.27523.3309593457360855242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b5c42eea9cbbd54126515c23b277a5154e4eaa863005b0b8b82ad641e43428
Date: Mon, 19 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724027753
