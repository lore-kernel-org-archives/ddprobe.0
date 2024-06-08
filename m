Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10B91FDD
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717828643; cv=none; b=XSjObc2W1QHndWgaUZAvPUNIVrasAcjdPw2uRmd9aHfeQWjgNf9ViadVPoVI/FONhtoc9i5820U5SWf14/dZk8OBfjuy8XIq42BeIZLKfvt5TqL4SiMhPpajL8+njhPorQXmU2z8qx4G4wtYLXDtiSpNRNDa8nUqcjNSH7yY3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717828643; c=relaxed/simple;
	bh=tf/ez8egPVUjwwG61qmS1wKiYWPrnwqBRiwiFqR9nhI=;
	h=To:Subject:From:Message-Id:Date; b=I/C7Pr1aSODCY8f8v8A6VfJMXAI9E2yUfcUvECNnpmVb/0Tu95m6wWE2rBwpeLcczMrS8JrfnjL8/+HMvXt5mNvllzH7Po/+yIaWmpe1qIu99iXalu59GmrtmDke2NP8Wdan64LEmy9AgC79AChi8sLG0bh2Z8tEw1j5x8LBAr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpuM80pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpuM80pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05AFFC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717828643;
	bh=tf/ez8egPVUjwwG61qmS1wKiYWPrnwqBRiwiFqR9nhI=;
	h=To:Subject:From:Date:From;
	b=fpuM80pbfdhSvdaLZ9NPBV7PugKlnvicqcumFXFmqB+JC1KPOG4vwkEHZwghXOn08
	 O/BvG5rVfQRcCHIiujRkzAFJSZOg1uXlfC6ARbbp1mPEB40SbeneCAEL9fNeIu8EGN
	 6y72X/ys9J2xh/fHQEdWCup7xk0Z9iMEwXhlMGPjZW/oK9BMzHLzK1tjj9vCoI8bm4
	 U8vfea+pj5k+a/WA5NFzJRWd383kBNTLc3GuraKOEiB7IWwaSB9wWoFZImECmIoeU5
	 fzOjOIW+GLfUUg0cYgfjY6ek5A0UpOB73Tjv+Qru8S8OFuEuVMpljft62vqUyfVKVd
	 nlS8gooXis+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6CADC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782864283.9905.15633957108929610922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0511f0ae3a0cc93daacb457fee7298a26064758220558e5b1be0926737aa8a3a
Date: Sat, 08 Jun 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717828642
