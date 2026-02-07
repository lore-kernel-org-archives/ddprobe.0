Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277005FDA7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770443634; cv=none; b=tSEHqzU2E3z5BkU+edtVfoUfIeJZuJw4ziHH3nkrmkFAaawOvx8q386KVXaQuDayHBPhmw+IjKveGkZ8mEcM/3z1kCEPbh6meDEJ2IigUhb7AtDJlUznOXNe3dKfTtjZ/o3q+OYBBRlDcEDt985ahH42eIOPmETng4H56/lx+jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770443634; c=relaxed/simple;
	bh=L75LUGWbvdqEq7EWw/T9dqUaldO+w8NkL88kRHQGsrs=;
	h=To:Subject:From:Message-Id:Date; b=E6CP2q2ppBoM3hmgg+jQIp8EFf4yfhmKZG5j/fM2DK5+PCZLGn286+XllpxRSx2B4zH4r8Vp+yzucDdON0BBZOAOWAb2J+cXNJEt0pEHDxNuk8r87jV1TzVha9IwSmGfiFsunCxtN2cSYjv2GgSDjk+h/Zn8LVAl43tkjzLY9+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbCBpysn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbCBpysn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B5AC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770443633;
	bh=L75LUGWbvdqEq7EWw/T9dqUaldO+w8NkL88kRHQGsrs=;
	h=To:Subject:From:Date:From;
	b=kbCBpysnZpu+f1egxm7xMILHaP+Op2oxogduUaaVFPjKbUufZsPFk4RQ0fnG0iH0U
	 W9CpryDeS4bMRlkvM65gORzqodbnL+rWrgqRSswrBg4Jajs6SNwT42eRGlez5eYjvK
	 aHskDR/k96YEO0D+xo6l+wCicKFCIqjZKFoWJM/FFR3heKC9nwrDiwiTVbNvxZDZ0E
	 nbqVA4wifuq8Bn2u/8O5oBnr8mhy5qa2zVRU7iaYyLrA3rdpsZjJvxrj9XjnqL9wus
	 sa0EH8QqKHXQXyGJxIZtckEQh/vn5bwTZxA89vb+Vn+eLvXyCFt2zFkwI2NJmKxLRF
	 MB8lmlG5exhlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F64EE6B65
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044363358.4821.14757600820511243658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dce2505c0204513ea11b81e46d5d34d2df89cc999d88507da33cb8c2db83ed
Date: Sat, 07 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770443633
