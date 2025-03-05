Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4278920469F
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741175334; cv=none; b=ekGf4fOJvKGDEDsCWOqAEXd9JrITWfy4JbiTOotLBpWfe4puEmm27YeuWyjoUqgKMLZAHmDYrRjnXrYV1r6W6hohgAji2lMsGvb1Y51c6tkod6sVrqMYYbKgQlhCIsK4Zc3kapdm5it3IsrWW1EEzayt/CwVmo9NV9BoMHBHPkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741175334; c=relaxed/simple;
	bh=JCBKwisESK78MsSP/nGkIXR4d3gaZid1dCYcFVeKYyo=;
	h=To:Subject:From:Message-Id:Date; b=SJ/YiNoVhpbS0U8JmRemc+nJcwMHgdTg8cvO6g2ARe8iDrUOh4MPCUKRl5WpDktfaO5oLT6ghavSvTAioickZD/W1ldG6fVYxhGJfyhZh2KS8/HbcYy4XqgzbKbZqcKay3t5NJYj8984QgDyHYNtdKYJRehvKgiGuXg0XhiGX50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0QdLC7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0QdLC7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7CFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741175333;
	bh=JCBKwisESK78MsSP/nGkIXR4d3gaZid1dCYcFVeKYyo=;
	h=To:Subject:From:Date:From;
	b=S0QdLC7QyOQILRgMef2ReCffgl7NdooE03xWzdw+caxWtvNX6PxA3sQEpXuAs+Y6g
	 asp9u/AWoik8l8SholgAlR9tIoo3fJXHia5s21OhRjgLZrfSkTMf8SALRRSi1CEb6S
	 qMDYJXaZr/i8nusouX+LhIVmUukbWlDZT5qYFvHYDfNCcXGni3I/TSVKvAkUxqsqnd
	 u3/0JndMQ+fT4uBgsKs+a/YC3+qQEelasPl0RYOdLecDL9w2IqEI/UyBmudSSuuOhd
	 yRmQjsROZt3KdN8HPN+ylirIPjvK39I3o7LOrcXNimO2PUTAETke2KG8cm2obdcQKe
	 X0elQzmBSycsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9883FC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117533361.5659.7238933945659096061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a82198310f34cea49003ac9fc11de94d4880a35869d5da46ec564908c56f17
Date: Wed, 05 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741175333
