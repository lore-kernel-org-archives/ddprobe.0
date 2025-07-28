Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D73E1F1517
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753696794; cv=none; b=WW/O5hnqq+X4RCm7LHZG+yM5DxiS4QIUrUGt76qyLmTxhOuQTb4JTo6s963z29sa50Jz/fmYpq1V/dUaQZAeMqUFG5em2rFEuy/wO4KBBNOUfvHXJl/Q8LiWTxPC5hMJ3F6vxYa4dxWtUpLcyjJZ1KeJz1BOonxdnjLq49gZUko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753696794; c=relaxed/simple;
	bh=SmIIdy9zaGZ36SLZy+WgWrf75XKq6kP8II6n0ZHa8qw=;
	h=To:Subject:From:Message-Id:Date; b=DNdY3uKvfacdRl0UL8p7v2nHwZezOIvBM9cNYAahr6qxV/4z3SRgQNaWXS71lGjg4mF9Z3VTRuOBY/hmxE0G3AHVzbgAp9Y46ESUIROYvJg9cZ6OMs+zi0oWrk2CrArtGi4Qwotg2D2yRZuk2e4W3GDzsdTmS6OwFMcJ2ZgO4LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq0O+JCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq0O+JCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F089C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753696793;
	bh=SmIIdy9zaGZ36SLZy+WgWrf75XKq6kP8II6n0ZHa8qw=;
	h=To:Subject:From:Date:From;
	b=Wq0O+JCAk+NF5RlKWSY4WM+ntXdmPyADi0+ndhFIL33IR7hlM2lTBl8XjErpVdyxx
	 wWHiv/NvstDCVMucyL33iHIUWdlDILVPk90eY8oDODxZ1UPNitPPCw7pcMLsB6hbeq
	 I+zpqNSK+jZbey9isgK4DKiCwu5sBG9WqWdO0vJNm/kMorU7b0w8sLsQNW+Qmgcf8D
	 kfHjvHSUlz4ZQF2DhptAPxYtnClrcwslGjLjGW33z6YF/TM6CbgnZpCJxlq7lvHq6G
	 dU6A1GbSwoi1VDCRnjblCTjkDk5iTt8vl3sVumOg+A25zQWcLZJ8vG1tuvhov4ujVx
	 EllrWBsAsAHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E1C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369679357.31597.2846726893419793273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3a2f944c3bacfac87d7556c8b6f09919be669c7b7cd78222365e618f517b7f
Date: Mon, 28 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753696793
