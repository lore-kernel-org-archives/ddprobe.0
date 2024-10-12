Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABA928370
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728759354; cv=none; b=OUgUKq0bVz84P+kh/rRwMq45DhXufpre5XfOX0TAa4cUPX8ucBhSrtAJSB1sPJayvQegvGtEj8oyGw+GDtAhKFGhFTP6IZrBIRLNZQICb6puv1GlezTfbjqvge+3ISeoI7vrV2i6/1pU7Fumbe4cVm3NSeCRqoVg9JujOJxwA30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728759354; c=relaxed/simple;
	bh=K5Xiuc9+8YQ0tdyXxBtx8aVwNE7Q739ae+FFkCQq1Q8=;
	h=To:Subject:From:Message-Id:Date; b=bEnUSMaP9yHfaBPT8rGzZPPJltISPe0idizo2RUvhjqnXJtQyl/gBNAThroEIhYZBxfxKL/+Yw03LBnT2/jiVmi1cTyBAon9shKl8N+peYTAhPqlIlWoMjl9DKXPVqKxP0yPzk52CUHXKRFvsh6w/GsCTkb99nCvvnwYocvohuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHe5WL3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHe5WL3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7D2C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728759353;
	bh=K5Xiuc9+8YQ0tdyXxBtx8aVwNE7Q739ae+FFkCQq1Q8=;
	h=To:Subject:From:Date:From;
	b=MHe5WL3E39tZWgDrpIEChZNG6aV81esRPFCdZy4G+lFvESyt6/t8QXQRgoLqr/NsK
	 8ezs+Fkvok6FphtnhqZh7vFZydVpZJn3C1l47koz4oMBSa6G27hVm/7lxmuu3dzJvw
	 7iLDg9wjiIz2A3R1woWKWlWSbnffyA3hlLGOvbmzAe63Q9bKGGeQHxcLc+zq+OCb7/
	 4E3vezxoBOHl/gv5vu1qm2VmQwbigWU0zoZtTtP/fC7AgGbocS/HB8ipXvvIRXqFTT
	 jqcX2FI8ROUn47Wztv1NNbkw3milwCZtBWyyAlgDbaYhOZ/wSY7WCqP5N3ntax3fTV
	 D7lXeo7gUrvYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94466CF2577
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875935358.23578.4283261470196737327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1290e0e947e7ab5e9bf4f966c71aaa1090422e1b9c336c62e49684f4c0e37e74
Date: Sat, 12 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728759353
