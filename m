Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024E2153EA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775636134; cv=none; b=GR02prb4ukmIFRtc6G1VTUI/eD60HSLkYZv3f8o4o1AgqXQf5L1W6KZP5HT+xTKoLY+FOrYSrrTFr7eLIOZpM+Uu+79umrVf2Dm7RD8P2zGC2+bJEolZR6R97cVj+rs3O01COJa0L5CWaY78VaqbJtBBpNwXvI76FbvqCiinEbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775636134; c=relaxed/simple;
	bh=J8AU0Hairm7zbJGr6NvOqrwqYHo3oGVD9c2rxAgBYdY=;
	h=To:Subject:From:Message-Id:Date; b=kYd8VlorOq7tOu9iEaix6SBfXz/L95rqrLV94I6bplkT+kGhi6Nf9tRaWtU8CGfdAJeRzPDTh23WkOK1tkup6q2hKfLiV3f+546hCTl9zqKFog0bR+TOA0g0bCDkVOPPP7kL5YCdcxXTH6CMTPcIzHaCQGdutan1fShern7byyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEH146de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEH146de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D9C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775636133;
	bh=J8AU0Hairm7zbJGr6NvOqrwqYHo3oGVD9c2rxAgBYdY=;
	h=To:Subject:From:Date:From;
	b=WEH146dePwvuyV19sdqfwkaGvNT7f0vWljQHQbuxI9W/hSIHxAs406/wtP+eSikgH
	 UEH//V2sKzLZwmZxTza5gRuKwwEyBHXgydK8cSZAYNSk9SMiNf1UsmCNV3uLqLIXVj
	 KXtRSxAYd7D8yaRZkfzm/NOowINZRqhoXLndZNYufjg9RNk0AqNAQ0cm1hUw9Lfqt2
	 N4Q+oVKQ1G2k8fjMfuPuhYGelShy7hn3BD3w328Y0FiG8gPE9xGaPqvd/3uSHUpHkT
	 4h9FFTErm5ZuRRc+55V5BGx22yLoMPBuVF62Zwazzp1aYKGg8yhnd3k7xSt8IX6ouQ
	 +okXV62+IyB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC76BFD5F87
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563613369.6674.8893296515601248622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b93e018cb756f6ed35853a0d98aac5ec0fe3d3ef72afeaa4972875be67d4da
Date: Wed, 08 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775636133
