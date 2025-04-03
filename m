Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EC224E00C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743686994; cv=none; b=csSteOEAFIWy3vG53uKStIPTyHEpQDRkX03PkWPFAoeMLn4NQIdyBp3I8Gyuu7jq9vG47dZUiKLzjKyyplBWb/dbP3osEgsFfACnq4UHphXAVDY1PLEbSyI7H8SPoywRn7hFz2+lvK9UgPcvs5armLxxqZ7S74vTL2VHaFWGT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743686994; c=relaxed/simple;
	bh=i2PrCi9CvAvBCYTkvKvhdAIJINPhl7AjfpkRPJ4vIAU=;
	h=To:Subject:From:Message-Id:Date; b=uKPz/V6wKBTfIMbpjQpRnGARRu1FKaAn2tga10CvQGcNUCe07jGfI1gK4b1poOPGDUuYa6oppgK/gZOoWM3kTe2UgyAy07y9fhHay70R+N7ZlfetkcaSVrFlQO0zM3qxkB8tT2kobbbu5dBwRlW3VWXoGL2RppU1ZUAVN8Quxqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaiQYeQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaiQYeQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AB3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743686993;
	bh=i2PrCi9CvAvBCYTkvKvhdAIJINPhl7AjfpkRPJ4vIAU=;
	h=To:Subject:From:Date:From;
	b=KaiQYeQgzTqA8mb4SCKf9MyZ04SdIDHjO1ncVa1LeHJUkriJEt0D7Qzv91Rl81N1f
	 4or9Az9HCiDH6j0HHim7HnvVKWbIwRykLAiGa7/3SuYpe6BYSo64TpCkQXGvVKY/Ph
	 xequkR/UTLZGQLG18OPgo6cYM7eRcBWJNauRXQOlEFIvvCrVqZIvbfFHIZ9UyNVp3g
	 3zpaVY/9ZBu9+VZU6/nPj9da2yrADslFGYymkK4NrTG1fpJykXgx22e5Ko3y4OXBYW
	 XfEmDZwUYQa9rVVqev4zPhAwOpqa3AE14xTqPKTHdeBlJRfBZE7Dov9Kx19nZaIDwH
	 GMROexVS+W7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7BC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368699358.1308.6352679976182957126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694dba46fb93c53f929c4513bda05d404a6fcf436bdbedb610dec537ae87e48a
Date: Thu, 03 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743686993
