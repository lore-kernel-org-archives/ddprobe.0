Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253ED1339A4
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769973234; cv=none; b=H7LMKLjQqbaWtJm9gTTpbpwJXsm4ZDKMAvbCyFJHyv0d2MUP8wPpPDdfQ/rOI6+20aqvwKI5TWcnn8oluIT5ABv19KEYc/B9LXGkOid8NsgZHIlGaPfN4TqLp7hbHKM95p6hA/WbCGhvrl4gbalrJntafociZTvGGEWM7xQwaug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769973234; c=relaxed/simple;
	bh=AhmUk9qXY/ltBCMxp4W6ujCj17jBuGytQgLBnToh42g=;
	h=To:Subject:From:Message-Id:Date; b=u8oXqUYBIPOyqSLYffoHmRr235nRDw4tgDcwhLujqE6BvcRN7DcBx7FTfxUKjYNfLDCEAikxmjoZ+t1s2YcDHPGAigRUhCONy0xaYpdUnxcegLtTuCDJz2DCdX/kQkpjPmi/GPvl6UQGS1AvlkhpvtIBwyIAAqZuOvEwXZ0VeuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kE0ZdToa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kE0ZdToa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44A0C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769973233;
	bh=AhmUk9qXY/ltBCMxp4W6ujCj17jBuGytQgLBnToh42g=;
	h=To:Subject:From:Date:From;
	b=kE0ZdToa9t4MjV/1hgNcBc76RpWqTfRZb787+pMmclHPeO5OuscXjLom3l5NORnNS
	 UfvlJQLk+6xhO4XjGcMkQ+aQv/wD3kEgiIQo+L7hOsif4kyAemTj0q6IPVd+dD+Vlc
	 wpxQfwp4wa55hN9Rck5V19EBoBVMxPEyy+T+9Zudsy9Rm3Hr2g4FOYEmiR8JGQ/NZA
	 LUO6uiFYNOb31fGCHZ6e4KJqYDiPl+Qvd6AOPOb618KhvmkkypjbOUC//TtE3X82H9
	 NIup2krTFLCXxUz8dKE7SCfO6LB2rF5Cb4LmE85Fi4Z1elzuPsyWieZ+v8nKyXeX2t
	 oJJTjGG6IQ5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D4E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997323360.30562.11440868761068502108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f031a4bf2be2e13e55f846e82d8d9b8090a51e2bbbf1436c615b87401dbbdfe7
Date: Sun, 01 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769973233
