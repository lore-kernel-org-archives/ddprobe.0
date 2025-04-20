Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348421CDA3F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745183994; cv=none; b=B1FhzNBDvI3tPsG2ZkheLcO/bO5/yS3v0gv8j1M3ltB23LJg39YK6oKwP6JUit/G8YoViYKSFAYubTzPBIeqH2Hcsty+SeGYQB60J+EFiICo57Xp984FbDpWQ1HsEn97WAsovjkU4Z78FoFAjLcD9gOiiz8vO19uLg1a53x4oxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745183994; c=relaxed/simple;
	bh=edhGOb5UB8nwNRQFCatsl2dIWjzwC1cuIj+rfC8x24U=;
	h=To:Subject:From:Message-Id:Date; b=AP/8Jq37zPq9mfaQcaMkLFo2NMxuARz31yYh6DtEqxZBiNke7Mz48Ku5cvvOiiGrdg8uQ2f7k4whAbkHj8v+UsDiFyjnQ6inJgYd8siKf2Laoa10iWgWqRf9fbR241uVL33H1PM3/By5mfA/EIevksVV/sLLB4AsrwQJ8LnoFuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIv+mGTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIv+mGTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745183993;
	bh=edhGOb5UB8nwNRQFCatsl2dIWjzwC1cuIj+rfC8x24U=;
	h=To:Subject:From:Date:From;
	b=rIv+mGTBHy9C4+aCchse9ZP7NSTFuQnZHrEgJsqlyZKaILhyjPFfFK1tBsaHrBqtt
	 PbK+PMhtHDemVDq4+SuMVfF43EvV8axzErJp/S8FN0PTzixhjT6JfbIml3mVtNYzls
	 Q37K+sAX1KBh/EzwBCWuXUZavI5QSp49UGWyMIcMnOkz5ej4MC15ploYmZHtvObiRB
	 ed4RUYayUbYGtlGthqmRYOIGFuDPTcgRtVY7xOBwBWYUC7pVbpQisVSDng2KF7BBRV
	 FczS09iTNzc8bYBS2DXnuJ20YVq5CKm5sTaZ6C31uU9cfu4huaJPuybWJghimwcEbj
	 CnfPuzBtxlsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94870C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518399357.20781.2023109537230006595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed2f486db67a1d7bf13be32b2232c45d9fe93cd44e577f20495ad6cde71b0f3
Date: Sun, 20 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745183993
