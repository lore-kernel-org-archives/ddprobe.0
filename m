Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E54D28A72F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784374714; cv=none; b=U91cNmpxyTDXHNLyypQ75hbtPAn2KndASqzWSBTrjEjSZPVMjYhyA58snwCuanssxi361QqyMzqPInP+FAhDVi7bndR6rdvYlgOck4Jtql+YjLeYTq4wq2GBmO1C9Ucj/63B7EYUXxUEyFeZtdAVdwCwhz10SaqdXEyHn3Qlwow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784374714; c=relaxed/simple;
	bh=ofKgzSirSW/lOoGuQBlYeA5nT7zeH7mg6bIudi0OGl0=;
	h=To:Subject:From:Message-Id:Date; b=ZaFPGGMi3YVWlMKmkhKoJ0LjaaY60GUaxWMrREWJOkplaM/n6CL14PcEWvtSgoRjoVYNO23qk1yaQ8GxLMa6UlYQPrXGAnxOdndgebeVf8qxQV9PZBJfb7tqX1CEyyGTmEgA+LFFVlEOuStZPvlHmTTPhgl58P4Ruxcv91iAX3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+/norhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+/norhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1172C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784374713;
	bh=ofKgzSirSW/lOoGuQBlYeA5nT7zeH7mg6bIudi0OGl0=;
	h=To:Subject:From:Date:From;
	b=l+/norhH7md0QASaHjWF2qcDqg1STMHhWcTVr56gUUuBpfeDlM6e7PIm8l0wXFxcg
	 3gfv30D7OB4sRMbGL7q0D5JK7hWrKU12MPQvkzMKvWaJCEYawAUARyJrlBfHti/Y1Q
	 14BC5olF1C+NJGu2UYh5kcx+tSG/JAUyH9Xt0IW9Kc1tRxpqD5ZEMUOE9QseRMxhh6
	 1mdQbSvGv2ncxlZQEvaINx38RAoIBpqcHJxcnc/HfvQeaaQXIH1lCSdh5/FpO+qD9M
	 rOminBSkPHxGQhfvDNhqw7DSUPA6gaG8pmtgM4ywykxJSktM9NRsrkSFJu73pRSqga
	 DkBHn7GtFnLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89DC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437471367.26600.9316416705599237621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab38247505cd73c3c71e89dc0cd9fb53ab47219541aa0b20beeda624dd72d043
Date: Sat, 18 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784374713
