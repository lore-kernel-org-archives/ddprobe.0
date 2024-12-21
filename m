Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B26417E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734751554; cv=none; b=Eb47w8PACapoKf5LurVsenHdyXjkF220eLPFTix3E4SnYI+lrx3jFjAIviNvBQNkrPBrUXc2EoHo4uNedr22pJjtaOfqSR56rJkXVdiUZA+245jO6h8h6NL7hqH2971grLMntG2DpVnFoDT1vos6feumVPPq3MEKKmI0yysnzrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734751554; c=relaxed/simple;
	bh=DAJNINn+qiI49pFoxrk9KnCF4WPuHhoXoAM5aXFoFdo=;
	h=To:Subject:From:Message-Id:Date; b=jlzjJ4emxdFihl/55n32ZKaKe8w9tKKBlpCwCFQWhYoC/PmzAcigwIJ81ttW/yKPqrJt//a71Aqf/ASQ50E++VUmx8URjY/XQczNi+k8nmrF/HbPms7LmiZ9ij3mg3sGulecEOxWTQkLSpZoOp8feyMlJdJvRvsxvXaM2tDWOZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTlGS46D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTlGS46D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37A5C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734751553;
	bh=DAJNINn+qiI49pFoxrk9KnCF4WPuHhoXoAM5aXFoFdo=;
	h=To:Subject:From:Date:From;
	b=NTlGS46DUT6ZAuljy7LDTw5wbLRymdn/8MhW/rsCEc/irHwBdnPOZ/5Fnc9a4teEF
	 k2TX9z1rtEjVmidqIpspdStl0UjM1iymW1eqZb4HJYlVAqMj6vgb6eQ9Z7Fp+85lLO
	 QgIdghtmVVAyYRkb/ybxiPcCTs9NOJYBBkJlOQzdRfHKbFDazGQMlIt8ayA1fsJin7
	 lfzqEHT5ztIOfJRjJnAV5w0zulMLY6cVHlo0KZppMr6B/7LkGvRHRaguSXq4MxUZ8V
	 tCikcLIFuIIQhN2Rye3ZAasAghKaGIblQPPPTHCZX52cN/fCdRQzBfbS5gm4B8AtCT
	 nAnk36i8CdQGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE2FE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475155368.7604.8199587410568764260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21c9e557b61d71908e87b0f3db053292579aa33da3480098b48728e300b59e3
Date: Sat, 21 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734751553
