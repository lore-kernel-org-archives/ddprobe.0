Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3230B4949E3
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778085454; cv=none; b=KgC30mqfxHHYqKjP6EIOxgHK6wdhaYpHQoc7hQiv+Wx43v5/dNyH+LqoxSOmVEfzu/ZJl01I9XUZ0MXG5LCmqkIk5WsTDzrsCnW58DXmaFfEJ+8CsIMXX54Epev3VZcQtjKvGCzVyNniVNSvqA5s2oOuQlRYZpCaJjbU7xco7/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778085454; c=relaxed/simple;
	bh=D39Sc+jRkKtNzmSszDTqTQ6+HBz2QaRj+0Xrn071CHg=;
	h=To:Subject:From:Message-Id:Date; b=Q2/50VRz52s6xDYRHDDzDymejxa3Cltyn4WQh52bXFY0okBEjIyFoTNFHUco+pp+dUtY/CdhdUh8RGkGXGOqt2rnCGFMiGD31fDeTs1Cx7L5SvJedajsYOhAAe19EoI2Y8mFxGoSv8Y4pvVUgvC5zLV2ZdX+4IkkPkWDM7jrcnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCYFdOVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCYFdOVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9332C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778085453;
	bh=D39Sc+jRkKtNzmSszDTqTQ6+HBz2QaRj+0Xrn071CHg=;
	h=To:Subject:From:Date:From;
	b=KCYFdOVC4zsnzOkrRdZgxl8bsdMVwKXqWDuqnVcCJxoJaqtA+aY3TvnotkvRj5JuG
	 M1vdYx37pKnTdLDB9bVlrfBDTZ1KJcjePthZ3lYjOUqaPf+xRwPaZxkMqEST5x9Rid
	 69PJmfK9OxklxwyncJwnr+y6sKNjAoYfBQt1jep7XaJK5K1ICekWn07TaImbOL+ERz
	 JMzZXxg8GSny6xmy0C8k08XGDMC7648L0dZVFNC3HG7Tf7Ro/cv+cb4IrebjG+xyuc
	 9MH9FMzP4RXFgjyJFvjcb3z5Xi/Xtg7ZCsIbjE881/59BzHRXh5vJhZhxYohzVr/Ad
	 dnRfcJOEcYTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F1CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808545368.7635.2314021062691549066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c9838584e90cf084d4721e857d6649c717b3c873242738ad3cfc5a50847603
Date: Wed, 06 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778085453
