Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D851FF1C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749977994; cv=none; b=FXDruh0EprbGH9XfbbpyRU8CC63Y8dOzmSX3/+O2n9O76mesnHQbGbiX0ngvIdCz2RzobtwRWHoPIXrZLP0/L7N2EUCbSmDhTw3btuMe5N0xLJm/pGq9ML7gFbS175ug8ArgthpDkc0rDBrcg9cvy3x37g4uOe/IgOxKQPE+5V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749977994; c=relaxed/simple;
	bh=+eRJBsf5gNWB3D57GobfLaxtpN6MJA28VckYcXJgrwA=;
	h=To:Subject:From:Message-Id:Date; b=gjGsxT2EDuLoLml+mc1rd/zeuuYb0au6y9THAgl/FoOFbXzdKid17pgfksVsijwPDbr+d1m4V7/MFTn+x/2LjhqZgvv4cN/Dy45+QUY9PQ3f9kN7JJfjBy2PteDD9FIU1eTUS0KB1nbsAdk0Tk0SuVcNHI1KZVi4e+M2aadRNPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5AtNHoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5AtNHoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C65C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749977993;
	bh=+eRJBsf5gNWB3D57GobfLaxtpN6MJA28VckYcXJgrwA=;
	h=To:Subject:From:Date:From;
	b=d5AtNHoLAGBmSfhyaXwWrmdiQHPkaGVSZhUMt/+sDFbAyBhjpy/yFPoxjz59JVQTK
	 etFN6Gf/dOkqhBIIEMKSYkwRLXKM371n4Mzt3etyA7Qp1ItTNFrKQ8kaa4jv81kDWD
	 wKExMjFQSXIHoAWDVJmIXu7Gwz4LdbvWInaNPNYbXZfiNL0He51lQss2iMIlvbXtvw
	 R2G3oQs1fbotZOhmwpf//oN2M2LFaO/fGzzDNBx/y8dgIw3F/9pIs/ez2A3OTEtlu7
	 X1S1AZBnBoOr5axB3dAHYPAw7gb8fNjc/AhVet+qVQuTW+IRq0iuCA2wILYSAw4/lq
	 2iNHaN0DnQuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FABC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997799358.30283.13639052686951272363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d838c2c4cd8c961e4c5139e5a0f3b85658b5fe720c31decbcac528f17c5ea949
Date: Sun, 15 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749977993
