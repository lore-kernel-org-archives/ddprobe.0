Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6C1714B3
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746646794; cv=none; b=IutWlvF8FwsyqwCshVTZ5W4bFvOnxh3gDw4eSOgO+rNov1iiOn+56xquNC8+ZqkMRjh07fjzmlb5ogs7vRLVA3aga9ueOhFCXZJ+drXovy4v8g1KjYhnoybW6/geAfneDTx+o1vLfgxtovDcLng8heh5WL86srvVRRaz9lD8XSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746646794; c=relaxed/simple;
	bh=d6wWsEGkNlFGeyFr44x+8wNro+xJP3H4iN+qmUbH0io=;
	h=To:Subject:From:Message-Id:Date; b=tK3Fu91poHGL3RfQmTIDnXjx61E6JN2v0uJAvhXwEnpvdCWtLoSdCTpGUqps47ZGTJvppLiq3zN84ChSYqF0g9qriPwImTb3Nmapf4u/pWe+uIsuKz97N1qMLcLcmagthyUK7ZEKbZ0DZT8VP89YWc8nHJaS3TCUeRdxa+ZI6Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5Q4Yg9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5Q4Yg9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA81C4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746646793;
	bh=d6wWsEGkNlFGeyFr44x+8wNro+xJP3H4iN+qmUbH0io=;
	h=To:Subject:From:Date:From;
	b=I5Q4Yg9Jqez65pdMSGDvYa8o4g/m6KkVHeHmF7FRiiolZeUdMR6fhlxUDgSmdj8jp
	 rWmD8KBfqFvN/9R7JgY/7LHP4quf7by8xJhdhOx9sainqN+3E1F0h2zNKFetPjrr7R
	 UZebnN5XF3f3TwiyFBcsQynFSVvRgnerLdHJYAjmN0putWf33eAR9svls9ne0l5Ql5
	 7cS2ItLZd7KJOvoqTTW2aIZKj9CArFWMPijrBoMJFjhyMaf1Fpt9zyf/niz+qGchCj
	 WZwC0Retswt7tqH2bapKMP22OCitpDXFWO0VF3ZuZ8kmQDzZ1xrQJKi8jfs4G4lG/T
	 o4hNSUt6wA7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E05BC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664679357.10207.18184169448393886000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e612420bb987a45ac0bb46b5b677b20e861ae21c9275b269dff4101bbe4b62
Date: Wed, 07 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746646793
