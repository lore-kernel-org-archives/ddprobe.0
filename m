Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503E625
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759011594; cv=none; b=t5CPO6tp6D8bHtXFhGIVYwp8bxoPavPQRwkckgks9Ac5J+OhZ/F+kai+rcBhxszDo/deIIs6rZUZ0r39a4/tts3zSst3L1AerV9gUGtXfLC8b0UvW4V8bCrA+ADKC5GmOX/fhgshPa7mD+2zxY5qUENdh6a3X/hZQj0v8v4ZOqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759011594; c=relaxed/simple;
	bh=WoG35i7Qe5hVuRbSJC8N6mCaGbsqlAJseE3gEYuOPhc=;
	h=To:Subject:From:Message-Id:Date; b=JCV3yrE8/nt+x5xHnM/osnpGmKaJ8RFXpvIqXe5vipGIOTELgferM7FMu00ScvJERNhmYFufi9BlF7JsHEq3I3LQAZuH+deG3grxJLgvAYa/Lbl4eGDABI9ulGPOCvw4wlgEgwZ9SzSGv67IvWTleV/tzBssAgc71m7ZU4Xh+TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYXF28Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYXF28Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759011593;
	bh=WoG35i7Qe5hVuRbSJC8N6mCaGbsqlAJseE3gEYuOPhc=;
	h=To:Subject:From:Date:From;
	b=gYXF28NvvEQyt+bfJD7ZFPf84WrpGs2CtFHwiWgGlp5Wri9W+cxRDbpTNlJPJwKxx
	 mD85Vdi9oJii0zCsUBKo/CDO2rVLkQqPE7dp8NPGn8P/VORuMnH1l961d89ssp1/86
	 O2rdy7Dfcj2TUkVuh0ZFno/2iU+8saBvGtNQHHZ/8oE3Fyl/WWDhTKuuyf/T3k7oIg
	 npV1P3SyV1/8P2X1e82Row+nzOVZzXrhy+xKhAavMXFlAXCOxLGZBcYKW3zFR9ZRWs
	 9yUSQOYHz3l5FCVvGjSPr67//b1pmmQdwr5c9Ivw9oyPoigo7K1vEvi6jb0g/AsUQh
	 BbmDdArqmghuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF9CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901159362.20391.3956459503622666083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cabb156d8ca6ad8ed4db716bb3e879fc08bc91b3c77ae17ff82701dc61655a7
Date: Sat, 27 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759011593
