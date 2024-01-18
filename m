Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35E120B2D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705570096; cv=none; b=MKYqKCnwAtm+WUuQz0AHOBBcuEKR2C8/UO0ofgT/wgr8CpG5oc3buk28q4IBmiRmnZYxe9j5dahvnFxd1PhvH3dhTSaUxg7mggiIau/5yoI+n40+EEBQ/Uxkh3Qv6m4YS9b/NfkZfn0pEomTgDku2aVFHW45qDY/skF4yqZIygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705570096; c=relaxed/simple;
	bh=RYLOXJNmG7AxQ+TXHLjea9ETuKtLUg/apPSPT4zOswI=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=J3Zrq9FtokSy42rhhFgwR0wP+EVr9GMMtkFxQDcO4fbQgaY3a6zv6NpUNg51+aeGeLNqbxQKbZ0rUWvEHLz7mNxgMJKZ6i7imNwlYqnPvLWCIQtfzfIL29mhQ56a6dvg4D5WtcRYBMQF7S6YRRmooANZIo9xx1SyacfHKmW9WT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHEALPGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHEALPGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FE6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705570096;
	bh=RYLOXJNmG7AxQ+TXHLjea9ETuKtLUg/apPSPT4zOswI=;
	h=To:Subject:From:Date:From;
	b=GHEALPGR0bDR3+X6Elwnj/TlDcNj1KNWPibqmhnMJL7lebwtJg5U64K3vSg0NOHIV
	 skdfDXYJ/+Lhu7yxIwbUVRn8aBp2O9JbVBd8GzfcGNPhAwbp8LhzAP6ZGZ09IahUXI
	 /QB7QV9jF46CT8yFlxckfSlBLZqSL177fbu38wwDGhm1oYpgdG5/xa6q6jblyc6NQ8
	 MqYOh1ZOqk2nXtJnmApW+vP+y4mf7SjEx7Qxz0a37NDOkgL1G183S38hUfWlQ4V5Di
	 R8Vyy/4zFe14z51ZEdGFfwnHz2MVzhbljy88pbR6tviOKKkS1xw8+lyh7WIRhunb8C
	 K1lx8dm0g7e5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63707C47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557009639.6073.15758467828736288161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f13f359dbc65ce73b4c4a850c4339d14bdaf3027dfca2e279c355e89d222b24
Date: Thu, 18 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705570096
