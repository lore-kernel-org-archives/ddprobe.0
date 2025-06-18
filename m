Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416B020409A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750273794; cv=none; b=FEBnm2wGsJpp2XkTL8VOgielej5+NDbqhLliqMSGlyQKy9iuhN/2D0cnXgknh02bUCmh5biexV1j/Qe/C78fdDe7blK0AH3v7EeE1cl2nwyc1ZYDYCtjwJJ5Qkty6QcRp6gI18r30HnKBxSXpTbXecgK9k1k0u9H0Ir+w4l+ki8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750273794; c=relaxed/simple;
	bh=iLbKTYYycx7MvdkLKdkc5E51/CYXvPfDx4SaxK9mC6I=;
	h=To:Subject:From:Message-Id:Date; b=DqaGoVCQty/D9COx4qOtnfTbl0yYO6tcs6eFCKkJ0dcHivtT1/KGd0yIs8kAWnKIv3sWRdmBEA9khg2jyISLEL+mggYEviu5CRAjVziErz0Pnckh0k+DN1KSoxct+cR55niAIUGVXKHkTuPv+7pXu3uSZVPmcqxpyAlR3FkOs+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGQrX7NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGQrX7NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF2EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750273793;
	bh=iLbKTYYycx7MvdkLKdkc5E51/CYXvPfDx4SaxK9mC6I=;
	h=To:Subject:From:Date:From;
	b=YGQrX7NY2XeFmpjvWgMaEM5ZKHpFyNNStrvHOKA7A/C4D0UMPaVTFUHouG+Iq2Gko
	 XG5iavkL1OssXd8jYEFInbHTWyZljHRtvK7sT9kXZ9Hx1XXvKQQDtm4N4T4mZGijez
	 8w2LqyHrTog7hc3oteP/m+W1h8PQOCo2CkXZ1ztuJgLc6afe+kq2KO7zqolCsut0w5
	 ZkKTQHkrZwdhy0oYCH2leuKmhbaIUOYw5j9tfd3q3B5zE5M0aFPG49lrZhxlU+3w7J
	 49wZ7qP7d877t8VlcTXoSNQ06MxqyLv+aqJtnyv7m4CNr+aR7OxR4zhgycDo7slc0x
	 pQfH5uK7kXATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96897C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027379359.22852.9309153841156594171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2621a587324a959b41666a9fe215faa849da2cffb1b1818e70edc363b66af7
Date: Wed, 18 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750273793
