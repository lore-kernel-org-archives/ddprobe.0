Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3060563CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759720194; cv=none; b=XsezcdXJV4qAm1BafNSYcoe7SB45/tTWc0RwvT/hduhSXUu0cE+s3wrheK35/PrSU1iWpn8tnaJRFsKyJDsZuzOEM4pMzdiJ58dtXvoakYgEfZUeghVOXxMCUx7Qr0AXfRex+vrHeXN1KyWLc50hB58OxpZMfOcpYtXwXqXfQNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759720194; c=relaxed/simple;
	bh=oXq2uLQsLwb25DQh9ihKEl2XcN8MbryAceGv7NJM0Pc=;
	h=To:Subject:From:Message-Id:Date; b=VqwT2+JUF1q8g1OiVNJ6obzAbX+nEbALvob1A9oZHD4yYfyR87CxMZYNtFqh3t+lm7Y65GF05B+6xjGhUiAskl8yLzoo+IKo75TyoF1xD32oDdxnWwWebSYWYKK/rZv7s7Ei906QdsVjNyCxR6hkWWHnuC+7stj8oK0lefqVNZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtpyaHYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtpyaHYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B12C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759720193;
	bh=oXq2uLQsLwb25DQh9ihKEl2XcN8MbryAceGv7NJM0Pc=;
	h=To:Subject:From:Date:From;
	b=dtpyaHYW+eFtN1HMASqfGSWeMYG6K4PgWgT8ohc0mwFtiZTIuqS8aSV3IBNbO4Tje
	 Pyr4QFMDjyKLBfVrmJDDhPT5/VUin0IdjQk/0uEH2vIPp3IGu1YVYze3vi2xOLEgcm
	 h4oMlyeIjpn87eLSB5UBCTfVKjBa61tOG6Y8uGqf4x7TFPDx8nYcRf3RnqWqbr4oWw
	 Wxvpy4EqWsUqGpzxC7+7T8+UNWVtXqY+exMzSOdwiz2Rdmx5jYG/7xJgfuaWGP+gO7
	 mF1TkCZc+LG2tNnrog3GHNE6Gu3U3mXz57w3AanR1RfxNpGhw24cObmBaJcXAdE6qw
	 v3u6El98Twv0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEBCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972019358.24665.1523538659409420895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89857e87f3bd64a27fb3ceff77aab5b362be09f42c79fe589d7032c2acc17b0e
Date: Mon, 06 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759720193
