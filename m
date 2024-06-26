Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D16A11184
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719366803; cv=none; b=rXzD0wnIkdSs2NudXSxpAo3qXx04pzqO58bLTfFwXSl9u3h1JkaHvwh68UBb28KVyPHSiRmnUnaCIBQt6q3ltdTQMdnQWDSktwumesw7I9OvxWRjxrtXwjhcbczk5huPisAw4LFVXZHKDsqij3GjJEmyqp9vc3zPd3OK+yz7p5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719366803; c=relaxed/simple;
	bh=dO8lVAbAgCroic1r+7WTwiR/CZ1WI3nEjpjuluGMFwo=;
	h=To:Subject:From:Message-Id:Date; b=NkCliYFPCQVkI35zbngXTDaSTvS85hlNjKlMBxhU3/8tAohitqSefrzIAhOV08jsynfWSEklV7WH4E8rddxLZk/QxIPjq9g0N9aCbzjy2DJ3RTRPN+sisYCWTo2dTqzb/7rBxaheGrFXrQ4H7dSB3N60gruWZxyvPXCjbHUPlWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuU50tFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuU50tFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D684BC32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719366802;
	bh=dO8lVAbAgCroic1r+7WTwiR/CZ1WI3nEjpjuluGMFwo=;
	h=To:Subject:From:Date:From;
	b=HuU50tFPcZE1kDJKZ2b2vVm8r2zS+Vr1KNFHQ7CujZibL3g3KtN6ti7kmctqhMdQ1
	 63x4THVFTyoVIMTKENDnEzPL4phqUG0MdJw9j46boNsIQHverfMFtfhUPjy43U1TEF
	 +dhWgjzQ3JvptWgzgZad1O9Syo3wqXJSkOeQmtiuYDrDx1HxsvkHgp2CAxXgv33WZO
	 YuUX74Qa+GfJDc98p+tTTeO+6kem4jfxCRdo1XbjljwFBQ1+kHRrUPmBR/lrDdUknD
	 BPj66lEukKuG7yBG9he7eCStbmRwIyJCvVbir5YMf87a1P7hevOM3jlw7sv1l5Kbkd
	 yxZV83CpazYHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2462C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936680276.5227.1063585855413419846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc972cb685b7bfac182735f1a4c5c2fe4f86ed9e9e8687a8118a7cb13446509
Date: Wed, 26 Jun 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719366802
