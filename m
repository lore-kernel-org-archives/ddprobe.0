Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2AE26AF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788828634; cv=none; b=XTt3PNN5olmc74z4XeIHKKohMVqs9R5iP//reNxCua2WnQUUO/T/GjYnyxLCMWV3tRLI6iochmvbnRWmdrYKmRz4kcKUFbObf6pgCdPwiU3a9hdDrmDp9hDXbWTe6qXJo9vlVvY7Kb2hOUwWsQbCaD/vjoHplvNQTWbLAjl44Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788828634; c=relaxed/simple;
	bh=4fVMbHu04JqIuStJ6pYiDlWz6B0ldgCCRRqMltIa97c=;
	h=To:Subject:From:Message-Id:Date; b=P6S57DNR7sPyJShOezx9dOpNlX+djQ9lCQa4pdcLgM2MQLcEqdZsaOOVBDtFtEes4HyHV9Zse+w3lwVPyjJzpDBHQHmKqYsFhlTvtII1QfWEHppWkFJaTcEA/GBXZunGfVaPM1tprzllvt4sh/6fI9CveN+HRJx/RTYTFvBKAFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhUXjf7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhUXjf7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3450C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788828633;
	bh=4fVMbHu04JqIuStJ6pYiDlWz6B0ldgCCRRqMltIa97c=;
	h=To:Subject:From:Date:From;
	b=IhUXjf7dB/qsFeM4AuLOH44zHbNcNPEw7kUTHv6o4If42Ds4cWYDp5vWDci9IdwgT
	 xGVoN9cRZpDwE908/ppxLf8qKfHaTSzXepDI25QWlkx9l4AuavJfZ3qDYA3skjjEHP
	 PEv2HRtNJ5svLpm9TQ5P4k8Nl6pm4HfjDhXdzEBmzaaALN6MQDhlM5+CFIr4lrKXEP
	 VfaiDslXaYe5IcqumLVUNkfWW5pbdv/C96fBdo+3EhawxSdorR+d6ynzCs6zLMTOaX
	 ypIVAPLPPSy9pg2Cx3sFK65nVkGmVTn3Noy5NUUTrm0CFHOzV0/qW6yK+57xarP1E9
	 2BIobQa8swNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD048C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882863372.7585.6206684879004623034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356a4bbea4ddf85b6bf45e17564c259d2f6b650af36378023351d505ccaa34c6
Date: Tue, 08 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788828633
