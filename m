Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA9E12FF69
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751104794; cv=none; b=WIck0RYcTNn5f7IiTwuEX7HUkLn2K3KHcpGPqAL26/89Po3Ln0brv5TaVULGPHKK2GOn4ectlBGYE/NaK+Ux0qo1hEOClUycYHTIbpWMIyQZ3iAlWtcHnlMhmdL4BwtpldAcs4+uYlUSS8h3moantnCg5sA0FVn8fQotIzmKJV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751104794; c=relaxed/simple;
	bh=XldEb/p8npLgee+Eq23gyFFqvag5gfiJ3kWCHW97X6k=;
	h=To:Subject:From:Message-Id:Date; b=eejnig5JFYJvzxlPQX3DR26pPH1xJddy7xWFlGN9t3VB0U/+xGCXy/NWzUE1s2V5ufiHafC8nj+ffOahOkmZh8X+U839A0uQz/cu9bkwXQHtmKE/XndbOCQmWmFyHmGJz9Z/dTYMP3qMkJ3+fem5bnfPGJUiKsgTHejt1wrWCZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9Zp5NQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9Zp5NQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7389C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751104793;
	bh=XldEb/p8npLgee+Eq23gyFFqvag5gfiJ3kWCHW97X6k=;
	h=To:Subject:From:Date:From;
	b=k9Zp5NQZXAMJ9rSm+K446KAdzF6i8RG2o/2qfIkjYmbecCwNzJxfZSGyunqKIosLv
	 nSZSeKNwz/AN3jM0OtYOSeqVVm+8LEjT6omF3XX9IXz/Q/QVd9JiaAcN5zpdAJu31b
	 82lw6jEZjGIwjEmcPYsHJnus21qCurzIm/9Xb8+bGxA/ZOIqsEht9LDjlo5phvQ5eS
	 16hff5LvMCO603A33mFPhq2Vda70PzTxAkjSuJgh9/W6tOkJEB+rdq1XkQb8Xt5Ulw
	 G2Yu2tG5ruqNYKymxD1WCPskdOGeoTLUpn3QTdXJ9ZA9F16fBnbJ26UtNPJzG16fr6
	 js8ou9FlAJutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D2DC7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110479359.20501.11539729572964608038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928eb05a90884abaab54c8e93050d9caf4ee451ace4ea431c9560507fb5364fd
Date: Sat, 28 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751104793
