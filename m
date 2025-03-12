Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C301A7264
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741757934; cv=none; b=OQq+gkup8OY2tf7ryr6bzLXQcsFbFEhAleXL4yhrpNU9bHg281JsYmk3oZVbla1nch6CqNpp85OzbgpvBGXpXESvKyppfjE32l/waxazgvr98AwKB+FHPBBv+yJXUiA6t5HWYJuJYfy7yTGVFR0tg06eQJ8qpiXQU9oZlTWJjuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741757934; c=relaxed/simple;
	bh=KmaEGvu30y2IqXP4Ori4CEqWrvDs3uK6Cw5o+hKfOsk=;
	h=To:Subject:From:Message-Id:Date; b=h9zlV/JaKT+Z49l1w4VT1l4hKDUU2JeykGI6D2ufRMWNMALy7n+9RQzz22/t6+7rsqlcSrjrYO2n8J45pJHSG/Dx/IjdZjS+gDza/TZgaQFfyf+26Zgq5u8e8qfOP/jKZOVuqYYQlOFpmAgFC3L94lMPpX1B3/PCqmKjEW09Ck0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG8h41em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG8h41em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40BFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741757933;
	bh=KmaEGvu30y2IqXP4Ori4CEqWrvDs3uK6Cw5o+hKfOsk=;
	h=To:Subject:From:Date:From;
	b=uG8h41em21j+XTvSn9wmoM1iLXSdpEtzJZl5RjTgpaD8Ki/v9gmiBwG/JCzQg7nwd
	 w5bghqmQjIaC8w/9mxJxQCPXE6Qxfw5nU/BY3CXE0TN4MWKVkXH3PKQHiza1tSOUtm
	 8zhDr4O68uUU1xlFoXtA5axSNhG5LbfCSJTepSdprbqoHu1fyGaSL5S0YMrBiFW5Nz
	 SCb48Md7zVG/kiGe4oIB7sb44VCbkHCyFEaYUKKxK+Tgwj7R3pAnNKMlp47f+mKNTZ
	 u+6FwUyqwNxES78hqwXBNA5cfXnE4eNFUNUZCyLmqvTlgwfzXuGbUKNkrIDFq3ZXTB
	 VqbmAYSV7dZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BCC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175793359.13077.12861866456417517580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9d00e7d63d1f1a0c97aee413546679f90ef07f0932c2e98fbc2cc0890024ee
Date: Wed, 12 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741757933
