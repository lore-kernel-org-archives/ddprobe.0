Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DAA21A459
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762049394; cv=none; b=XtHJeNe8OFF9NH9EofmqKEZf8Y/bXGU73/WdQr3kAuT8ZtV3T0Kp2JdewztlhNMJr7hSo7Jxvv4dggn2Q22fbKC32rQzbSVQTMUiAXu6falz0klqK9tv9tqfFUoNQ5i70oH51Bs58vH7mYpw6oe1w5tJT71vCxFeQeFabmbbpv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762049394; c=relaxed/simple;
	bh=hZsAhbtXKWjVGSdvgVG33MmtTqhfonSayDHqGgjtDbE=;
	h=To:Subject:From:Message-Id:Date; b=q8lYAmN/bDgNem9G15czaauvPCeFTGlQJcDZqABmRceFcIriLTSr87bEHpZnsAYyWI0TwIIRqLsKJQdiKO50myvyRfTIo9FIwXSqh/QtAONEpOPBJXDrJ4D3WpFiW+t/GZNU7DihMNWerbWZiHuHx93gc3Ylj0G5e2d2+YDk5FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA2JTcon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA2JTcon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DC5C113D0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762049393;
	bh=hZsAhbtXKWjVGSdvgVG33MmtTqhfonSayDHqGgjtDbE=;
	h=To:Subject:From:Date:From;
	b=DA2JTconXxGSlQHKSd/KbjAVIKd4cfecMfCldWmpg+TLPhI+oc1ITbVKNvqa2GTT5
	 lyTd5R8ZsZZ8wnPlYIGek/lvpsj0DQj9cunSPBlmQYvOu2jbngT5ZAlIifadGuaHF5
	 XCJQfC5qzfbOvcGLPgw1p47Je9aYqX8pacdYnVI/3C7fCr+MUWAXW56UrJmS565aBj
	 LLK15VEdIFkNoyPgC4Dn+j/5jUsZF44lBex06OCFPjqVd/IyPzbRNFQh2HFVg2fLzS
	 7Z07D/407XiC8dXDpmez7jXayjTkm+DS6+tgHAx400XnrnNJC0I1A2gQC7i44GShO1
	 NvspZ4njrfkDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98864CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204939359.19581.15036674395351342661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8013f9f9268b69a8e155420a23aee79303e7c9d849ccc7108434f7c717deb05c
Date: Sun, 02 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762049393
