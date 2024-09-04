Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BD4139D0B
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725484554; cv=none; b=H+Uo5CZQGXcrVmLwhoDO3zmSwTEu28xH6iVeG1MNw613eflOQuJuJCu02aARFND8hYxBEfKEwlL+7XkdmE1sMrCuD1jMyRglfsZddjbb136FQm0R7z5yujRalNisGJXxfSkYHqUDoWH5LL56DZzAvOYYVyhNSkkFcx13PXSrgFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725484554; c=relaxed/simple;
	bh=QYeOu0reTmqv97XTn1IVbhl8EVu9d8IggozPxGxc5Ms=;
	h=To:Subject:From:Message-Id:Date; b=Qoc7w/X0nInKXB2xbTY3fPxi2cG1gfaxI2AeE49KAwbEi4Sy1T+tWJWzFEa5563jCWaDH6fEVdX/LIUXeslYPGyRE4U+6OGZZOeUh7PKq4qtMV2OClnaNw6Tf312mJ2nSUiOClC0va2sfywYz1j7JrvNFyJKOFZtfBO9/5WavL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxDFlz94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxDFlz94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5AC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725484553;
	bh=QYeOu0reTmqv97XTn1IVbhl8EVu9d8IggozPxGxc5Ms=;
	h=To:Subject:From:Date:From;
	b=XxDFlz94UwK3qgo6GOLv9kzEHLWUE+jtpeQlkaJCgO75TgFTTETc0GnKlfHVHyI/h
	 IEmOCEEN0TcGKwtvMEIYvtlYH39cvwjElptH+e+3j2lds4OqOG73LGyZJsO/wZ1ipi
	 TJprQaay1wPngnVj5McsvN/ySsf2xSVtX7Q0AsuYeQo6dj5xjoWd0JH3/tnIo0N13d
	 7fRebyPCoIJ77BeggDZngvCkKjy3svs6EgsYbzMUNLskdl9NYJzF+RDu3rxsJGFgF7
	 szKq624gR+7k3qYV68FyoeXDiiebuhxVcYzN1XclzrHCowz4u5clmC08Px/0FYLwQt
	 nX/Sgtz6quEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D104CD4F30
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172548455363.24221.12609132834293205688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f523f2b713e4c2c56e9867165ab9785b53d4d9d0d4d27f5047b421bd21085e
Date: Wed, 04 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725484553
