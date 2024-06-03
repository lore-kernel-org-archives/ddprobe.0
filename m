Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E3A107A8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717412123; cv=none; b=VHMOpAkNnwWktFX2O6OQtTp8TnTs6jtRLV9jDOVHz/M25ix5ipl+865BlU08rt9Jh1W67M7zM0JdBJnTY96kkrZrvGI7BsiZp1DgwSOf+6sTrDw5V9dv+en7SvpU+XDgiW2SuMjKtcopAWAo3zF823wapGPvxXmmsZaLzZ2kZiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717412123; c=relaxed/simple;
	bh=FwSP4nwhmQbA+DQvBHD/SSrN0J1KaCS+SoZZQFVGjOY=;
	h=To:Subject:From:Message-Id:Date; b=kLx3DG9K4xZnQH1lIAeShzkXI+zadWkccuHG4p5DQRjTv3tk8phsNpiqwTTrS4dfxgFNoVFtLPqdGwAl6Rgt24cY/DBQAFqB2o00vfnsLrpIBByaT1LQAcJR5QAL4kc5rlaZ7z/0lTp0AIzQ2Z21CGtHvblALzgVQCHZpqIxca8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxTsWe2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxTsWe2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1743C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717412122;
	bh=FwSP4nwhmQbA+DQvBHD/SSrN0J1KaCS+SoZZQFVGjOY=;
	h=To:Subject:From:Date:From;
	b=LxTsWe2n2ZiBacqjZK4hRQ9z2DgG88YG8jF6f5WAO6XSlFxmAe4L4U8aHXHVfVR4f
	 HvC3XwulQ9zOU1SrRub7qHS21oHUfHlg493RgEJZ3S03/FJ0RM6ulE5F4ZBiseaYXA
	 npSiXBDuv5ZjooLHK/XUoZWg2R9CaYXQfeOWkWOgsPNEcBqb90kE3Z4MAEdlWkctVp
	 iR7+FjfC2IuOaTRAIQ2Od6Nd1tdjMUQ2uKZEdvpwNcjir4APq5JKK+JmKC8beKNdel
	 kQ/NqXI/qdJ1X1QJ1FoEHRWQ2yQmt+vUtepDMKEIwhri2uTns6o6YF5ULZRkkdraBV
	 6mTsTrCivfEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9ADC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741212282.16745.9549847910468698759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2e4c6d093735ec4f0f22f4338d7b62cd0c99e48d104f43f504779fe8c62d74
Date: Mon, 03 Jun 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717412122
