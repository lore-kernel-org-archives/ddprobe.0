Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568643BADAA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784596114; cv=none; b=iqiX+pAvVxmZyhYL815dt9/GNYjPV2itM3fvnW0usyiVQoGpKeu2rmbCzKhc84FZnPjXksx1Kwbd+yy4Ch+JWvYcxnM6jjAOwz2Ud9/ry+DESbOV89IR74SdDGwjyc8z3APPITE7XGz9OVVyZxEsS7TNngjim3KLxOWoH5M9sY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784596114; c=relaxed/simple;
	bh=OR7OATBYiHiMdV5QN/QcKbkMOmfYKl7YhcuBwzSCAI0=;
	h=To:Subject:From:Message-Id:Date; b=N1G9jFHB+ARYJKfxu19Iby4kvtavJOcUlB7Te5c3Z2BnuBG9weA3Rq4DBdcxMiOwniYqPb6MrxISCOpiXIYzIHFxm948nXCYB9SAd/XIhHUILhkgfmvkM16lbD5D8MsLzCodFJdCReaIMdwU5d3NQRCZq3bvgB1Or3Bp1oShK7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tagfyy/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tagfyy/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E257FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784596113;
	bh=OR7OATBYiHiMdV5QN/QcKbkMOmfYKl7YhcuBwzSCAI0=;
	h=To:Subject:From:Date:From;
	b=Tagfyy/gYhJdM8KZU10ZD/yPhNSdwir7boxGb/TbZRgCqHvBwBZhdGkKhVxMMLf/3
	 wgvQl/sdsTC/cE8q3xOa8ZQE/FNUxBZTM+yLNfsmBsn6cSpbrH4qDNrBuwlYTsFZRx
	 UHYmzYavxOCqfJYEo7kdRmn8LPxe1kkTC/Nza8JkBkeP4v4qe5ovg1WB2RS32e/U5f
	 7OvB6t0kuCxk1LEazMlTA53SWgSUPaBMUP/qIEcefbKt/5ipNwjx/OmDh3eTNW5oo1
	 F8LuShw1NWZMhnavBUor9nKwb0wadE2qt2YuZOMQFib/ny21yE4bVAle6mgQvvuVs+
	 0S1xg9C3+M0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BECC44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459611374.4100.9473882372937607934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60bf507f79d3a231a70063a9b15b8b51f108975b55662ec47435fa6ced0fa61
Date: Tue, 21 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784596113
