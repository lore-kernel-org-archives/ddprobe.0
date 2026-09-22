Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A7A314D1F
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790084434; cv=none; b=YRJWJ3632wut8xkJTGsc9stMpa4A6ROngrXZ8Z8HAoD2N3DQLHNSy32e5b7xb8bzWY4JWGGeeUo2AnUjv9krNiu91SYUquvDt4pIB/NwFV5cgMlhcHnPKZ3Dr31Kx8W+nc/tLNiDTMfDM9VAyQJQ0m/g/FSzUppcmns6mhbt8cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790084434; c=relaxed/simple;
	bh=Jge4zYYypG6gZov0BJu9aR3ZqxQ1qy+bJcLEu166XBE=;
	h=To:Subject:From:Message-Id:Date; b=C61lFed6PQ2X0NPuakRkk99yTwbUhlTfCd6u1d4o0QVjNPEPH6F2rH+eph/xVQs5nPgvC0/yCQm+BoET9Tj1nmM76M0gQr21b4D/L6fK0GjZVlknrdwnDhNmo6qwUKMYezY4koXWz/kYBGnYtop2XHgkNRo5Y1fHeL7ZhZyCKg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAxmQCJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAxmQCJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790084433;
	bh=Jge4zYYypG6gZov0BJu9aR3ZqxQ1qy+bJcLEu166XBE=;
	h=To:Subject:From:Date:From;
	b=RAxmQCJLZE/N4G5Adzw9EUsUsaXYYWawKTLxU0Pm37ahkVYWIPiEOvfplNrxcTScW
	 jTdDP+Om/vqmN+zVc9XT0gvVeIBSiVVqi1BS5vMIFpTLJx1Ny3xWUv3t74wctnWuON
	 wMw6VIxt0zI38fPXj7rEx6UOmSGh/kKDv2PYT6ab6YqJhjB+ogdIw+se4zscto5EKd
	 n/pbMYPFhmkfw6TuDLlj53dNxJEqRGMgosWSrKbQfq4eiaFij76NcDT9xVJUnlvGsm
	 bq9q1D/wS/MRwcpsl/PfMOQ96glHyAaQHnS42qMqDI7R/qaHYOr/Gy1n9UVI4zboR6
	 4VOeboOWhsa0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A7C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008443368.14531.9337916938517182921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101587d0defca37bda41f443dba734782df1fec41547fcd9ff8e4f286dbbf42b
Date: Tue, 22 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790084433
