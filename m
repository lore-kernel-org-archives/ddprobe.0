Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121519CCF5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778033854; cv=none; b=KFH1g0cHpKhB5sWphD5yY1xHsWztCAinwmLPQ6l1GxH5SP4TaOeOvYeLCX6gJKxrmpwcFN6uIZ1TgudSpiMHL6anLcr5zQwVRA6OSaNVNXhnncnnhGBOG4TJ4FILvfecLL6pVvRjI5uveI7UQMGdIbHeRT2DODRei10Fd2P46ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778033854; c=relaxed/simple;
	bh=xsmU4zgnLlLae97jxN9F6r5sIrZUZ4vZEWcxDGcWEXA=;
	h=To:Subject:From:Message-Id:Date; b=BYl1VM5p6oNOq0hmsbuGK8oAkYKvA07c9ARzFbeMflpBcc6oPLive9UhSIRbdmeQHC+j/VCQDbK7vpgpb7qxEAtWOqhcELz8HhpS1c5Ra9wOoMpbSd3xJpwP8qb6XLajevW5uqbwHSe0HRLI57MohoAlOEFqpgessdq43r4z5qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkYTUZSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkYTUZSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DB7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778033853;
	bh=xsmU4zgnLlLae97jxN9F6r5sIrZUZ4vZEWcxDGcWEXA=;
	h=To:Subject:From:Date:From;
	b=tkYTUZSiRnPObqz2emPrhylobeW+zb51L7cCbdtPQFQ2mg73+5cUD0Tc+hgKG40EW
	 /ULE/9tGEELcBliMofj1BZlfWtvvKj1qfQiboPGSpyfDtnh5xYOIJsk3KdnX4+l371
	 GDqFi9CNZmRSHjm0mzijAyDdFxG6aFtmGQG4g2Vx9+FJKt6CDsxpXEGxlIjufBCQXB
	 L776oOq7n9MdOhXJ1txbOSXPHJck7aelK5N0gKrHI7sQhG1IMLjX0zrzCP/L2zy/dC
	 C0u1kDV+7q7I/ieJbDlz/DorUGf3KSJ8iYga+j7xLCquLHVZaq9Fkc6IHTZMApMNQQ
	 EXejYdHpD8HZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C35CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803385371.29885.18367871425587180113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771f52559df39fd9f3999252839645da3ba8fa4bf26b5b0131cd2aff3b577376
Date: Wed, 06 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778033853
