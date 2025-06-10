Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E4921CFEC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749552593; cv=none; b=WYcqhTHdccYXmeaD5dYV2Qn6qSRL/JJqFgLAJgz7jzovpyYK6K7ptpos6MAmFWhKBa6X6vuqtDRobCYSwUYOIlH0q4GjxUplu909mtJ9F6fMZdz3zMmDE3ZxLucjgosZ24eLMvr+wi/iyIpWK2+10zxEqOddAonDdkwfLv80YY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749552593; c=relaxed/simple;
	bh=elT1owttU9Gmn19NABJImVq52E1iRRL3cPHxHMGgP7Y=;
	h=To:Subject:From:Message-Id:Date; b=M+dsXS5oHI1L6eafUCGyaoz7mQVgzjEvRpCnsLMeUjk3hGtLhZVimZT5YaBmz9beex3WUf/juArshlh8UGSmfy9n3YaaR0tfVSRsP9ilyMuanolsrcIHww4nD9m1/Lm48jlJcqk39TSp5LqE/Oafg4xulO8JZaZHXJDTKAvv5rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9bg/yeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9bg/yeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A94C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749552593;
	bh=elT1owttU9Gmn19NABJImVq52E1iRRL3cPHxHMGgP7Y=;
	h=To:Subject:From:Date:From;
	b=S9bg/yeQZnCufJevAfseWu1/p6G8vVDwYeBxoC7GXz6sOyiQCHcMNeWRpzHTk5GGq
	 tIzC0yWOmfju2uYvJhDs9IQf05xmMjyEqX7j9DZSPHlCmcjWgGTqE0QzvpgGVb9SkZ
	 ibEPgpjwGE6oYfbGK5yoON7eP6IzPgQQDslRHFrESIvBdXm34ZbU2ko39ls3b48U1b
	 wO6Iz7VeV36+PIp7S/HNVPVjAc8jeWfanzd05vqLeNKjJBEin/SP6tbd/9eT8Efdf6
	 5LOMRWe4HLcLlrDGC5R7TzWE2/OaVLfKqvgpkJZgI5V0jQIfC28XYBFIlkckg03Yt/
	 /Ll67dUmT0TZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280FC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955259358.11643.15875624031338447541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92985cc1b9073cd3291e1bc14cf8f078b943509340fe90bba0afc7c51828d3d9
Date: Tue, 10 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749552593
