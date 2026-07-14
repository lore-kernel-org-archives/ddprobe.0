Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517B144C654
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057914; cv=none; b=R2hSDmJCEU7D3hWsbxMaeVEDk+mwi5x3PNROdJr4itdwyrR9U4Br9GWF0v4EAmkSgCrwuR0ZrCS5Fkl18TqneeFEADFPik2QsQAf0VXYRUwOYlkVr1A+OJqrmzOs0qVJSAooYr7a4MoQ6gcFrXZ4gCf5e9gXcseRf2ugENHuVNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057914; c=relaxed/simple;
	bh=Sx6A1aTNYffqdqk6+hpR17KDyXOl8ce4+ak49Do8gzg=;
	h=To:Subject:From:Message-Id:Date; b=kalx9ARMwWHltBjey85k7AkTYLR9LK3Om6qkxKelyXl3e04/CnreQlYn+rfcbQB1/56Paj+TQkhOc4k9Qr+YYtO5cmENOcHqtU3hFojB5Bg3dBeZUUU42/CqxQOKUzlayq1IBNYNvC/StKgt/RpUeYfDnfi8xylhcfaDIRRot7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3RVwzOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3RVwzOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA51CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784057913;
	bh=Sx6A1aTNYffqdqk6+hpR17KDyXOl8ce4+ak49Do8gzg=;
	h=To:Subject:From:Date:From;
	b=K3RVwzOCVxBhFVG8VK397dvXhLD3e8pE9/KI3fuTpW8d2LQ75L16zx31jrHwcm+RW
	 xtJT4XKS2CUZSO0OYsV4gglAZSea6w7tBtpGakbKjtTvwcR+w5/Sgo+erzxnH7RuAe
	 sMUxX9e01AbUfHWIKgBaxaUhQjhLz3TE3jfxIaB7VYxrDmHtoTemBkusdLlqHSt2N+
	 +dA7beITGCa4ARs3wPzhFdEwPZnmqE25JEFdBksghOlp+EfBh4mTJVgiRGkifjjNkM
	 Y6oxCXIilXuUKAcmLtShHe/yqiAIpD5eFZhzLsqEz/LjL1Na2A0trEQixEdQu+b6cG
	 7bjy4EXkR+BeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F92C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405791372.2059.15059870973990494175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5948d609f92566a48e3b84aa789591ab7a83168f8ab9dd4ea14bd85e1715699f
Date: Tue, 14 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784057913
