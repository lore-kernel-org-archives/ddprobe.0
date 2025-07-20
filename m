Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB321D27B6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753042794; cv=none; b=n1BroCaKCzkENe6Xqhs00qVi+oNwrrKeQ5Yyf3IsDa91tZcBpHx7LctO2D8Fr1pXA/sdoe3e+UMBI/tKwsaKzIQ7ITdMh4mppvNWktR6uNw5yxpNgEdhQWVEpieT63WC5MkpycKmnHbNVZKrhE38CbT1Zwyrm5ArErwtGgjGClM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753042794; c=relaxed/simple;
	bh=Gdk8KMACLMcFfYRn8JM1z/OhmWDipn+NREwHufIJbSI=;
	h=To:Subject:From:Message-Id:Date; b=nya5YafXjfDl/NViy0cX5hNO32IgANAXFjJkb+B6AdcosGoW5+BNHlzn7eGF20RFAziF9fjC8PFbOeBnBw+wmaISqS9dWBubVglhjX01R4ECITz6gJZo0TV6wENTLQY1XzfGQ251vZwiTmIk6SmIrDExNej6Cc4zUPxtnn3PFZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE1+VdEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE1+VdEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D90C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753042793;
	bh=Gdk8KMACLMcFfYRn8JM1z/OhmWDipn+NREwHufIJbSI=;
	h=To:Subject:From:Date:From;
	b=PE1+VdEkBkkzyyZi1L39OlkZCHi+ibx0tJdtNAKYfPD76D+jDJF5YmvtEdq/7XjHQ
	 QCzBK5Fwn6uSXWEjF8mbihElmIQxBpfOL4LakyQhBe7ff04KBhLgdOlqgoa2KeRd/D
	 Yu9PqB6btS26abF+4cAbjIZchn5miVPdw08BPLKMV8oovCaSN7+piUjVCi2dhT+Wel
	 RiDTUd+nB/X5SyOmDgSuBRkb5qQi2YTqsONyhLL7Ltg+M0vnnhoRvc30Fg6E2v7o1+
	 3EBMmUduKuH6vfPuL4MDlqBDx//fl4DtfjGy2ylqsJUJh50+0JectYLYGuJhn8Jcpf
	 AHcXkM2igaaHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECFC83F3D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304279358.15596.5696219293923068253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf53f782a1c37f663f14e94f6da8b1e8100f0c23451b44784da813a10f19960
Date: Sun, 20 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753042793
