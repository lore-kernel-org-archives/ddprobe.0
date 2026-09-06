Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C5333ADAE
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788660034; cv=none; b=l1cp/tqmsUTWPkaYQY2hKWC5y3Ohv6guxnPZebnsRnfDVWxYF3tR/fCEFT+NzrFGrK7IBbI0z7beDhKfFyEC6ZvRCnZJbSSiJWRLMGU2UczYEXkQpAbZyFL8Yo9XWhgHveF8yHJGQZQd2QghJWBhWiN8tc0s3B9VD3wn6ZsUbBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788660034; c=relaxed/simple;
	bh=409wbz2pLuIXZcPbxZI8N8x+APQrGHUMnKwIn7tV43k=;
	h=To:Subject:From:Message-Id:Date; b=YM2yF2T/sKgATM0RiVcu2VglFXmmZZZhjmYKgsGG1UAMqoQlUbtJA0hG8jPbdvaURmVxLmRsPD5+GDsgyF9l/0DiJBZvy/OR8bk87CCL3QC7xWu5CdjnKXEbD7cZAFACY6mFpvWxS4u0qxYfYTVjb/DUjjPzYqrEnF1IRjjj9HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1Mj+HhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1Mj+HhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A47C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788660033;
	bh=409wbz2pLuIXZcPbxZI8N8x+APQrGHUMnKwIn7tV43k=;
	h=To:Subject:From:Date:From;
	b=t1Mj+HhVdY5ZHobrC82E9y7fUC12auUaKqtod7ZkIqTcuQDxe2yg83ubvhbJTdwYc
	 4KVCZ9gm7AbfHmBZblRldkLTIfYaRNsr5nn0fPiG4f71taibtGcRAJDz/+sNSs3Gs1
	 J1hB3DM+dcg3ArLs58RZNtIcNGKrKfJD4gEYifeDXH79uMotLMrruzG4pqotkm44z/
	 7lqEPnWzsdCMAjhgQyGkylDKotTTxiIJlUqcn4J0VJ9flH6LFpAoa6vq1dtEiKQqKC
	 dQ2nW2AuzqjO1vj9OcuL7Bn4tDeByobcyGwFhxC6CZcXj0X9+3jnfoGRbRtdlpnqtk
	 ZHZ1vmC4ClnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C81C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866003369.22130.1213675561065758759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9073720bfb4df91fe2f165767b868a6b356fa6b9f7c588bacf87d51804e462
Date: Sun, 06 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788660033
