Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1D3D6475
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777937854; cv=none; b=Y2qo0chKlKlQbCJmXSYPwshXUg240TlYUEZq4M1vqNTdOlwRCuq8u7GZwYHS/RoGp8ZSHvNtMKvtUb4vZ8ul0vWwxPzfLr50IpYBE1Owvjj2l6WFNSrk5rAzJJYYWC5EAEc8HbLXrE6queECvVqO91obYuIVVaeVbkZvVvNTvq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777937854; c=relaxed/simple;
	bh=WeVI8NDGGiwCQftuxfMRt5ll6dzyU72tGNYGMQ8h7HY=;
	h=To:Subject:From:Message-Id:Date; b=HI+MDXb+qE3cW/9RW+aXN0PumgygIqMi5SADWng4oAqBy6WPv+PUt959RP5hqsTlBhe6pki3c4s0e25gtzU0iYPTLhngknrfp+s7q8vQendDukOHvKy6mtyAR107A+e3c2LsqQSA4WfYze6IksABAUbEUE/kD7ifeINQgh02Y7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZS3GsAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZS3GsAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD97C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777937853;
	bh=WeVI8NDGGiwCQftuxfMRt5ll6dzyU72tGNYGMQ8h7HY=;
	h=To:Subject:From:Date:From;
	b=eZS3GsAmjFGnWtTHoT9TmhXlOyu3mU1IicwPprlhxJjXHzSnznKFeszL1GdIjD036
	 q5jCgE69LrdsjY2N28XNfhXWohsXpp3NMwQO868O4inXNZVHoqYeeK894jE3gxmUp5
	 Jby+vD5tkJVxkQV5ofDPOkDnHScJ2ZG0R2MITj2zamNNmICf3tN2LGpdq0pWdIzHXo
	 Ykk9LmG8vS17O2VqdjuvGidYqbgpEDbwwwv0taqj4RYQRpeO+e2E07s4cA+yeyn8tU
	 0XxQPLCiJn82rcGo0V5N4PU3gTYRSh43j0QlnHaBt5mmw8mK/VU1z737r+LjV5I4WE
	 77vHzVAaZAfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD0CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793785368.27396.15247841659649701519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5fc8af8abcaf09263d48cec319474829792f18688f583b7b7cf30da5471e81
Date: Mon, 04 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777937853
