Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C702E5433
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751401194; cv=none; b=g694f9nFKK7D47FvsVv54yH99rVz5RiaeAYUDzeiwd1OjVF16fAoFGENdN5/GKRqB0C9vNHtoxN6Rd3Ubu8UWe9vJFbn2epn+ixfLyVLKrB1Mq6tzldxd73mIjzCszFXoYAp1k2PpDSHOdtVxK6SfHrhEerzODxGs4BKuS07CrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751401194; c=relaxed/simple;
	bh=OSl9hi/C9H/LcrieCNaSb5T0jWhQ7l5opPAWQe4fL5o=;
	h=To:Subject:From:Message-Id:Date; b=tblImG82LEFe8V+e9ZfUu+Qe4pefHBzTUrCKLo7SlJ5bl0FLEXu9QCHD9O+pTqVXDFcn6iffYKtzkUkUe29kESPDJFDa3NAj8rpMMMA5kx+wZNFx1Tw1w02PkxfHXqw07fb4tcuP5MQw7Hob1rEThSzR6A3svXRG432cQCJ5DC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhmwaXLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhmwaXLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C6DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751401193;
	bh=OSl9hi/C9H/LcrieCNaSb5T0jWhQ7l5opPAWQe4fL5o=;
	h=To:Subject:From:Date:From;
	b=DhmwaXLp8D2Yjqf/5V9FVfyjmEnvSwTHbHOf4dKg1JP6uchvTXfF6EWvJ7/Z5Qvcu
	 jeP+Z367a0L8bW6v4+X1MoSXsFC2rQOCZixhjcoiekYPdBee9W1eYoCnmElNPDSh85
	 fRK872RYm5fCgymVzcoEDjbnpddcR+XpiodeDIDIEMBMgOzwy7xhSJENl8B4UgT5u/
	 X9FJoRMPW0PG5m4asRpEmycuoybhMdoAEJhXJjSnDJamVZUrKb+h+wbUlgee3tqsKl
	 gXLFaO1iU9tDpgxreXO7VNzA0VAloScbZHaEFymgJ6+B9tlCQdgEg93eIFQx5tnKL7
	 sOZtVksdB2/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96191C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140119360.12223.7248971742385603093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab46777a0d0f8920e0e11ba2a9c1c8e3737c191d508fc9f85a333f641fab3876
Date: Tue, 01 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751401193
