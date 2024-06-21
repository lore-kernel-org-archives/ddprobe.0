Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5551A22094
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718976143; cv=none; b=XajpZJbkZsfzDu6trrj528e0KbwBCvmtROFi09TbIonWNMatdB8KQQc71TDwxV9sdAnrerklkuOXoRX8k0COAm4pM9wMvwzIxywmsMsomS9N0XTTit3NUO6NRQCR4vadGtC+aaAl5rYg2c5qalcaD9G/EeHUc59vdFmWUULxxKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718976143; c=relaxed/simple;
	bh=7yS/gEok8k+aYH22GLwzVNbEaS2O6xuiVeDNOuY9JPc=;
	h=To:Subject:From:Message-Id:Date; b=Zv/51P+awp3iXEMhP3YfNDqemaPpfcwkW4DslncGanZ9+kPy2XXez0SgH2ebL4xI4oo0vhnIHZMLx6ino78Ja3Qp+UpjMMV/DY9UPo7Gv9l2S7siEwOvIzqGmTg6QVuo+lRtBfmLn2Tx3QKf9xfHwkG75t6UqYdeLYej0GIRvLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVIePqj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVIePqj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B82C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718976142;
	bh=7yS/gEok8k+aYH22GLwzVNbEaS2O6xuiVeDNOuY9JPc=;
	h=To:Subject:From:Date:From;
	b=BVIePqj7WDWEi1PiiUhZw4XqWc6k+zNY8VAeyPjYRmPirJAEn1cbWvJPv3F+9TzoG
	 tKiSVHuHPrPr3YF4UnNuGa8C6SYKAX2LWDoTWP2Nrql+DKFagxbwqTvQ01I8SuNdZm
	 7QfKrcH31W4Dbh84I90O4r5n005m1vgRG4HrGbZ86V2uHFHKSohVn97I1bZlCs01aB
	 1ZjzUHt8cfAOkI0cMguNFsh9+XwGGl5jnMZgrMATHD/A+cWIMTbXMWAzgQnwhHNEu3
	 C9DnKc9xkAQabJMxWssVECpbQg/Mx/f+UTkzkV2wmx3yJUv3xYvmzsAQCubXuPtSmo
	 hSB+5C6exicGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3407C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897614279.11195.8393366586599909423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b760dc23afdaddaa0d7ea155f0afbed389cd7eae2f148a39c547d6911cd32269
Date: Fri, 21 Jun 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718976142
