Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130F41BDE6
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732674354; cv=none; b=UGSkjnUzCBaIxLOkVO/SZPCRzb6dcqe2xaOcY7vbJX9a9hE3uMvzdcgGagy8d4NIrbIfYeOMxCTsH2Y6Q39jZjz72Xkjny3buphp0b2cgxQOcG2RXqQtIq4VmjS6VMLECNFBaQ/WQZLpDANX1imfCYpIa7vsk0ekxqZR7J23lBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732674354; c=relaxed/simple;
	bh=Ic/+Y/FhA2P1AC/6iUHMnQ2HVZcwijixVQt03dRc+KM=;
	h=To:Subject:From:Message-Id:Date; b=HYWGh6GA8blYDtvuiWRVaYMbitay+4V0ixOg3AV2aHkW+kdcj4B83y7fRxpkhIvcnHOLp3r7NruQr2Diq6QMn/wAOZqCrn1g4R93alWKbR2mD7mUEZQAmgkddNq/xRZ92ldjrbzs7Iul1i1Ugzc7IoPT5+2gr9JRRy8H4RhcyS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRhxwEhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRhxwEhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC146C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732674353;
	bh=Ic/+Y/FhA2P1AC/6iUHMnQ2HVZcwijixVQt03dRc+KM=;
	h=To:Subject:From:Date:From;
	b=LRhxwEhWDiMWGD8BUOAX2RlnNlFhDM49wk8fr7VjW6befygdUdD3ICrk14VOEkepr
	 gC+H9QcY3Mn/cDlMoUeUUdr6mIbb4/cJKbgVdlMsqA0BlwZM/qS2C5KZWTgCtYE2Jf
	 X4lKa4OvBQQntxkA9T302v9AmG3zK66P8NbM0bRgI56IA455GxmG8Q92qOKR95ELZs
	 WrstHVF1694wnQ39ab6K1XecofHZkzRUW/RPFm3Z9ddcLXGCEtuLIn2/PthEooTegh
	 ak9QbFi73J3jXj8MK+co3BWYQuzPF7PCklcbW8TzMgwTRl6dlrjI1bAHdzReM/ll+O
	 kOO88USSgHh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97720D66BAC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267435358.30543.11268467360699506840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dff23eb2030bbb8984b0ee4b9c2af2c5f781590d448436790ecd220079091f
Date: Wed, 27 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732674353
