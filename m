Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208041D63FC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751000994; cv=none; b=aAQDKUraUfYAQ8GrDU/emvVc/7eqDGb3TGRuDlPjBk3gu6r/OPuFCOE1zcuPGdfT+u805yKm4A9gn/aLGafABEE9EnyStk+0F2g+80Pr/LHgl1a3klTeAP1Sk6+aiEVNhm5AUztiuVIQ/LqrDa8C7/X7n9IZk5JrmRBzVuYlN8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751000994; c=relaxed/simple;
	bh=RXfDsSpOAzamjWCQj0mNjPJ0xd0q80V1dKjgZYbzQGs=;
	h=To:Subject:From:Message-Id:Date; b=uxPVNeMCYl6YbqJk1qL4FnK44T86Svg4JSPg+2v0EJ95Cdkb+Fx08rv7FCovxIEofaff/sDah/6PCDcLLKTJnhIASmRhAb2CALCfcQqEKQ7BUwqKebnPOT8+3n67yhL3MHa9wBXOI45+MyBOUhcB5QbVtLZclcA0vknxyTCpDOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5wrpxJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5wrpxJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5593C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751000993;
	bh=RXfDsSpOAzamjWCQj0mNjPJ0xd0q80V1dKjgZYbzQGs=;
	h=To:Subject:From:Date:From;
	b=C5wrpxJjK25DJwbUFvqFXnwkfv7IOqSw/E3tN2sQXijspk0agaPhWoqv00vaUNNQQ
	 iGLBFTlk1Lqlkrl2OLBMdQPaDM8DKfuKugT4vFTycd55SLh/noZx/Zc83cVlBAUso7
	 qTNSBl08GkMFYHmZJliYMXoyRUFVNCv/Sv5i8VHSrytIcSFW4z8XLZ91Slfts714Ty
	 VCxjcMFzANV/DC5NO4yAXDph8I2yhRSTerwM/e3DREZsjLwk4PRDUUCf+bTD1JTMKb
	 OVSZC5PbLQ1005GxY5MVDA4oaYeusnIOZKSVx5mkWUZEFK5IQ7qVjSOgz/FR+HgIOx
	 eRGKqYL/QHbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA3C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100099358.20665.14536687174687332442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb721b6aa5d625df6c9fa4d016c7edbce61c4c4bbdf7c05674c81fc4790f47ea
Date: Fri, 27 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751000993
