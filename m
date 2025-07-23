Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B319237707
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753240794; cv=none; b=osW6j105zYjIrsPgt+RMMt0e6tyGXT9gBjcIaItUrcizG17zU28Ud7mpmuMLKS8f3roaBIcaCSdCb3qTzOOoirIqsMHOgmQ9lc/9yhz0h0dPm4P3Cf9JYcr03Q4PgQ3sb1PD5jiGRDgJCxA9jCzGaLNRKMKrMw2gavj8MrUGcfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753240794; c=relaxed/simple;
	bh=ZbOpBx/TbJLFvHykM3YraV8Kn2BJjhHLl3VfaYjXczc=;
	h=To:Subject:From:Message-Id:Date; b=El7nJzsX+Q38sHvcuWwbg6n2Qnf0pdU6wveM7VC1eumDxTqOptPURmytiuqbXTh5WpoRqYeSKXo0zxT48wA8tcV4E5OcWbN4bomkwsUt1TiSG+eWkXmu01iZAq/NmGMmlRVk+E+ufD94ZMNhCBijZIg/D566c53HDbNZdYfhMoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyvJvety; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyvJvety"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E45DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753240793;
	bh=ZbOpBx/TbJLFvHykM3YraV8Kn2BJjhHLl3VfaYjXczc=;
	h=To:Subject:From:Date:From;
	b=IyvJvetyNVHOX2N8sFRcLtotY+a0FpkRJEYGXuD6PZVwe3/+ZYUXje13wZ4hhVUMZ
	 SKHlgzVHtIwzBwQSdmjcjqeZ+tSgVQnUl5eNPfC5/7TTmjb5dy9b6h7xJaAFgaJZRd
	 2W2400P7E+ZYysmdjmfjqNvwYlIi5Wy5+hK/LdOOq4R6hq+RgkImIGFBMdFslme1EO
	 4Zi9g7maGtf4J5TN+uyB3NZwiDpFnh/L/yKwjrTG1HDWjqtgj8IMkAGtLG7zudwv2v
	 u7TynjyH5g66l/OFfv7Z8hDmo6x7naKuebGp+LPROjvFkWpqZUsvGvPLeuIVGA6Skr
	 EgAqz35452YLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9FC83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324079358.31993.410959553679390014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a627201ce6be4ef0a5884efecd4593106d839fc8420de46957a466b71e7c972
Date: Wed, 23 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753240793
