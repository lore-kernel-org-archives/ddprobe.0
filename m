Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585762C86D
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759559394; cv=none; b=qdPYb2JgHTvCd0hRaezGMRWOBFGwYo3mI8iE/I11JZHS9QjgmJdi+SHs8GU8FUOoLV/EUADoje/Xxjb3TUmsYVsXspCp5NyCERwrQPkaqSQEi+0s3QWjLD8Wauh2fr7kOhuDMLzY5v3PXVwfGrbgGX/sO7iS6+wE8cPwZP+3Vq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759559394; c=relaxed/simple;
	bh=NBzJblNXpwdwp3hdzBvXufOXY5HGCVUaDrhyaWZnjBM=;
	h=To:Subject:From:Message-Id:Date; b=hd4lUWBr8CrZ3KI4/jFZR9Z216w2VEygvJAN52j7txQRVIR59vEIiI4n4v5Y3VCUy++WOmr7DkhkjirbT8puaMJg4D3Uf+SU+qMNmAlt6HwS8sFk+4WUIamXvhyVBdII1fB7wJ7357kzNzoOo/lSU2Yyv/U8rSC9m6qKAy6vZho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsL8gCDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsL8gCDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759559393;
	bh=NBzJblNXpwdwp3hdzBvXufOXY5HGCVUaDrhyaWZnjBM=;
	h=To:Subject:From:Date:From;
	b=dsL8gCDSINVqT88Hqyegyh6MM3fY6WEa78jUtFUM6b7vvGnsU7LVcGB+8qqfCQw1D
	 vPwXY9pvnaxHukvGcDs3wt0hHcfIH4vGpwBy/wGNjiF31QpD2IW5cvPWBaw8rYkttp
	 ZsSDi74zCKHJ2ftcs6FmGzPk2hovv8+1z48LeQpkugVkDKOCeBSry9klX/9aZM70nW
	 iRV30cc902v2giNU0mg5orbw1ABdhxp/rQKQje1bRCSRXAspxxYC6AglVA6ClzAKyC
	 E49HqPf9ExXUVjNKNrBGgrUlxTLkGnDd9dJKJ3t1xJYvdapET+HQ1CIolgFHYauza3
	 sZ55EaVSP08lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1CCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955939358.26380.18166331047696414102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c16ab5cd08a7729bbe51c32f76fd0071c0c618de9e6cf7d8bd3ca9213f9271
Date: Sat, 04 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759559393
