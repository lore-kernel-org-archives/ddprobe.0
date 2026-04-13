Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2000623C512
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776052054; cv=none; b=n+faaOX916eNNrtW/XOsX/EegMSsYinDNRIPsXJ4ddrZi2fKylpOtdjLqbWQSz4eMupWoQjcotZo0CmphaB52cpDJ61RjzkQrwKv4o3qwj4eGoc1iIxEtFFk2IsRqtHvA2zi5DUsSO42F2qWhv74dY6rLN1ZpToxR6qF8GGhIEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776052054; c=relaxed/simple;
	bh=Lp9yAKtDL6KCE9lNRKPBA1S6D/1shnBEI2m3GiELNOs=;
	h=To:Subject:From:Message-Id:Date; b=Kz7ieXPueYI0ZpwSK3mVsKJPraf4ucDhBluo+FK0PjcwsZ4hOOcqN5pPKYVj6hp749CKOJVZ9gEOciQxIn0JKBy5nfBB1yJzh71HKmW9oUJPgAypxihO5wGn9wdiwFEdYq8uCnUSM7BlRjhaLEp4x84zBsHDxl7tZJueZ+oTBJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcGMfOKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcGMfOKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCC0C19421
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776052053;
	bh=Lp9yAKtDL6KCE9lNRKPBA1S6D/1shnBEI2m3GiELNOs=;
	h=To:Subject:From:Date:From;
	b=kcGMfOKoTi9eRyaiz3ZlIRz0xBhWQVqKxCxjJKHAIM7Zziz0SkXsfuDzCiD74RuIt
	 SAntmbvUn3tIDwERAKctqPnr0I7/cd7cMIjB7aEt1RAc6xx+sj2Zz2aHwWsHhFQBBO
	 2JpyvNkPYPg1DK+fuxWM7iO/nnmqUAs7WWhbHuMI2VhgxdKP7XmCm/x8Je9Z6O1xib
	 wHuIvm+3MC0abP8tQnKIj2IrqWTiGhFxK5nEiaNx8hH35PbXFwB6a4gHS3Xd28avEI
	 rxy/XJTEn5YAPL37SDWpo7n9x5jA3gIjHw/SbxXAGRvCVBdl1++zmCwH+kWnuyEbMM
	 ABoW/EILoQKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB92E93812
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605205368.10509.15821561791957912559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e971c8bcc42943272a177a0081907db38b37761582a9d1000efec6f6b81a44
Date: Mon, 13 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776052053
