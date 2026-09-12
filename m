Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BCE2D7380
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789192234; cv=none; b=i3oUN10ZZreE7E/ZrII8FbvKVY+uFGcpVb3x8GOtwbnGCR4A7f7L0dmx8vyGEwPaPPx3qWcGh8eupfOdNCe/5zCQrDHDeg7sF3mN7keJnWw/4Sbh8bj5Q3ixje51HbNzDPb2Mg2kOh1Bz+dpf/K6n1PJFLNlNcmBAluh62w2hvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789192234; c=relaxed/simple;
	bh=439MfgQtiM2hmBfuXZiIf074ceJ3joPvD3CKVcSPbVE=;
	h=To:Subject:From:Message-Id:Date; b=dQENkoyv5e75UI8E0zwMzLVk2p1cNqeVu3oxl1kcsiGHlDhsIPAEw4wz9+qJH/wDaMIURE7qj+ryJSMYEb+CB1ED31xpNGNuL2W+kaJB983aZb3c3Zbt74fp7L1P739dTd7UJwQ1zIAiAphMdgLzk+JY4mlqfAlJqLdN5JS4SOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXJVHFWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXJVHFWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2343C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789192233;
	bh=439MfgQtiM2hmBfuXZiIf074ceJ3joPvD3CKVcSPbVE=;
	h=To:Subject:From:Date:From;
	b=ZXJVHFWT/16OKixbr4m8S2ajeu/hbWPPWIOvS1VtGYO0Mg7Or3Ff4SLgiYD/+t1KV
	 U8OrMtTI4lFhIOJuMLCjvbji+Umu6ulyi231Qc0b2GuRi5JMlqshp41Ui59rm3LnrG
	 FUPKnlKCd7wbrpoN/EP9tFJBn1MTShpbVf5iIqju2EIA0lqC7TYVDPByLEs0BeSAo6
	 l4zr1NKqXf5gk2xQzNfKlYmNuZAqrij4neReKfPFO6xeiGdaw6GHU7TUzi5jFcb/Bp
	 tIY8WLG9JzsF0nvPKc9UABQlmP5rQoEulO1uX93IbTS72CuCp96nfGm5q2u1l9PBqP
	 XICA4NxbywXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA0C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919223368.21103.624138631417767400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cfe78df3a8b2524ecfd39349769cfcf07fb7a5986d6d62ed9e0650dec83c43
Date: Sat, 12 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789192233
