Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317BD3B1B3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775458534; cv=none; b=E/1E2nzODrf9OJ2QFolU6iip0dkTf8+hzofiqr7L/Ip8ZaWg32rUUMMZReHxQO2M9rwfaXMoCZcDv/D2tb5y5nrM1i5LaErbabmNgVyoflt2+0bRYZ91l+A1jeKVXZIcr0Zc86kmjIAkwyTsmsFXHpp/NHx4ODWp0pGU3fqjzUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775458534; c=relaxed/simple;
	bh=XQrAqHo5VAdG1X84N3mjdyoNb2KLBITR0xng2KAgdCI=;
	h=To:Subject:From:Message-Id:Date; b=X4t5WsH1SGP3BCIML7v4B0OVm+OdVZF1XJptsRGchrvhBrp4nwt8/Qp3NqUKQ/7uSgeKmCbDhd/pphxnzxzn6C3cXXTENXbMi6qTVtSaaNAgvF4opOrzBdj4pNK2ifsr3ENkrmGzvZMQiSIkNqXiaHvwA0gUhNQQ6XPNwbIfTjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpX9MZ3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpX9MZ3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8423C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775458533;
	bh=XQrAqHo5VAdG1X84N3mjdyoNb2KLBITR0xng2KAgdCI=;
	h=To:Subject:From:Date:From;
	b=SpX9MZ3WUjx2OE8IAG8+mosi9ZBQ9k4Jls29RglLenvIVFZo1RfaMJKxYfR1BorAV
	 8zlAYHSfDaSE3+gz4OTwY1E01gbja2zwcN0nuo+LfGajqFoQYdkYNAxxRMNu9zKsv+
	 qEyZYJIr0lHbZ66zVZaR9xG77jtln6dhWPHIMm+i1ok44k1mctN/buIeU/VL3aPVO4
	 HjlK1RDGho/Sdip6W7VsFHnhEtaYkMFkZsm+Tx5Hm2Y9/HA77rwYZ+nSyGq64gtd6d
	 aL6hFpaaHqDU7Vy0UlKJXjCbNVVvvey9PWwPYLYQkprRD3WcLU1FPKN1573EJR2cnZ
	 CSpkhW4La9ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53CFEF4EAE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545853370.11344.845641943995552496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2040d96297416e63558d77356674c142c3291ee4563c0ceed5d820ec336142
Date: Mon, 06 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775458533
