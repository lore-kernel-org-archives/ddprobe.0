Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1210B366048
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769673234; cv=none; b=M0nbs+ZRS9TA7akalT57Yl4tVbIhlqrxN2nKLV2s9sQxmSXwz0BO1t5DbQogK4jVC8xw57d5WZoT4X869aHvTlEAOp7vwsXdIvSPIlCAPafHs6JSuAJZJMNyA0bk/ciBCJAB9i8xGBlD2plbxSdukAX+aoes9eflwdLOA84oMdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769673234; c=relaxed/simple;
	bh=3M7LMyOWeEOOCCq0+0KFG6wsnucJdp+zFLcso507IwI=;
	h=To:Subject:From:Message-Id:Date; b=Xvc96h3faZ2Dk9pDjdJTrOigJwEC964c4rggo526d+8lTZWHFshVOsjaQjKJ2FWE9fd7k1o2fvQ+8ZS5aqG54PA86TE+RPbFaLV4qsSR0RyZs6sIJfkSsG04lLRtADFZGCmMej7x9hqwXQPg/Sz93xeT/PT4YI09kUpyoVYibCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvvgQeEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvvgQeEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769673233;
	bh=3M7LMyOWeEOOCCq0+0KFG6wsnucJdp+zFLcso507IwI=;
	h=To:Subject:From:Date:From;
	b=bvvgQeEQlRbK3ycbDiITzPiwStWnA+tiWCPmHD0/ToNei9jToRiGUuN+7lZ0IjvGD
	 9UlKjXaUbywJTQwPb6COEmfHWO9NJQcSV8c2yNHvPyKexwWl6JBcP5v+jlF6e4maTn
	 eK9NEoPEQ+lJE6rWHuyOyLdQ7Z9oUCVhPYqRaLKlOHFhiE0Ldmj1ddrGucK8LjMqVT
	 AwgLQsqrpu6qUrLzHG2k9aToIrHShq+csRUF2FhJs5bGyr1npIxPVSTrzR8Ecjilfw
	 EGzVbS3qXWrMQcZMYfWUzvwlD7jb89IDnOuBU4RBB4myP5tu7sZq1pPnqN6CnNaNA2
	 IxcqaAmvJjdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90324D358D1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967323358.5930.14836848964165581990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edb70a80dc4c3ada67713257f4a1e49d02387fce76634cb67d31231a44fb8d6
Date: Thu, 29 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769673233
