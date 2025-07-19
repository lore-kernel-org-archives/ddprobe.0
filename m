Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C6881E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752911394; cv=none; b=VYrLcIFETf/F12b79dIL3NsnkhutpN21ovyzv8WdhxUTaAlUyjJLGaL0AMNc+WTUh8ToZXgAi/yt0LKjQeG82ULB/TR6kXDVhPUfGy7K16Ob6ui6aR73mOEKIVc5usdf/vO0KApebiyIk+mWOVwIrLniXHzw2FAfeBXe+iVJVl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752911394; c=relaxed/simple;
	bh=Mde0PXSdzQkJhqzXNIOJnhZ7qJz3lFjnLgDQtBtefMk=;
	h=To:Subject:From:Message-Id:Date; b=c1sg43S3DSby4lzpE4wRquvG8dd5IsfpLnojxPlOIkfhR0wNFfEI32rcXxhxte4lXZF0ZZQGPdA9luMUisz/FW8pBPPcMoTrBJCYGQEVF69vhZtMngxscim9iaWpLq8QSffpCFFtX7aQYkU0QgACPMq9iKA6pPlCq9Cs/vGAyJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv0p56Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv0p56Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC77C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752911393;
	bh=Mde0PXSdzQkJhqzXNIOJnhZ7qJz3lFjnLgDQtBtefMk=;
	h=To:Subject:From:Date:From;
	b=Wv0p56Ydn1sRPYt0xOV1QBDoXE5xZSY9qCM55rBXuvxYgF+tVM1dFXORDqUaRZRox
	 losbau+THVK6q/lKx9C3vrowPKmB/vX1RJd64Wyy/6fqCng5Zz7FVuLB5Xup7jZooF
	 /TYI4SiM/2epSVwywSNZksoCoup3dZ82xkqfiSORfIWXTcZwvZinXuLSsD9/HbqaGw
	 sxL85KCBl2IEMcBABNC3uAUImETuftsI+qLFTyYFb0O4nQ+MFH3t+N3t/oVty6LzHk
	 ip78DZoLyPtKunDjN1tIzChngXtHGiyHnljwPJL02GFJ9trdebutVl+wmd9pkgDYKy
	 sCeRsH+dMmxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE01C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291139358.6980.4913040958310901247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a44c09566e931a513c2a703b0c5dc36a28d90ebc2b3bc1cfc6b1863e8f05ae9
Date: Sat, 19 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752911393
