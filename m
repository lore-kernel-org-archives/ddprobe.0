Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F61A1BA86B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719932723; cv=none; b=l2mat+6mrdPeV44LXk5y1j+taly3vnXyVIXb20k93VeRBNEazJYkwfs7D+77BsND2r24A6yDmg2thfv0+tvmjZKymc+SETLQsCspyAsRNVeb6oEXrdDRIi3VDB9wO0beiE3p8EHnKPP0XdNGkXU+Bj6aDmV02fIdGsKpQqT8Qbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719932723; c=relaxed/simple;
	bh=JcOGnJAAlbQ0kgP1hOtmhNf+iFXGvunyxgmosUJuvCc=;
	h=To:Subject:From:Message-Id:Date; b=q/LpQQjH0QHtix/7aiQXSYCU0xUgagtJr6BlBm2em5bgXl6muzj3GMuyIPV0uaffbQRK80iLSKEsQXMyt6gEHRsGPdiaJPAUDmyXNCo3oI4HL6ySVRsMrSt0+DhylPbMoT+wvG6iAZK6YKNCPTYRGWtIZPB54nniU/eHKUZdmtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmP/nYJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmP/nYJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA38C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719932722;
	bh=JcOGnJAAlbQ0kgP1hOtmhNf+iFXGvunyxgmosUJuvCc=;
	h=To:Subject:From:Date:From;
	b=SmP/nYJQfKgEkRcd2DFAGEXKZ5oJPBhRzs5uyYccGrknjsLRKLV7M7+7Ee8P3uUj5
	 Y+Akkw3q7iNEgS/JIN8r8mj7+bNKtqdVpO37XCRoADMMP90kHurd8gV9Y4RGC6OXzi
	 WQ6xiXrco3zdAtNyKr9V8h4cyU5BbL3Bi2WQk4D3wy4mjFxLYmsbfSZk8Ygxs8W0MO
	 ABhezcEBpddNkTivUbeRQkCEgFft/GVaC5leu7/UVLFrzL/5Ij9ciM5AVuA9FUpRT+
	 Be/fP9eQi2dblyoI1c43+UKNpxY3AZyYjNxaRmmEDJzbewN47hcOle4YvUnm0ySNLn
	 Xbez3DXAx4UtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7E0C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 15:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993272281.429.2415474697405274356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1474dc5720b2e3fb75f0c756a39852b8e83c1b563d3d4ede9046dfdfdb6d69c2
Date: Tue, 02 Jul 2024 15:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719932722
