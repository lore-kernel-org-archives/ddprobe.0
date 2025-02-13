Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF74A01
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739426934; cv=none; b=i8huhP1iQVRodQrQDeTVrCqk/KEkPEZS5BWzh1EmPG8PRWMC3+wEon2HfzRCs0ZRUccWJUGxZzo5L6hxsXAqCet/++7E86rBr676QysAmHItoXGx0uumO1Z5ClFDzc4I1Wq0l/e8qC7FDZi1ryx7IdzfFZcScWq15XpYXMLTkgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739426934; c=relaxed/simple;
	bh=/D2PjAbS/7R4RqU43Wwnj1rsldei8dq9wImOe7K3S4g=;
	h=To:Subject:From:Message-Id:Date; b=RDI+iwK4UD2OdeFtWfTPjpW+d4fU8sT4Z73/PK4ITVNfpLyLs41TcIh2eEFq0n9uUtKwH1xIsm6UZstd0IPB+BBLrgwa4I2Jv8z6onzYtxL7iUlMkyTRrqyR/lbUzGoGv067WkdELVV+K5DbFApwQXKbiNroIb54xgb7twDZg8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9wNoa8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9wNoa8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B15C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739426933;
	bh=/D2PjAbS/7R4RqU43Wwnj1rsldei8dq9wImOe7K3S4g=;
	h=To:Subject:From:Date:From;
	b=d9wNoa8Bylxbmw92zPa6dKmr/cyUX3qD3s+udkD2KBkDnH2biTIdy6SbL9cQGEUXe
	 vBayL8nsBGtXq9OB3Ada9i+03xZgc04xhBH6PsAP+P2Q/5TiF4CZGwjtLvEwOzPluq
	 hUe9y22UFI8zG5Guc7qvNjxBY8bvvIY7tv50b60WwigAl0ycDCJ+9N2CLfQIEzk7HA
	 f9KarJUFgfXaPsDzLYif74jR+uTZHMRun2OsUtx4rhtYEMwHfg6FmhimcMffLYmef/
	 48df64DrAtOo+IVmw3eApipgpsOXwIvDIQTxNmUkQ5iUWomw+7jHXDe31bfiWZIx9Z
	 tbVVNpbZBE3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF8C021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942693359.15363.1241307726459351981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e6874b5aea1c5565162cf78f403612f071b0cffefc93969d84fe7a3a0f2f2f
Date: Thu, 13 Feb 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739426933
