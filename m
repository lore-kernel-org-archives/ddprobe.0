Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E4223DFF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780956874; cv=none; b=R1UDzHyBpEw/7AbnAXFg2oBedRpVQT8o1mT6rcNLwsj6boYeXoLePAlsmtb6JD3CygYV5OYWcEGoqpzTjK0HoaC2GCpHYI278uvu+AtiFwwf1K/dPtdsQ14Z629LRpx6fef5DVelmXPJXFspbU1I12QnLINOr50VJohEsOk9Gyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780956874; c=relaxed/simple;
	bh=iEOs3RoNnwYBHzOwReoDudgiUjQlwqDuKdZ/tyPKUKM=;
	h=To:Subject:From:Message-Id:Date; b=kcqbHBEvW2ODzuhu+NPznImdnF9uZpZi6WNwotadJrbPeQTOhBx7KiemcUTiVTbsZsB7rLpNYwbw2B7+djto2xKPtZVKiCzSYul7EN9FW0fPNcWc/jAtGFRqO8ypvDTNcdGT44A1zGDk5UABD4vb26Zz5tOZgdW+bmSkKwENCPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbeYNKi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbeYNKi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A38C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780956873;
	bh=iEOs3RoNnwYBHzOwReoDudgiUjQlwqDuKdZ/tyPKUKM=;
	h=To:Subject:From:Date:From;
	b=JbeYNKi+pdMtUZdoGQ0m36p3U4Bo8/Wzd97jeH/PhqF/JyUkyzaVt1PLNqIZcSRVq
	 OIQdyONiRGm665QgCme0tkT1YPv/XydN1mPCKscmmj+/cLOAn7d2gR+8wW/nS8DfNp
	 wekbNeYezptS1pt4lwKLrkOOFD9LML6H+YC6eX7wprH0NgRbKo3275TfbwgAJqjbU+
	 Gcz/YDkeEAj1ghJ0oF8Ei08YA11si+0hv8bLpGGeQ+lML2FU0xkbI/yyS2BxY93zKN
	 gTMRzISateu3ccU5UXKexTjs9+JSLF5Px7UyG3o06J+XYytzEi5v9telg+jamEdeea
	 XVS3N4UufcHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC840CD8CA7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095687374.28653.4754817666884136878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b357d9c79d15aa9b757cd38a0d3e6fd3de1c35a24ce69bca4c9a193c436a8b8e
Date: Mon, 08 Jun 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780956873
