Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11FC33B964
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764925975; cv=none; b=Ak6xPdlEY3A83LIAMt7Fto1NSwi14tIyoDVwCPZDc9MApvgf3cc9jEg3Hyzr66CxFuBBmMn/E/DkYlDNZ986UhnAsVvIqzquSCaf+VqCCeVeEiVl1wT9rk/HZ+q5dJFYhftYQp2zF1XfiWjXATKtQZ7or2aDH1GueuIrMtOYq8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764925975; c=relaxed/simple;
	bh=qBNkuN5WynN9wdFQYZ3Ai1WmuDoI6a+wOgR1e9qs2JY=;
	h=To:Subject:From:Message-Id:Date; b=CLWI5MpuGmnEV0V87FR71jaOnKnuVWNolHPwMQpJ1OMZRKfW5AqCuCKV5aOsRaEaBZvUewBavNz5crhaj8OxzjX+AemX4qhT7J4z9/Udl97BeleVqAVOwMyqult9z+ecg6ClYac6vlgtJNFrMzF/C6m+nk5lcAqBKOmG+1OGQWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUyP+BVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUyP+BVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764925973;
	bh=qBNkuN5WynN9wdFQYZ3Ai1WmuDoI6a+wOgR1e9qs2JY=;
	h=To:Subject:From:Date:From;
	b=kUyP+BVz2SiqEiWQMIIANNCQLQb9IJuEKjx1wJewZFfsxONauVasovStFTwc9+hPD
	 tDnsmFqk0KpfAOLD0FXWOTPJQV1j6+PKlfbo/ikIkcufmVoOK1leww0iPWJDzOIiVA
	 NZN1Zo/jrMiQ5ABRkQvUm3MUF6VsofUpFacKH/uTh0Lv/Ttkv8tfXDIYnVY9xgfSyg
	 uN7mej7eKQ2/C3R9yEZC79N7JkfNxE78wFneP3IeotM7S74u+z0IZesR3k61sc50Ak
	 SQQuZ0051noxQLvr2thj0Q4eirP0mCcsPQs7KA7wsc2n88EWQiwOLIHgdr4o5BShh1
	 REbzTNpwP/ktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB8D2F7C6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492597358.25786.10148459047812947709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9b30cf00c2839cbffe1fe9e04795b628530abef9d581ffc1cf43c9e9d4467e
Date: Fri, 05 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764925973
