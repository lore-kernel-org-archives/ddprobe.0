Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B89B665
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742453994; cv=none; b=UooIeB6ypn0RKCqeW6OiyS3GOuNJUTfnFf6dgVULJ6Mp1mALt3CKpxZnFv0F60HW17j9k99KuE1NJP1ySAwyA82OanyfwdCPLHhbBL84mjqTQtPGSzFURPH1XtFIPIEj293SVHanagYcvAPRDMFpNfCI8ixVxp07vtL2VLNpFq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742453994; c=relaxed/simple;
	bh=/rnEz419mwcEvlF651rIvGNdVkDD6v3jJWZE+qIc5dk=;
	h=To:Subject:From:Message-Id:Date; b=JTJKt79FECY9nuqSDrzvmEpbZ3esOJpNDJMnpOFffR87ic2jQfujzh2W8IEwZn5Gi546ec63FEx++XFYoPie3MRKafZxL7apqslrE7PTHUM37ql9SCOcaDpA6PwX+mYHruRlNhC45CbgqnttdKhgpjjuKgjOKLUl8awMkbTtsx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmHZ9LCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmHZ9LCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742453993;
	bh=/rnEz419mwcEvlF651rIvGNdVkDD6v3jJWZE+qIc5dk=;
	h=To:Subject:From:Date:From;
	b=LmHZ9LCxOTNDTlvycoUlCtg875N0fVEuUlBowZqwbVTt5JMMv1KjanD/QS4qNgToX
	 nZypGkmkoWabrwepMiV5K3ih5kpyiAy7Kb2xDlcAcpR5nlNrJSWRC4WFxncRFJMEZ+
	 ACDFBxv7WSXImAyRVeSeXODBNwVvRBnCneE/pnABY/5eUcc6RMxriHRTVQjoCvMksQ
	 6rbJvfpc6mY/67gLOoMbIV35ttNnf03Bwk8N4DUplPYomHDH0ZOwlw2OE4q1fItGzv
	 Hvmye4kvZRGzvu1T8xO0Oo26m3FAWu5yFhnlbSKxrLEfiQE0zyTRBrmXbOuguRC6nN
	 omEB3EzZRbxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945EBC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245399359.29287.5859396789157779393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5c2dd8af8757c6b3bb8b04bde8575ddcd1bb187a1c52a1a46ab8be47dbca5e
Date: Thu, 20 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742453993
