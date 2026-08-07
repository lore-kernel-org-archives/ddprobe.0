Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242913A16AC
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786086634; cv=none; b=Rp/KlfhKoN/dFHDRkjPvNV4/3/9PBW/2zL0fcUXnzSkVIyoOlFvZaFTn8QYwf47n+BHqdQWj5tCZpu2O2JKHZ8CYUh87PEKdsLckMVLgyAyOotAX1A1pot4EXIz5UTFkzQga4Lggmi3q/xuDYP3pY4VkkUFidJTyGT8IdOoLAdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786086634; c=relaxed/simple;
	bh=Q98GwkeQN9mm/enCMMZ3j+Kry6IPIIBCDsbRQXmNF+k=;
	h=To:Subject:From:Message-Id:Date; b=WaMzejb70CMsauwYYn50RqI7nsyrKA28AenyMaynBrnRbFddAviFPhmyfuZ79GhP99lgkt9f0/gUSNN+QNHsKIpQMlcfEuAo2KY4L6LpLqreMigXdvS+UMcuXIiUiJotS9OhHYhFK7OaKOBWqrswTKJqnCKHjbikSo2dDnyJfUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFwlE8g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFwlE8g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A2C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786086633;
	bh=Q98GwkeQN9mm/enCMMZ3j+Kry6IPIIBCDsbRQXmNF+k=;
	h=To:Subject:From:Date:From;
	b=qFwlE8g2VS0lAtGeQ2fYK/xmBJRiDpr8unqX04TG40WqjM35JXWoJxMhQroZvC8hT
	 T6MFw+ISLWkVivZ9ngt8eaADDbUIA+rcaReRbW/3rXGwGJvaHlQUjJ9+RWa9qAx0ed
	 19TS49vGntn6POSij5MsDw/+2J4MMVt8E2YZzDP9hAO4iK/ksJGzUrCYrmu+e+QqCf
	 KupDL+926AcGis5jG403qBJUEtnJQR2MZtkJfDGsDPMB7dcsCPolDyGZxg++nYYx1L
	 mWs3GNect8mKpW/n5iFaAeqoeDQgRbKoqIytOcVkQy/X+DvGsZqLjRJb23a4vi4VT3
	 e00Y/r8bsCLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA31C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608663369.26150.16022094796435909782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054648226b31238b7781cd162bfc71d60683cdd3cf44db754f3116d96e8581b4
Date: Fri, 07 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786086633
