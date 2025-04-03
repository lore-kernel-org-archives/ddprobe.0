Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53949208997
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743664195; cv=none; b=I60aMxMABzhVgzWlcgvg72uLhHG2LPQkhwYhxfR4nfs4QVmaRz3i8ZeenpArLUvmX4U+HXPC9Wkebj0PAz74nkr50CVMIepRYqLP3LGQC3+UlPdOjw0UmJ5KLSvddRv0z8tx9U2ENm++CJQB/VOj+sEedfWCHOMikvBOIirKuWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743664195; c=relaxed/simple;
	bh=n6RpCbioNWjA/7h0ZHQAkr53Yr0tSfThfQh/eKw3a+s=;
	h=To:Subject:From:Message-Id:Date; b=eudteGMdIWHTOg4aoERUAen84qZ/DqcYYrKf2O/TiG/ZtQxN2zB8A2KwBjw0914rBP3HqOArldtiVI6DIZR30JNF9YfdxYjHFfjiL3d+HVBGpfMugQ5Q/g9YvHKyvFuRrpjtT5tw7HojDfeX7I77zj6ugOeaceMSnFOxdRM2bMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHFKN77B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHFKN77B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5295C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743664193;
	bh=n6RpCbioNWjA/7h0ZHQAkr53Yr0tSfThfQh/eKw3a+s=;
	h=To:Subject:From:Date:From;
	b=LHFKN77BlgDPqbrGOSvos2ALPFRlg81fu+BCH3/VS6PM6LqVobKTJbSHD/ijn63YL
	 NaWJ/fI7+M+JZWZBxk6wntY+47ZIvaYgZQif4L3l8RTLkcz2IuOf/KuE5mKCGkLaLt
	 N8WKJCt55nfmYj4zh42wKHiSlVQdAAEsHBEDvTxBfQHivAGcOcD8mDfpTbLWjq/dR9
	 nl4l8aWxGzlNs8my6e1j8g89Mya51/nm7zpgJKTOPIDKlCZjInr2YOfOelrtYZlI1d
	 K6SltUrfZjYCuEhub/kzvT1lQmjwpEf+joIRQKHxolPxr6PxcXntKYg1BtwooDE7GR
	 v2peOnGws8YLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E3C3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366419359.14003.17835943666788545726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160f54cf438b4778b914321e0aaef3b21cb4390f97eb215c5405079b1dbec934
Date: Thu, 03 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743664193
