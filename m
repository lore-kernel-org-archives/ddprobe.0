Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1DB283CB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784756374; cv=none; b=CVi7xkrMnmNRVwkd28NxESfLIdYal0u315pvgpFF8fn9yLSOO1eSSuv6smrk3KpnfN/tObey9A0gvAX1Vrxa1ghAThFoRSsRsOY8NmEGIhEtwxuzQ329t+VcoPmhikNYuNIlsWpq+S3fkjvYGfzHcPJsK5sz2ZVKjw+S4uQbWyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784756374; c=relaxed/simple;
	bh=iAg4LtZETpnXnotWKmLhpn9BIZ++Cb09csFEqBTxMUg=;
	h=To:Subject:From:Message-Id:Date; b=hmn4BVU3/h/jA7WLTkRoLkDgs5ES9LZ7iuP5udjXf33l9yysCURhfjPM77wHLOyMyz1LFSrTizPt907sb1B7lSHCdBaNh/EcZ0V3uzS6Pp8DCKbGPDo5JiRuj7GuUKgFV6p9ZLnycoaVG7Ncbtge+q3yi8wgsHNutExcJUg+chM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHByUb2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHByUb2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78E4C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784756373;
	bh=iAg4LtZETpnXnotWKmLhpn9BIZ++Cb09csFEqBTxMUg=;
	h=To:Subject:From:Date:From;
	b=lHByUb2/NiOiucYON+bbdnDNNcDBM/jAuppjyhLl2eMXTyJ7Ln9ulGCsxbMtUVdCv
	 xq3oO0dRzLHX5GnNLvRvASaxfXs1C1cI0+3QCZfmAgFisylZcM4RbzF23gry9ijn6B
	 oGPLVW3ebjoi/aYB5cl8eqZnZdxu5I49NUaokFS7sg8uUJ6zoWvs9AeYROekGq8H8+
	 4osuyx+W8p8tQ4ErCVXBzqevxjcJpAAPKcijihqFJNBE/KizR6+IA8A2W2/kxZDph9
	 PYGPCY81OI4nx84M5+PqHIzsEyw/pRf0kCEoLOSBrvT9YcmpBzCqF4gbF/Lz70AY+o
	 e7V5N5oc/juqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9C8C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 21:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475637373.18528.7040696531163811545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19610401a7bc47a9360fcfbb525692390bc2aefdf97878fda109cffc796f7484
Date: Wed, 22 Jul 2026 21:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784756373
