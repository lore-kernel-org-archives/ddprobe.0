Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1C1DB54C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765001574; cv=none; b=YZZRQo3TY34MCPkVd1q0AAWhcPKbOpIo/9Y71LdtlCX1LooZpda+O1ywwzJVbMmGQ3uQMsyXWPGMGmG1m33OHN+m5ez2eQbsmpZLuk8NhbYEnZP+z2CcxY1aoqAMEj4slxJEr+mh9lUUpItv47nJ6txgjw1hCOqJTiz8C83p2ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765001574; c=relaxed/simple;
	bh=j4/9ZTWS6wKaB783Io2V8NBd57gZ9GFrI5RTuO9VVyQ=;
	h=To:Subject:From:Message-Id:Date; b=FukpKyW52GG0r2IezqaAbzRE2QBzUYpoxV7t5tiXUoJ8RVI6LeUq/Nu0ErWkVuhEXPgP1V1sopmTxtdGnY+wZmR2BEUH3aqT9auctH/1OHZeS7r/Wmxkvy6IrkfCKkoDIYrCfi2oCiUzOPmtLHRplYx7gbizCXs8R8hFyfGdiJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2EZF1+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2EZF1+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAB2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765001573;
	bh=j4/9ZTWS6wKaB783Io2V8NBd57gZ9GFrI5RTuO9VVyQ=;
	h=To:Subject:From:Date:From;
	b=X2EZF1+XIcKMQTjfF4qgtgaohe/XkiAH8pruIMrGBMe9B8xgNI8sdeli0ghyb31qT
	 r36gZtWjNXouMFSJ0NJtKzx7ezllSdQSB0JK55zYCP2+/v+MWOPMrdG1DvHHbK4pmT
	 Y+mRvtJ4gEPjSl0kj7lZXhOoE1Q/QkOs73aelP5wL/x3g6ZFVuLsDddCVSjsUs+cxE
	 7ilsgZc50J1GEnWqO4D903UBCYyA/Tr8vUohJQV0alx2QhNIximdIadun0xZHld4B8
	 iUTc015psh8QfW4lx7SBAU+/boUMD2fgWTa3gX/ZjVrafXQ9F0fWQwNO0JPHafj6RB
	 gZ6CpAuat3a8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98412D3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500157358.19398.10738998977674401226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd71a17e0f5672e9a784541a5972604b9c0f04235f991f2b2ec6f124bb99f2c
Date: Sat, 06 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765001573
