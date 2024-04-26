Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DF42907
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714164143; cv=none; b=pUdKqjzg8tVjXu5nrXfBIpA77zGhAynaZIaA8115A0wII2DqkqRUkUJfp7jgdDVvquvm6iegbbDDT7bbgukuhDHlXQtgFvfFZy1hLcKdr9IQmiRNYKToDzj9OikUf7EPpY8Rczzg4xx9cepCUB172yv0rz0yUM09+9d+2P1pw4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714164143; c=relaxed/simple;
	bh=FLaAiLLEztQj+sylsz0jiZWcZmifMH1Bz6fV2Jbthy4=;
	h=To:Subject:From:Message-Id:Date; b=ubnB1zqQsUkn/eHaR7kZye+eVi/xs8xhXiiCKEa/ypL28RkGMuPtNNsT8v9JnuhrN+N3i60likAolNpYqxSt0MQfy3rJF92BKA8geegJyHWeGoyPBTptww3nfCA7tcMa7eLKwDJMy38Vku92zwT+nXWID8vqFAcaitvOi8EDmb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpdDXqq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpdDXqq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAFADC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714164143;
	bh=FLaAiLLEztQj+sylsz0jiZWcZmifMH1Bz6fV2Jbthy4=;
	h=To:Subject:From:Date:From;
	b=HpdDXqq4Ch5mtDucuUSRYMbiZ0tfK1jDMT4gUqfU4JAunnj1w0bcDov5450uXHAoQ
	 GDWVGb7rrQ6mMkeo8VbiDPrhkjqKmc2qooyQjZKMie0ZftdzDHxaoKUxXiLqDNgj/Q
	 3MrsZHog1JDJhe5gOu1mdd/oSmBacgm/GXwZcks7hYGgX1OhVwNdWGlR4fJvUtcjq/
	 AnyirVOHdvz3PYPjy/9i9Gtt3iSUvnydXalmIQwaGWj5dGxW1xgKQZyK5FoHfRdg2Y
	 CfDNNDpTAf+mtJeyip5r1D2BPeq6llfiKwjHNroJB5vFRz5Sjg55EWr2Hjy1DHE/m4
	 /ViSRnrU6IZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF5AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416414283.16967.8656489965375899731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784cc47b948b88de037890528eb99fa6aca374729709465a4427739a08c7f906
Date: Fri, 26 Apr 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714164142
