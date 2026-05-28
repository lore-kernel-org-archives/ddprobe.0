Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D9E347C6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779997954; cv=none; b=BBH2jIkftwhe9rEwXhkOVWZCifyaHwLVf+PtnOhlJmbbilfQ68+/gYdHEiCmbgx37F0gY2rtTZ8dk1CTh/Xtyg2covhPJKHB54aqSZ5xzy4Epxl7tM8u/us03m/fFDfTrF9wsch1H0lFI3Emlx9qPhopCR0lHRN4kuOxCsyGURI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779997954; c=relaxed/simple;
	bh=a7m85TIQFPYZyqIH+g4Gt1EcGnDPMuvoYHVYRRNpwu8=;
	h=To:Subject:From:Message-Id:Date; b=bgBrffTe9UZvqyrXcyVEHj3lWKeUBtJFtuhKVcyhBzc7Ybbw+QrIU3dRpDNvId8x9L9KDM9jEpI6MT1v4ylFZzLRfSrQPto/cTwpvpXEnZwaFVAHTlqIKEocyqVUb5eNDF7tNO/d+mRF5CvoT8ppoqleXiixbgXOmbrO1heMb1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aF5bbk94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aF5bbk94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C725BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779997953;
	bh=a7m85TIQFPYZyqIH+g4Gt1EcGnDPMuvoYHVYRRNpwu8=;
	h=To:Subject:From:Date:From;
	b=aF5bbk94dyWox/K8KrLRx758bHsz2bwUjf+ytUsYCeOaNS3D2hG4hlJMdAKHEJFad
	 bb+CKiC68KfSYKaXszElWtfPbt2z3coyCjjlQ9aRhGL3sPtq6UHgA+bu5SUwRpc/DN
	 157Tj1mu8Lqpw5CYK3/bRvEzp1y6Da5ZlPpOTvasXc/Ip0altltzy+n59ngt3bMecA
	 5gRNbAr58PwymKN8xPlY9k0YjvbnIeJgPe+omrETe/L+5hClc81QNW9wm4YfLIE6wP
	 GBmHunIvK1RXtMWEhjWCrrzn5Ld44FDW0X7VNBQrh4o3AcfveUz8Ui2TyQWINOXW1Q
	 tvKQnXE9rEsPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC9ACD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999795370.23341.11536355938753409617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567fceb46dad1fe289ebb2c765973caf8cad08342afff2871045b1c175d93502
Date: Thu, 28 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779997953
