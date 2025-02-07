Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D25D1DE8B8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738925754; cv=none; b=K23ymW32eT4w9k7rO2/9LrqVsr20GNKQn9WrfrYT5S7CUsppJuUjOaUO7dqp/eAX8C3+Jyjo/dQP4t8iWUBjyQRnMAk9ZCo4aq5ZCjVSLPq8W6sSWZtlcWy0a/WlxA+A8w1sK8k4KDPDXQ0Js80TidzJnE+RP0RDEwWmHfG10Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738925754; c=relaxed/simple;
	bh=3xGPCepzM5/mkP05M8UkXK+z1CLF3Oi247ZMv1PBvOY=;
	h=To:Subject:From:Message-Id:Date; b=QXe6lRGz1sTUe4Xb/h8L5tBoBYjq26ZFtF+xkXBZnOW+awo1BHkcBtF4UKPC0JCmhSTg7rGRNo+OTHPivX/j8NsXLVxx1U4wy9qNfJd6qdL8DxmyG0dkBvSaKLccWdT0xdkaBePVlGhQvTrb3OZHhNWKHFtCLldVjHshdTOUXYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCMlKtuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCMlKtuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB03FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738925753;
	bh=3xGPCepzM5/mkP05M8UkXK+z1CLF3Oi247ZMv1PBvOY=;
	h=To:Subject:From:Date:From;
	b=hCMlKtuRfR+6mNRPwGyOm8U3+ZR2QzLHLQx2ubeJrXq/jayoDwSBWyyQC5SBrW2HU
	 mBY+tAEnguCaVmcrFieXbTPbc31WQRC7/vW+P/FyY9F9gvMkLJE3Yo3PBHoAE3FkCV
	 vuGyoUCVqvQpyuxYwoVv8Hi7ShROSM0gObrZSPxnH1pnfst9esf4iTyXQSk3qd+a3+
	 bjpszjuUut6eEZl0T42haFkDXWMlhIsF3MvAHmT31QWz7PCVe0aqgmIFrM/6mqnbhP
	 9vlJeU31DoXj375ZHtMrQYNxETLftI+PPJa5e69V9bBNREz8V+jcY+fCH7UGwR4WGg
	 ihM/RxhgPz9YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FDCC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892575372.23771.16474050013702028819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19283a338926eb709f5606f2f0a7692bd9fc2154ce6d13ad899b73b24518a63
Date: Fri, 07 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738925753
