Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724F2C0272
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769973834; cv=none; b=fyY3ED92rFsiWVDUCVS+Uvab1n9tbOL8+EJCCB6dhDDZpbkZv0tL56PaZ+tUX51XHFNsjj/+H9gZNy4ol7P7L2HDUSu2qc7GpbewuqD0JSCFSv4XwmOHc172Wie5qqoqRN8tB6It92bb5lZAobOn1NMUnKHhOp/l9iDt6dCOFm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769973834; c=relaxed/simple;
	bh=DZ7vIdp1mCHne8O2G8F3RZQ3YIla7Y/Vf9qC98oxCck=;
	h=To:Subject:From:Message-Id:Date; b=cL/7sM/42IRgmDq6hSR1hRNdZkZS08VPcQES1kLE+bla5wR5VefAmcf6qirGXLuB4Rz5VcdHAIRF9qcnH9lY5meeANWf+jK2ECqVrDBhi7yq6nXiUa4objj4baI7pD0nv+Xs+Yl+4z+8oU8uh7mztKwIUA1CmjU3dKq5EkQMECc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqeCfv72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqeCfv72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769973833;
	bh=DZ7vIdp1mCHne8O2G8F3RZQ3YIla7Y/Vf9qC98oxCck=;
	h=To:Subject:From:Date:From;
	b=pqeCfv729JBixJui/pD2JNVIk/Ds+m2DQWDJjpKlpGyNsPNBFfrOjJNwM5GTYDoqB
	 +i4JGaOD+JHtMbkaMs0yfVyEZjsRPh5O2MT50nsmtDfsqsm2NsgSI67lAOhAbkkcQK
	 TblxDZF+JlF8vIqFM1ldag3Nl9Qgzd0Imucnpzl2Q1NtStK//Rcuvq+GitMcL8szdV
	 tkAMUzKtyvfGcl+I+HMZsytVxOKYmOvqZZHwCq/8Y7b4QHkSXCk84QLmG5pr3OGa4J
	 7GO5SfdUENdHtdohFeVvIRIIu+MnztdQ+egy6kAyhnJe4RJNRSmQbeudWTw/CxK2CS
	 6+fuZrnAZk9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C70E6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997383358.22680.16064898385425755165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0703d3f207563c6d698c99ae0b0a94b6b82d1bbf540e3b4b373e3adfd421eeec
Date: Sun, 01 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769973833
