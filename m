Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753D1FC0FC
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737110154; cv=none; b=P8L+rX4K6rohXX6LV9C9Wlw4W3C9OUPjtjCM+i+1r4Rmr48Og08xAX9FVszFZD7r4rsHQaRqDvuIHlQO5XS0m+aQWAtkIQaEATgjxttU8kMsG4yownk7eMCd+YF9e9Udv0aZObn4Euhhdtn/cS8vUH7gsnlTunoOc0KP9XDcKTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737110154; c=relaxed/simple;
	bh=Uy4pOKWYpVGKifEOSemXQiqn92vkzPmQj5I1ucxU+AY=;
	h=To:Subject:From:Message-Id:Date; b=ZclaTHXoLKYag1ICKXUUgM/f0DUPOnyNlUZWymI2CKPD+RpmVUvFHtxEU+TIf3xp3OkHn2bhibXj6Y6gWFwAp7u9XLiO3yWJfkrIB4cjR4+qrFYymPdwEn//D8hxcvqup3e+7IZxCF2PHbmQXEgxKg9t/GlwpG40v3iZqBz59tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3K5E3if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3K5E3if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737110153;
	bh=Uy4pOKWYpVGKifEOSemXQiqn92vkzPmQj5I1ucxU+AY=;
	h=To:Subject:From:Date:From;
	b=X3K5E3if8iN7sdmbzEjSCG6o6CJKGAYDe6vPF+wiCUIqDNzdMT02GCw1f1kp6BsYs
	 etRm5qlBgRqNfxa8UmwGzjDap1bcypTNSFGnT+LhKk1ybNlTzFY268PA8+IWvQIXcz
	 myhWZkpbK3QMvpuX+1y0LfSvLE9+mh+4cIIvqX8W2ask0gqIeiflPeG/XlGdH7lfFv
	 JnX07GxiAnnPuy8vVr5IWL7kAAch5+OgUNqebJBOUDNoDkNYiw8OX7Fqcp31WsgRtC
	 +EE4b3vq4ZwAb2whGfdw+FKBEhprC8zRjF16FJab/j+vNj8JHbqwmQDyduviwaZeQ+
	 eqUlVQ58zQjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FEC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711015358.5582.9326135355950713457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72031dc7eedb1277092ee6ffc6717afe62b6a5213e1a67700f5ce16c1df16cd9
Date: Fri, 17 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737110153
