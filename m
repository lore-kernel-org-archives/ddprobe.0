Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE65C96
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761482994; cv=none; b=jiFlZu1PDa47wx1LzoTL1+GjoEPdq8ifEjx+V0RbBdje/yzxQScesFJr+DnLxteDn0LTqQacCjVh/0Sb+IoNMD55pjbsz0SpxGdw1CRRAOcLcm6ppCfFX32ccDCd9W6R5ifuG6fT15RFddNS+otQwOKoLbsdPrPKhC8r2CehWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761482994; c=relaxed/simple;
	bh=z+yu95Quyw0Kdwv3ubbH0VKwerQ8QP2PoPwMS6vhFIY=;
	h=To:Subject:From:Message-Id:Date; b=E/U7R0WxO8Jxk29kWw1Qa9f+HDhfkobJ6f1Rr+T/rpuVqLNcEVTriTTb6RCoYeyDloe4DpMAi2PS3UIGN9PCDaiypFn/LUrPSWVMatnBE3ZOIRJxFnTi/5T9jMv0Jk6eF68/PuHcJLM/iPtUcPN1R1HNmsVEQBHgRBJyFzehu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtjiOSmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtjiOSmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761482993;
	bh=z+yu95Quyw0Kdwv3ubbH0VKwerQ8QP2PoPwMS6vhFIY=;
	h=To:Subject:From:Date:From;
	b=BtjiOSmFUXDsyND5ocAbvww0V0c8n6lml670FV62VTYcDbJIxUgNjNuwNRUCccioa
	 UIu3//x/5OGyXfPEZHfSD/ti2JIo9nKmOvJVzdUd0TussqN/8QtwBLuT4CKeXUAeTD
	 h6VMgj6OlfCCqNPd9bKHYuoF6nzeVHfXsZpFC5XkZlcTR0SHHjDwpMgct3EcqCaBQc
	 VjW0eF0nCb7qHEEkmsywhpNmCRFIqodI+ezySMIkqsdC3mdfDJIY4CjhZ+jryg75GE
	 TirolOO32qZKxSyU7aTySTQc9pIEn7gdRKM4udE3R4CJL5tT99Pz+JV3VNIsyv2Vwe
	 lTKaB9HI6rVaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0DCCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148299357.19173.16998402068205864127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a78d10e182ad959f902436307e68fd49a739be887627fbc9b011e7b49e9187
Date: Sun, 26 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761482993
