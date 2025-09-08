Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3562C47F4A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757372394; cv=none; b=owUnmEQohJwQW60jBysdBOETfKCUBSaZSYM1ATYuNfQFQyF6+OFQJikcQSUFwtg+z/OWGr1uNxM6IKWGEG2jdPDo5Fk5It0Lt9ESKSeeAlTu0PAFsY9zQM01KuiFRx7jEtPr/qSi1+eWbXZ5mSDzrt1y9xlpkiz5pWi7hTkj/Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757372394; c=relaxed/simple;
	bh=UJCGL0XJJsA97XPn+W3ZRxXfUiMJ53e9u9a58I6b3fM=;
	h=To:Subject:From:Message-Id:Date; b=o3f3mDmJsSS0MSpd1tVR6im6mB4ddzQVrwJ8BlmiBhsQf59dw05K6Ty2sSx83uYq84DyzFgZwScz0nBOTyUkA/9cdnTWXa/YQ5A+KOLaTXttRZsYzWbFMYw/hDszUFtYnuJydr0a3VcpQjTpxgATCYqZH97xUo/SBam6Ci0j0Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3iU2Vhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3iU2Vhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16CAC4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757372393;
	bh=UJCGL0XJJsA97XPn+W3ZRxXfUiMJ53e9u9a58I6b3fM=;
	h=To:Subject:From:Date:From;
	b=K3iU2Vhb7MIUV9pA0njEPmoq8zaasAB2KfC1qSOVv2wzDDJXwiG4lX3FkGpuum+oe
	 FcjuJkOEQEVoMYuWH+Ha+kUh0491BOGvboOjgt4TFybX5zMfSKbCCIIkrnjGM/u9Xg
	 7PXNm/HNYh1e1/WxHEsCOwLjWruc8xQevBTC9jp47SlosfCdffospxtxGtrGHxfhfS
	 aVns49/cbQhEmreJ+CoJUVoxZaR0tJHecNrQZc38xmI+WuYVCJ62t4MoM1hPX3svdD
	 coimOOvx+V3lbAinMGrpw1YgXzh40POBAmTSmKW8wHP8lSx11WECxX/UDuQbrrKMY4
	 Vounr7fyzPfWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECFCAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737239357.8416.7898886762266220744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09378734807a17c6d2069cba068ecea64c155b0c5b1e2ad6dd754b1ad1b4480f
Date: Mon, 08 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757372393
