Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B14195F17
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729589154; cv=none; b=OZUVeFYyypEeI6j9ZIWQLYko6kLd1TuxSGVaLXX7w6h35r7RNeLM4hYQNNS8mrBG/guF2+cPPXXbtcpmsNXjg5+F4nxEmLsCTd3lsP8fp9KYIj/SBGohK5jziegNJcEWG2Ddbs8sKXSCxmYzERMr+HCy6Tza1OZOY849VXLoVSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729589154; c=relaxed/simple;
	bh=EP4/VEe35Kdv2dh4b9IyP4UYCEY/MNYcC7fJr4VhOuM=;
	h=To:Subject:From:Message-Id:Date; b=LkZXhecfGAh5xJHNjeiVmWzjGAOLr4G7Ko9KXhQp2yaWpOC78m2I5+1/8Go3Bj+C6zOqYCeM7jbM7asD0oUvQfl3wtYUH2iHjln6fi8gma9DATswqX0ZXns3nKJaanK9KgV2X6EeHVCx6ZO48RRTICcBfmVTXJ2C5WMlmr5hPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvRikNqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvRikNqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB051C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729589153;
	bh=EP4/VEe35Kdv2dh4b9IyP4UYCEY/MNYcC7fJr4VhOuM=;
	h=To:Subject:From:Date:From;
	b=gvRikNqpu+FJJIbx1TeGOVtA4TeykwNcgHtAaxMihSOuRbJzzKtOlkdVx7r6qS9iU
	 4MjOk4tVvWYMn7QrEPKqNv+BU1ByZLnoWRNlLI8AkvK4ZV2vl2TSMCTHpRJRXqbNOs
	 RWndtIk4tNYdg31PoEI4jdKUCn29sjfgt2CN/0KWvzO3kZLBjrAuEyYspaxLTL2gOK
	 df6ltaiuG/sVSCRcO5zWierXJPw9J9oauWiovJmlUuKtEtK8q4lRVS8lOH1hHUL6F8
	 xKSXCYEa3iZJJm4XC74OuDFIIEmNo+mHKh1Uhpgw0l4rzMhjuVMFMN3y/uYD1X0ZCt
	 PvMJOKwj7xtvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F8D1CDC8
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958915360.15598.16217655654283937318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283df6aaf92b5aa4026367593ef60d5cac15f6010e813b14d975ec6bb3d131f4
Date: Tue, 22 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729589153
