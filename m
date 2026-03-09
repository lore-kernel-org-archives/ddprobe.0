Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1F518859B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773021894; cv=none; b=qzof+EMKKLqK2kE4zXQ+2c1XeUYVhKAR+h/qhSF2oLoj8TyMd9EIXpGDF/3eUfSKtWc7n5yzTir4rFWrR9kQSsGwUO3TNQLnaJLBGjXcu5E9aavrikB9MFtUjI+6dTJZ8dtveo3IjftYKK/+clBp1hrjDg2XSn4wy8JGIApvCho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773021894; c=relaxed/simple;
	bh=tTTF2J9h37BVw2fMLTIkF5f3qhPP+XFPdYY5NyT+qnM=;
	h=To:Subject:From:Message-Id:Date; b=i0qKYRmTuIIfwcmXGKucrCAHC5hPZ70qTzZAQLN2O9NugblNlIwqnZWLhBAG6X57z0CDZQPBE7j2NPkCUCC5JMEpYeVYSazuw4mFDWdv5ba/Ya8mH7qv9z7HXZQ4kXwrGsFdSmFu7JMYNWiw1QZFdiYgjhb3ECUFoAkaT2JoyJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJLC1AkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJLC1AkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F7DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773021893;
	bh=tTTF2J9h37BVw2fMLTIkF5f3qhPP+XFPdYY5NyT+qnM=;
	h=To:Subject:From:Date:From;
	b=AJLC1AkFs8X/hL6HfXUB93XkGaAKZXvOvNT1UygLiT8PrujjR0hvS8PWxfuYVE5Wx
	 v1Ka91aUobe5LI96Erp17vjSs7aa66T2sLlIohNpw02F8aNdvwK9XxklQJPhyIwvNR
	 sqxVjAxsXhVw+VyObzrQgXnVMdwRXYsVkmS1ubdopuYtxIAHQDJpn4v0eYVP6lY0UR
	 G0fZdQLjfFQlFgBi7zTH081NLYkptXmBkrRASVkzECOeWuxJAyeB6E3aDJbfJymMS9
	 TkBzkQfaEfTOcEWqug13inOHPzQSUaABiJmU3ntjqcS+acwghcpNlOgDI/Gr8PyNI+
	 EZ+4jfnMztGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8AEA854C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302189358.26684.17009654140700572622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5991693d3c3fdb9b5b18ec754cdc990d70ac503491f41567cdf0a3ee65405e31
Date: Mon, 09 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773021893
