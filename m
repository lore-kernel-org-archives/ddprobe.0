Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE834207A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756503594; cv=none; b=FYw6P7GpXlwBx2hKks2ghi66SYrI0fNFNBk8lWXmnOqi8htMGySWiNoToyLh59YnhdaR6hySYbSkUhk0WmxK0wbI7pbZ2JTFv6Mgc9RZLt+gUSFE1jD1z6U/m066wYgvHEvnnUC1j/1zNdeWs9aflwDTz5k23GTVmduO8+XmzrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756503594; c=relaxed/simple;
	bh=8Imu/Og/e8rkQHS2udzRFu/sjDIrgzSPXGJ6LW1EQHc=;
	h=To:Subject:From:Message-Id:Date; b=o90rAO0i/GnqxhHizE7KQRp1TPlUn226P5+jvTQo8NIBCXJmlBsALdFYFdiDt8dt0EIqZ1v6/dv4Iwwmtk32zlU8uVDV7Ucs+bdyfTbjTlaFOBKm9IaujsYpokAMQXPd6f2vudx0F3eqkZel6QxK9VYdGfCU28C4BHtMLavSduc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeoInR85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeoInR85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3048C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756503593;
	bh=8Imu/Og/e8rkQHS2udzRFu/sjDIrgzSPXGJ6LW1EQHc=;
	h=To:Subject:From:Date:From;
	b=MeoInR855kitYWZyJLbicKcjZYGl8mtUz+KKTCzYfIvEmh2FiylLEc0JTfo9W/+lI
	 h8CWsEMewox8y4CxEBPVVpy+YZgfVnvOQOT9tg+z1Vr69FDnQJUHQrxm48PjyWuKfZ
	 IjJFWa8zOOgXp1QHp2ZrFT8JVcsnr/0xwwtKMb7R3smiiW+R3AdVQsLzTntkmlIlE9
	 Gu+/O1af+uQ2UOmYWmOkjJr0S0B7biIkxnZc2n0Q0s9jGzYx5FwjvBioPge9i16PgE
	 8AbanCHMXv3tTRaITS2zuuK5nBguF8z8tkQ+3VoKcu0sDUvUGZbIDCz3uBIVQlPiGs
	 mhguwDh0NYisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D8CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650359358.27621.5968474370727481772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c02110c45a7f65e2b14122cff88375368c0e04b3ef09dfb01986754b315ec7
Date: Fri, 29 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756503593
