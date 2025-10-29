Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD11E2EFDA5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761733193; cv=none; b=Uo4J0TYfxkwp617Kp1NCZEvb3erLYplJq2Ll1JViQvOJdUki1XzbuowUaIC4HccbewqKFkLWnkKADx+K5NgsBrBL3FNjswl5yFYuUG1PY+zy4JaMSXCvrBYd57Sb9n8ldEWljmbnjoC/4CJYzwaxl+9IE+E+Hsw229r6pNZXaWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761733193; c=relaxed/simple;
	bh=2zYY2wdvrzdhMQpjUhh42OdgYD6xMMy5VHwQe7S/f+s=;
	h=To:Subject:From:Message-Id:Date; b=iql62OeQ0mgIs8mnbk3bh0cJCMNdBaCdVXrXlogkx8PQDGj2u+Tyl9U/rCL5+NBCljoxM4KBAbyZYJNZBSTc34PRFmS0nlTRmLLMtv/KIXpdw4pQiEviIi93p/119Emf95DTqa5YEwuxOgcc8xSffjnDGJitkCne77Q75yQIZq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3CYMKB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3CYMKB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA3AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761733193;
	bh=2zYY2wdvrzdhMQpjUhh42OdgYD6xMMy5VHwQe7S/f+s=;
	h=To:Subject:From:Date:From;
	b=a3CYMKB1i0TSJ/lquycHjERzrkTy7kbBGpNDnXMnyXvQPSFYcUSV2aFwzerS+75bm
	 ebgo/KN+mThweW9MkFyfQOaFZaVvgJQ+1fBf7/KsMS/N1zNlZqvJaa5VhT82uDaKoe
	 QweIlzTij4O+6/Dr0HCerpmYJrl1lNw+pzQHlUqgyHvkmF6EUfsTXPEah2qK0GsAMW
	 5K7ixrwKLJ4xaNsYR5FN5WvmYMDl3fDs/TbdBtZZ6ErSK3Dde3KfjFj4m+EcGQ/DAd
	 hDcHkPgw0Sby1/HXGmruvYeDw8bAMa8kR5dQQYtXT2EDe82LLgGfTpek2uL+QD/xd+
	 wNEcqLV/xaCwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BCCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173319358.26513.4074648268715428584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5969ab44e34274ca01643558750a2a8239fd6fefdfa92cf2faea5d6dc83d2c67
Date: Wed, 29 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761733193
