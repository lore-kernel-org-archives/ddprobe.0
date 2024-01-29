Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E122014AAA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706554697; cv=none; b=PrIS4PHt9cYFHaJisxigFLyycnIwoi9WCyB/djsykTBMOkygJAzxCzFUisMBBG48h04jYUx0gBO+ONqVNOqXKX64FxeV3OqjvIHEraaOBTxCc2DnF2EKUk6yJQHppjoh2Kr6kLCymQMfxUg+Xhd5Z91VBRigMS6HrXInTNDXBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706554697; c=relaxed/simple;
	bh=r+deD/oIvG7Uv6jiAtfYKxLNochrtWysQceDQOtK4y4=;
	h=To:Subject:From:Message-Id:Date; b=IuWH7NakZ/Pj0hpkSuDx7bXynV2jn5I2NcsKwXQnihnX2OO2Yaumk4+mjn7CrvHW+ljUXDaK6rGPG/aeadmfuLY0hVE1uUO0HVhSCeRUcAGkUUJXn5DyVOwqclg/0MhI7gOoni1TUveEFZyOTv+/K/Abss91FM/ptTJHEbCGRP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6VXuge+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6VXuge+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FB8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706554696;
	bh=r+deD/oIvG7Uv6jiAtfYKxLNochrtWysQceDQOtK4y4=;
	h=To:Subject:From:Date:From;
	b=m6VXuge+al/cPsQR6ZPwc7/tMeVjoBK+aPdH01eN1Koal/Vvb8cstj+5M5ctsf8i7
	 L4vLAt5a8nEvDBIacSzdLgHSFZpByukLJHkuoDEn+nPuQ2ghEy7evx6y61eBtxbbq1
	 5sRW3f6QoP5dBW3D1qhd5XmNeKt1qclZ2CjgKbz6hWOgnU1bqgP8DU0eb4yS3K0dUP
	 lRWl+kkmVM218ESK+N59wBL6tkMv3cHib+zBRWKEKMpx3zbseOpWpKd0Ufe6eovoiM
	 s+xfNc4Y/JgZZyLa5lzLB08zjnh7+5JuIO6NYbtyNyWduFYB+GUWBH12eeuvptUSId
	 zRTruqR63gM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD44C47DDB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170655469637.23194.3568718567434412051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50b7f7e924358540ac21ba4214648aea386474ba4a43bfaf73c24511ebb3604
Date: Mon, 29 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706554696
