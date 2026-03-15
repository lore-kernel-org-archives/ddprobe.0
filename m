Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6CA375AB3
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773610494; cv=none; b=VAPzRwnYllj3DQYQEkzTWiIiRdqGIWS26l0a4wvEfR5LSOXxabzJy5xYsTQkNUq3vW6fNTfGbUAICaXbK7aFs4FjOLg5BfqqiIo0R3lfGYrqT08/Eqs5Nok5k+bnsnmM1e8fkoC6mzvzfW3slqhc3QuOAv6Sk6Omy44g3c5qe08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773610494; c=relaxed/simple;
	bh=lpUuxTz6cLvbmENhbxUQblPS5OQsADvFIBv+XvimLAM=;
	h=To:Subject:From:Message-Id:Date; b=f/nXapOVacwbSPMsevgV1JT2oTHshbH78uzKFBLwStl6SQuJQYQYIfqAX9wQ5eBaFRafNCNTSRuV5mLro1YJHTT2MxtZ7LD0rgA1pKNLE0QfVcDJFXZ7BEusVAaWl4gEibahF0xXEHAnvS+b9L7i+7IMnxGrdRT0nK9NXJf9JlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzpbXi0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzpbXi0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3709C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773610493;
	bh=lpUuxTz6cLvbmENhbxUQblPS5OQsADvFIBv+XvimLAM=;
	h=To:Subject:From:Date:From;
	b=BzpbXi0oqOU2QCRFCBgnA4UIkkfQWirmgLXwujScpmHmL7jfUDpQtBjO8XT10ZVfp
	 lulkQP7ZvtRlNjE+FHjgYueN1kanLP+9NUYnAHOdwRwrQ1DUJhb01VxMEuIecaLAKm
	 Vy8OtOgXIzMKwS+9jfv7rhME2UGIvIT+DG5Uuwfzw9JnimO7Vde5Z3DoGzIGHvMB0C
	 LtipvdkjmOJIVo3y8gEbZeh7EAf18XSZ+Stih3RVue5O/IDUT8AdnVYafqnz0vSP3k
	 XJOmeAlIrSXHO3hLbt3eFlwZ6dSt5CtFpjiYlWPO0jcP+nkqIrX/zCuRa8WpFar4wf
	 YuHHY5IKA3PrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFF3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361049358.25245.9080125504203000513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93985134bbf56ad2c07b631ec8673e6bcd0f00eb7d8079f8d6f5378cc5ea23ee
Date: Sun, 15 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773610493
