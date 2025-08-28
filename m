Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3132765EB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756407594; cv=none; b=irD9zUmCjp5yWtW5P48O397dFot8Nmw4Qzyayyyd+FZidc7Wr4Daxj7u5z/oszSZ6ekpjs2OxGucj4PVHlibP+TFWv5yV24Zs+MzFgLlhFqm3wDptWz8sW6FuEIRHNvqsH9Jd/ocOrF3xV/ufItVuVyzctqP2s9AjnpSxwM/U3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756407594; c=relaxed/simple;
	bh=F1ck/56Qjd5veASBzBue4/zIpvLeRX9J2yFZTV24N74=;
	h=To:Subject:From:Message-Id:Date; b=AhKmLUN+XgP6P0fQYLzVvVUKVoyIIJVEdpVUvRCKgbBcA6Ek5jiKlPx2BPD21pKQUrrF1g5Gd/Zg9/jNjzWXB6ZFk9kF1mtRNcXxL/+pV5HgAMSeGHnGB8y64O3zUYq2YJHSyW8qA9HfooOVrugi/jACxsWlYSKQYUT9v7UxtdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEnzOh8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEnzOh8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFB5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756407593;
	bh=F1ck/56Qjd5veASBzBue4/zIpvLeRX9J2yFZTV24N74=;
	h=To:Subject:From:Date:From;
	b=dEnzOh8LdNl+7LKN3h7EK1OFDFhLhj0kdmz9l0EkcnECjhWOmsbbevsxr0oZK+06z
	 v0ZJ5g95vAsM0gHShljwzSNAMjkXKPIQbBtbowwlxIwdABSTNuOCkX2aTgIwpb60WT
	 FuHad8jm/XHazCPF6H+UVU7UfA4O6e0UGpkVZlcdgwcqgaldZsK0jgTABhI8f4RHRu
	 Yn+8b3CGoV/NL7YZT4tuhF/uInYwLgqEr41H9p4wKEB6vJGMf55S7mdEa55eGOXbWz
	 U2QYsn374M72tQgIyPu7qXRdL4MtmmQgfOTmdIz7xNYwzCEN+co1VsEthCVsCkhK+5
	 uE4Jlq5ZGM7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E849C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640759357.25299.16499601526655299782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d213310d0f95dd0b89f4ab58e6ec4d21a78df6693675af34a6602e7074dcae
Date: Thu, 28 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756407593
