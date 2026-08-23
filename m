Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480492EB10
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787452834; cv=none; b=di84Y8CPckBhe4EUzLWqcADaInTOoXEYF+dFFwtKYBzQgRzMNn//f4SVEA4HRg1MBTItl2lyet4u/aC9gk9p3v79BR3Kf3OLca1hn0F+5x/KWEuIO1IV/9opqZuef9bravmnk39cZ+0U+Ay5EIpPGfYT82Uk1+bxF8xyxqgml5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787452834; c=relaxed/simple;
	bh=gU9c/QvVgs6uVIkBfOKrHSTQER6Sw92f63PaHVkkb9I=;
	h=To:Subject:From:Message-Id:Date; b=IxZRlzRkj1NvFbTgW5oGx+uLbQTPQxLRjKXa777Qk2JJQshGncoJcZ5UrOMEgSIt8tbp28F8608UQypw6lVBf72SES1PBjHAp/kAkoGxkfuGq2Afzigue0lG1Jmg76f94yMbpDT8vYUSMLJZ3Q+GYpVs9fTAva+7U7rsaLsSWf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K97d9NTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K97d9NTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D899AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787452833;
	bh=gU9c/QvVgs6uVIkBfOKrHSTQER6Sw92f63PaHVkkb9I=;
	h=To:Subject:From:Date:From;
	b=K97d9NTsoHMm2jwLjk8xGs6XIERIA97RotftOEVuNWxKD7Re6c35kfGAXOkqVx79S
	 oU7TUjQ3dIlbhC+rBBp6JCN09HzFlHHxdSpxVbM9Pb5J+HJBqFALB5jB0opL9oDipv
	 WpfOrfly/65Se3RPKdc6V9wF6bOVhrNK6zuN2bZQCpSQcQfK1Emqu+e4ovjqAxpUc5
	 LIZ8hhWZmZQsjyM0f0GtURmgqVcPrZ9u6NuM7PYcKloq1N6cCeDSoFhMPRIZALoy59
	 1xvhSg3HRi4qNj++ZIgAN+RFW7ZAo0JMGIm85dTmJf0ilbolFz/Hri9g/+/wALoO6T
	 7hWlBR+wEjc7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEF6C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745283370.16893.1601468763556383947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1e6aff700d03299c2999837a133992b85e187c29784a6910032a5a7b7248f2
Date: Sun, 23 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787452833
