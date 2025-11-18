Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF94286A7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440314; cv=none; b=d4QHew+9siUzuZ6V3SqZAjG5eTv1bedNVV+k8QH6uC70WR9gxaOMYfa9Mp8aZtPXOTKmLWmZCnAOFO3AkwfJKHqY/sTNPLTRB67G257eLiNS9WUpJfJVjh1swQb/AMzP2SXzcyk/vJ5Rz99CMc5BR9rcTx+XpnAA/azbF7cHQuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440314; c=relaxed/simple;
	bh=I72rOq+a0nI6JtZWQcqOBLWnHJWnxM0+XRKEaWqsVAo=;
	h=To:Subject:From:Message-Id:Date; b=crLtujlOfx1a0a7ZYmJt4f74joXDRUGMAUG7tx6e7E5C6uPfsMpe///xy1PLpmMoRY3DRY5jKEA+1TSKVM7HYFQ2t8m6mj4cR+1FiQnA/ruWzIdlrhkt90M/DHJ6rAWENQt+71ehKIRxx17/pylk+yibANta2X2OQQxklUqsiS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEbtI61L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEbtI61L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7A7C19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763440314;
	bh=I72rOq+a0nI6JtZWQcqOBLWnHJWnxM0+XRKEaWqsVAo=;
	h=To:Subject:From:Date:From;
	b=tEbtI61LcAP3oQYf/0auZLHSVIIfPILdC2DTSNfYG0XJyjdVd3yFxzREwKYE1cNtA
	 wZTJ+ldCHK/u4OYeEdd1bY6LWjMhUP49YBKZ8xyJujmuZo6WEVIMp1u36gOap8PXwI
	 w0eDbIp2R+VGIPjPFijWxrtTI1UCpO6IJVzupeeu1YdKZPiF+FWFfSQZWuOjO+AQhG
	 8+s97pxHlPFidandbHJ0VLR9O2GChk75Pkw6z5xAFU/ur05jMe57oYI/CbVwGu21Jq
	 1sbHHiyBn0mXtUbOWIVYxPzlrza4UKd1N2qCYT0qkxc6wIYhothXhVfaSkfY7w9BxW
	 Ku5cHUwQlS0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D49BCCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344031363.16705.7492370249174418254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00e53bc45100343e106007a11b2b6dbab09ccd192b75f9502e7a82137d05683
Date: Tue, 18 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763440313
