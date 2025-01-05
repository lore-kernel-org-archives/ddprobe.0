Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C23139D1E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736057754; cv=none; b=NShcArW5sJ939ltjHFks7H2IBR96X7XRRcZ7QQJ7c9YOGzaLYceC+pTYzwHgoGDdz62RVejdxP+VreLlYbNWRLanbPbsrsSaH3K8JsezNQS+eW6dlKXV/rmlaFcuE9OCu+uxPAEOZ5JSZlv4HUIGJGBK24l3jgKNXlAlhvQ/mdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736057754; c=relaxed/simple;
	bh=SYnaeKevG3Gk+zQDrkvSsLRt/om1EvJHyBz+8poIf6o=;
	h=To:Subject:From:Message-Id:Date; b=e4krYurnuK4sa3SwVFVAXEkZ+tJIUqcIKdHdedvKGKJUiiBwg5T8RWgDFak3kNUebxNSejxI+N7F3z2UIcLrPLHiH+OghiR1mhCgCegl7pLSIdcC7xUUZvizfSZp98pCV2v4vx7cHFYJ9IgFC0bH9TAPi75q5X3rMA9r4uevQ3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SetNqYPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SetNqYPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3D4C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736057753;
	bh=SYnaeKevG3Gk+zQDrkvSsLRt/om1EvJHyBz+8poIf6o=;
	h=To:Subject:From:Date:From;
	b=SetNqYPCc17QD5rL5HtLglLB7fpOdHRwPI+Px3CTWGhFLQXKlxSfUNVjEI6XHlRtD
	 4fq3CAJiRTTgeK1FBMkSGoWOpWJMGduyOY+x+1FXWcwHNjdGO2kikAzh0/a+fJWvi1
	 pKU4V+UOd5jfSTcsfiDnlk+MH9mCZWmEv5/gxNlBiXnWS5llIrm7B22OWEMZII8Kuj
	 Ei91iirxgSxX40ZVvoU5CMksgcov/BnPN9gATPo8nLRNlpxWsCc568E1n4E+Rlw0n9
	 N+gIs+JiZozzQKwTC5tYjGuoCSHdqGvx7VA4wUvTmT8itHZe0LfStMVZztcEI7Ch2t
	 geQtHUr94Xcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605775359.18797.12344229784345238654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee2a1fb219d2d47006302f3ea5a83b8d0ae6451a859184b24c63779b048a956
Date: Sun, 05 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736057753
