Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF7223336
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766599434; cv=none; b=kjH9sjMAP1P5+JfB4XcopYQkwwraenb5GBm8K4EPGqWFP8i+6zMLZxfIQqVcxXLtAVtLjBLbTzR09P0cJ5rTTCLafsphUW2ckgkeyldOnxgokfSwuuw023tt/2GcyEh25hWxyQSQFX0Q3nDxJud3l4BKvT9R50vH9WZdSHvWQzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766599434; c=relaxed/simple;
	bh=B2SlGQnr0gUG2wfSjHLVPDYAd4qlvqlVXvLPXN2ei9o=;
	h=To:Subject:From:Message-Id:Date; b=VteqdLoBsD69Iu7L3+LmJb8YdgohSzXmFFESuXeCTpKBeA4jouJwsDtRrZnFEg9cRrb8f1Y3+b41UDynRB4MYi1cOWfeDpV7Ypr3z74DW7LNBjOszb0GzirX/AaGZCA6X0+Pfp9F8Xx5Ff1fIZlgyCYAGAm31sUNPxaK7uKPp8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs89AW0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs89AW0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7005C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766599433;
	bh=B2SlGQnr0gUG2wfSjHLVPDYAd4qlvqlVXvLPXN2ei9o=;
	h=To:Subject:From:Date:From;
	b=fs89AW0+p9mtF1y0PhofEDMJoiEl17Re5u68yoc5kJcYuCcABeI7Ud8DHxx7z0ouQ
	 XCIltF/0LNEGuMoNMAMva8taDvtp4+OPKMGl6LyAxopJf2HR98pf6SppkGulX2VYvp
	 pXkpbmwSXWl14o036e7+km2SWCqsRCT59SRmG/OToobR7c1BL6JU45dXnzvrISomzU
	 pwdZp9kYbWejTn+yCL2+8nSiH8j9hz+pr4uyROC/aNaenLf/Aomg6dmua9jn13E29E
	 NVJ6DkJJCl2xmmq2JpQUh5trS5pnIKIASyQTjhf/EjPVGxfysaNEVKvjeciZUrjOfn
	 cctIF4JN+GUWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FFE7544F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659943357.18517.5338409641808057972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6a5398a77b05f3e6439b7f4936aa2860a6046e286ecc7c68ac6a3129860a69
Date: Wed, 24 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766599433
