Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA66281362
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748940595; cv=none; b=SPRv82T3AaSbCB/nAT+YU1T7vuSn86zWReanUicLA4QUK9M3y5d+C2U5Uk4pdmi/uxoxylLTWI0t3dFZ3gsdX0J42/FOXm6NOSM6vKmU5XfX5PX+mfeFd8UIApwG/rKVqW7qZUjoB2z5WVL6f0j/atki2AeQtZQxos2a9IKrd1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748940595; c=relaxed/simple;
	bh=vZa0fDU97Le+BAq5nJzTkX2GVHBY39qgrAgcJBR8H6M=;
	h=To:Subject:From:Message-Id:Date; b=Fk+L+Mw2TmGJOUf3bBhH0rBqneac55OMTEKu4cipzbtxldJFn9YFXcsDn2u2ocKaErH9qpYPZ1MtsYyXkghc9k7GeGXZHIDNr3ziEWf3UIEHZPq/HAd7Ri2GbPMQXJVkZcgsjvo5prYzgUbrmLS5Fhi8O7I5+b6OPGPFZigQIDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mv41g+U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mv41g+U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABCC4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748940593;
	bh=vZa0fDU97Le+BAq5nJzTkX2GVHBY39qgrAgcJBR8H6M=;
	h=To:Subject:From:Date:From;
	b=Mv41g+U/AzsEvdyNSZTIxWgY0wrQPozlijf6qkoQxE8AcAdgdGG7KVzp8Zlr2DKGW
	 hvsMeQCM+6ezN9B2nbY12Eijab3Y/OJLjMyeS69zlhSV1utu1ckZOFXLSoqaHZqvV1
	 zuEFDibDxQy6MBr2YfJ7ONpRwgHEFMaWIy4omWKmIJ8fDYQJJcztbFJ/emk0nOxLN1
	 9f92aens2aLaAmUDL8PaU7e/rv5EQXxTyxEubSOXxF+tz83T38sOcmqt7zAl85Rvf1
	 FtGxBJKg3racxFQbDRx5hp+oL8g5oS0mgjP4xNE4urBYCmXKxn01pTEeki07vwzz0A
	 HuHyoU60B2ryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E90C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894059358.23992.13355882287042948967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70522a6a76e40c14f06e308ae348724cb71baedc1dbdda7dd24a428c1d1378af
Date: Tue, 03 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748940593
