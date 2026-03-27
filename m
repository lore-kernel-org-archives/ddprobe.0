Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4732939FCD1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774595094; cv=none; b=PQUlLblvjPCpEKB+25uXMHs1PaVqYI0HyjWq/QT4ft/afPC+EBT9SXx6inko06+YTH+svNBaLpIgHMR9NKbxWSGe6PDo5Eea7yxCsr96xaG58ka34KCTsYPU5thXT3Iqls382hhpvmJ6c9Nm4L/tgjMxK8WLH3FpWMWSdh7Jmzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774595094; c=relaxed/simple;
	bh=evs5nCH3077Epm89ydPWOCaxoJE3CZyJ5tNcir+ov0I=;
	h=To:Subject:From:Message-Id:Date; b=d3jiHfXDxA6FV5a7ME+zxU3ECcdlkiMt3it1YYcbXYvm7FQC4cWn+D/mK2Fw8dpM18NuAr5sIY97ezMPYTKXpMlYQeLJ+UPz3MwS1PWOjY/QZe62dwM/JETu7y2s0OkmsExNfqx/9bqWarvUG+AAO53YDCemPgRwwND/MQNE/wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfIKySDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfIKySDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF62C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774595093;
	bh=evs5nCH3077Epm89ydPWOCaxoJE3CZyJ5tNcir+ov0I=;
	h=To:Subject:From:Date:From;
	b=MfIKySDICLYSDhH7kqxCjR4Sign5eKuUgltr6Hf5YXX6sVGgLJc9EsJUuQKUQSjDK
	 aMRuIahjWYKMaLTJ84uiIju6/R0KliCsYjcyGNCz0TnvJVfjI9Jdynnxjbq8Vip/qO
	 RFmtL6EQlFqsToLqyOponiyHnG9fFGdgIG+900AH+8GObnNPQgQhkq89PDyO5Z9JhT
	 b/wMzYA0lWOn+RJeK5S6kzF2t1lr1HqD3mHlQeEuB6uyFQNUV7Ks9WAn8EhCYG9quA
	 VNqmCEOHtIzmchBnSnAjylGDhOTGXTSQz2s9FUonzc1pBaEViMVu72o0w/LyKuhjn5
	 xloyxlJPsW3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073F10BA430
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459509358.3759.13541023229168158817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f091092358743f6c7f8d8673adce1b385bd56e2fbacf283a55ce4009925741a
Date: Fri, 27 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774595093
