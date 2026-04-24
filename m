Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32DB3EF646
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777055253; cv=none; b=srKS5793hqtYbLzE1A1HH1Aur1K+VpSpvOznZKd5j1107S5UqyXQyrKtb5vZbVj+edUfm8fqYd7km3O4lYA+XWHb1FanvPFZgSnSluyKxpAXP8pVkI4mqobqqS7JwBVLTplU+k3NN+msEfvefIypulBF13UtRdd4gfC642FaHD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777055253; c=relaxed/simple;
	bh=iXfAeBumwYcEfFh71cSZfKPklfZW5QVbKKFm9ioddmg=;
	h=To:Subject:From:Message-Id:Date; b=oYWa5m6spDsyzpXCwCPTBA59dRK99RUlkKI1mDdAxysQmjHzi7dsyWdIVK6+Pjc9D0F7830+OWXBoXv1RQ/+AT57njrH2fVGqEY3E8Wy5KwERjPDB8h2GbT7Tg70JdTxCYZ2gNnyjBSA7S/P8uatqfixytCE01ncJEUbtgGG/mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLWT8HXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLWT8HXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9103C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777055253;
	bh=iXfAeBumwYcEfFh71cSZfKPklfZW5QVbKKFm9ioddmg=;
	h=To:Subject:From:Date:From;
	b=VLWT8HXgT2qj2MYO9q94zL4OQpgmWfQ9kkShJsbD/2/iidqErs3VE3akhQ4RZ7ocg
	 8CpoaoHh3uZoHvu/knEUVd04Fe01j5UqMgzGRu+mCbcDwxrezML/5XV7Wfy2c0Q0e2
	 F+05w/xs0Dz0K4RHSEjIGyL/lh/txyPrMl1k5HqJQM5Xk1BvvUpVL3i3wNPkQo8wh4
	 dncgwH6AFDLC4IY9+u17DbaWqNmzWyKy+dicRJ9jp9P+fHW7vE2o10/zilSnOZQuRm
	 m7Xsc0ybsRTAaz+RiBsUo1Q69+cuCSsnASla5SiIg4q99sBWK/ek9w8DYmuYWJ9Pw6
	 DmK4Om5FHC5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5ACFED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705525368.19269.15258663794831789123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6224764d600c3b16f89b5990dc936f0b2e66e9a0bafedc7c032bbc651daaf91e
Date: Fri, 24 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777055253
